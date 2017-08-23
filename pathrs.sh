#!/bin/sh

#set +x


SAVEIFS=${IFS}
IFS=$(echo -n "\n\b")

SITE=$(echo "${1}" |/usr/bin/awk -F ':' '{printf "%s", $1}')
IP=$(echo "${1}" |/usr/bin/awk -F ':' '{printf "%s", $2}')


TRACEROUTE=$(/usr/sbin/traceroute -q 2 -w 4 -z 2000 -n -m 14 -I ${IP} 2>/dev/null | /usr/bin/awk -F " " '{printf "--> %s ", $2}')


# while read line
# do

	# SITE_PE=$(echo "${line}" |/usr/bin/awk -F ":" '{printf "%s", $1}')
	# IP_PE=$(echo "${line}" |/usr/bin/awk -F ":" '{printf "%s", $2}')

	# TRACEROUTE=$(echo "${TRACEROUTE}" | /usr/bin/sed "s/${IP_PE} /${SITE_PE}/g")

# done <./pe_obs

TRACEROUTE=$(echo "${TRACEROUTE}" | /usr/bin/sed "s/--> traceroute: //g")

echo -e "${TRACEROUTE} \e[32m[${IP}_${SITE}]\e[0m "
