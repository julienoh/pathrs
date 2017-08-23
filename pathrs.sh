#!/bin/sh
LOGFILE="routes.log"
rm $LOGFILE && true
for site in bastide mpls pdb pe_obs tdf
do
	echo -e "\e[32m================================================\e[0m" | tee -a $LOGFILE
	echo -e "\e[32m*** Routing to ${site}\e[0m" | tee -a $LOGFILE
	echo -e "\e[32m================================================\e[0m" | tee -a $LOGFILE
	cat ${site} | xargs -n 1 -P 16 -I % ./test_route.sh % | tee -a $LOGFILE
done
