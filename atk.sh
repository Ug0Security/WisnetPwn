cmd=$(echo $2|sed -e 's/ /%20/g')
wget -q -S  $1'/cgi-bin/trcroute.cgi?TRCROUTE_IP=$("$('$cmd')")&TRCROUTE_RESOLVE=1&TRCROUTE_HOP=1' -O- | grep -oP '(?<=sh:).*?(?=: not found)'
