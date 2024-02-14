# DID Scan 
#
# -> candump can0 > candump.log
# -> bash didscan

set -ex
for did in {256..3500}
do
	cansend can0 680#0322$(printf '%04X' $did)00000000
	sleep 1
done

