function fish_prompt
    if [ (whoami) = 'root' ]
      # something simple for root user
      printf '%s[%s]%s # %s' (set_color 555) (pwd) (set_color --bold red) (set_color normal)
    else 
      # git branch
      set _branch (git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
      set branch (printf ' %s%s%s' (set_color $fish_color_quote) $_branch (set_color normal))
      # current working dir
      set cwd (printf '%s[%smbp %s%s%s]' (set_color --bold $fish_color_quote) (set_color $fish_color_error) (set_color $fish_color_cwd) (pwd) (set_color --bold $fish_color_quote))
      # virtual env
      if not [ -z $VIRTUAL_ENV ]
        set virtualenv (printf ' %s@%s%s' (set_color 555) (set_color yellow) (basename "$VIRTUAL_ENV"))
      end
      printf '%s%s%s\n%s$%s '  $cwd $virtualenv $branch (set_color yellow) (set_color normal)
    end
end


