function os.chroot.unbind() {
    
    local root="$1"
    local fstab="/etc/fstab"
    local count=0

    if ! [ $root ];then
        printf "Set the root directory: os.chroot.unbind root \n"
        return  $(false)
    fi

    if ! grep -q "$root/proc" $fstab;then
        printf "Make sure the path to the fstab is correct \n"
        return $(false)
    fi

    if ! mount | grep -q "$root" &>/dev/null;then
        return $(true)
    fi

    if os.file.path read $fstab;then
        while read line; do
            if [[ "$line" =~ .*$root.* ]]; then
                point_mount=$(awk '{print $2}' <<<"$line")
                while true;do
                    if [ $count -eq 10 ]; then
                        printf "Warning: Unmount the filesystem $point_mount manually! \n"
                        break
                    elif umount "$point_mount" 2>/dev/null;then
                        printf "Unmount the filesystem $point_mount \n"
                        break
                    elif umount -r "$point_mount" 2>/dev/null;then
                        printf "Remount the filesystem $point_mount to read-only \n"
                        let count+=1
                    else
                        let count+=1
                        continue
                    fi
                done
            fi
        done<$fstab
    fi
}; export -f os.chroot.unbind
