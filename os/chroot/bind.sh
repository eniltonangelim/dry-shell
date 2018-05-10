function os.chroot.bind() {
    
    local root="$1"
    local fstab=/etc/fstab
    local count=0

    if ! [ $root ];then
        printf "Set the root directory: os.chroot.bind root \n"
        return $(false)
    fi

    if grep -q "$root/proc" $fstab;then
        while read line; do
            if [[ "$line" =~ .*$root.* ]]; then
                point_mount=$(awk '{print $2}' <<<"$line")
                while true;do
                    if mount "$point_mount" 2>/dev/null;then
                        printf "Mount the filesystem $point_mount \n"
                        break
                    elif [ $count -eq 10 ]; then
                        printf "Warning: Mount the filesystem $point_mount manually! \n"
                        break
                    else
                        let count+=1
                        continue
                    fi
                done
            fi
        done<"$fstab"
        return $(true)
    fi

    echo "
proc    $root/proc      proc    noauto,nodev,noexec,nosuid 0 0
sys     $root/sys       sysfs   defaults,noauto            0 0
/dev    $root/dev       none    bind,noauto                0 0
pts     $root/dev/pts   devpts  gid=5,noauto               0 0
        " >> $fstab

} ; export -f os.chroot.bind
