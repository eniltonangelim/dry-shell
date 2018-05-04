function os.link.symbolic() {
    local src="$1"
    local dst="$2"

    if os.file.path file "$src" && os.file.path write "$dst";then
        if ln -s "$src" "$dst";then
            echo "Created the link symbolic [$src -> $dst]"
            return $(true)
        else
            echo "Failed the link symbolic [$src -> $dst]"
            return $(false)
        fi
    fi
}; export -f os.link.symbolic