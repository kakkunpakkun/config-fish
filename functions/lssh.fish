function lssh
  set IP (lsec2 $argv | peco | awk -F "\t" '{print $2}')

  if test $status -eq 0; and test $IP != ''
    ssh $IP
  end
end
