NP=$1
if [ -z $NP ]
then
	echo "Missing number of processes, usage: $0 <NP> <SYNC[1|2|3]>"
	exit 1
fi

SYNC=$2
if [ -z $SYNC ]
then
	echo "Missing sync type, usage: $0 <NP> <SYNC[0|1|2]>"
	exit 1
fi
echo $SYNC

mpirun -np $NP ./Burst_Buffers_new --sync=$SYNC --codes-config=pvfs_dragonfly.conf
