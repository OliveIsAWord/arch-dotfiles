abbr --add cm chezmoi
abbr --add fish-reload-config 'source ~/.config/fish/**/*.fish'
abbr --add m mkcd
abbr --add v view

abbr --add g git
abbr --add gs git status

function mkcd
    mkdir $argv
    cd $argv
end

function view
    if [ -z "$argv[1]" ]
        exa
        return 0
    end
    set -l arg $argv[1]
    if [ -e $arg ]
    else
        echo "view: file not found" >&2
        return 1
    end

    if [ -L $arg ]
        echo (set_color cyan)$arg (set_color white)"->" (realpath $arg)
    else if [ -f $arg ]
        cat $arg | fmt -s -w $COLUMNS | head -n (math max 1, $LINES - 2)
    else if [ -d $arg ]
        exa $arg
    else
        echo "view: unknown type" >&2
        return 1
    end
end

if type -q "exa"
    abbr --add l echo "baka"
    abbr --add ls echo "baka"
    abbr --add la exa -la
    abbr --add lag exa -la --git
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
