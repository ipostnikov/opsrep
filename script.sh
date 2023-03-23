#!/bin/bash
#here is the change
MYVAR=$@

if [[ $MYVAR =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "Looks like an IPv4 IP address"
elif [[ $MYVAR =~ ^(([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|([0-9A-Fa-f]{1,4}:){1,7}:|([0-9A-Fa-f]{1,4}:){1,6}:[0-9A-Fa-f]{1,4}|([0-9A-Fa-f]{1,4}:){1,5}(:[0-9A-Fa-f]{1,4}){1,2}|([0-9A-Fa-f]{1,4}:){1,4}(:[0-9A-Fa-f]{1,4}){1,3}|([0-9A-Fa-f]{1,4}:){1,3}(:[0-9A-Fa-f]{1,4}){1,4}|([0-9A-Fa-f]{1,4}:){1,2}(:[0-9A-Fa-f]{1,4}){1,5}|[0-9A-Fa-f]{1,4}:((:[0-9A-Fa-f]{1,4}){1,6}|:)|:((:[0-9A-Fa-f]{1,4}){1,7}|:))%?([0-9a-zA-Z]{1,})?$ ]]; then
        echo "Could be an IPv6 IP address"
fi
