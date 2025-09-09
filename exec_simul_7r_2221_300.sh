#/bin/sh


LOADER="/media/ezpeleta/data_1T/aplicaciones/renew2.6/loader.jar"
MODEL="system_net_7r_2221.sns"
SYSTEM_NET="execute_experiment"

java -Dde.renew.remote.enable=true -Dde.renew.simulatorMode=18 -jar ${LOADER} startsimulation ${MODEL} ${SYSTEM_NET}

# mv log.txt log_7r_2221_300.txt
# mv times.txt log_7r_2221_300_times.txt
