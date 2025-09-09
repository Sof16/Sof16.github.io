#/bin/sh


LOADER="/media/ezpeleta/data_1T/aplicaciones/renew2.6/loader.jar"
MODEL="system_net_6r_2220.sns"
SYSTEM_NET="execute_experiment"

java -Dde.renew.remote.enable=true -Dde.renew.simulatorMode=18 -jar ${LOADER} startsimulation ${MODEL} ${SYSTEM_NET}

mv log.txt log_6r_2220_1000.txt
mv times.txt log_6r_2220_1000_times.txt