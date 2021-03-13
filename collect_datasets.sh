
tasks=('towers-of-hanoi' 'sweeping-piles' 'stack-block-pyramid' 'place-red-in-green' 'packing-boxes' 'manipulating-rope' 'align-box-corner' 'assembling-kits')
tasks=('palletizing-boxes')
i=1
for task in ${tasks[@]}; do
	
        echo " $i/8 processing for $task"
	python demos.py --assets_root=./ravens/environments/assets/ --disp=True --task=$task --mode=train --n=200
	echo "train done"
        # python demos.py --assets_root=./ravens/environments/assets/ --disp=True --task=$task --mode=test --n=100
        echo "test done"
	echo "--"
	i=$(($i+1))
done
