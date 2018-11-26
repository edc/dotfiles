function fish_prompt
    if set -q VIRTUAL_ENV
        echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
    end
    set pwd (sed -e 's/\/Users\/eddie/~/' -e 's/\/home\/eddie/~/' (pwd | psub))
    if test (echo $pwd | wc -c) -ge 70
        set pwd (prompt_pwd)
    end
    set_color $fish_color_cwd
    if test (uname) = 'Linux'
        if test $TERM = 'screen'
            echo -ne '\xce\xbbs '
	else
            echo -ne '\xce\xbb '
        end
    end
    if test (uname) = 'Darwin'
        echo -ne '\xef\xa3\xbf '
    end
    echo -n $pwd
    set_color normal
    set branch (git branch ^/dev/null | grep \* | sed 's/* //')
    if test "$branch" != ""
        set_color brown
        echo -ns ' @' (git branch ^/dev/null | grep \* | sed 's/* //' | cut -c 1-20)
        set_color normal
    end
    echo ""
    echo -n '$ '
end
