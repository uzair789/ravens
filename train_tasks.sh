
# tasks=('towers-of-hanoi' 'sweeping-piles' 'stack-block-pyramid' 'place-red-in-green' 'packing-boxes' 'manipulating-rope' 'align-box-corner' 'assembling-kits')
# tasks=('sweeping-piles' 'stack-block-pyramid' 'place-red-in-green' 'packing-boxes' 'manipulating-rope' 'align-box-corner' 'assembling-kits')
tasks=('palletizing-boxes')
i=1
for task in ${tasks[@]}; do
	
        echo " $i/7 processing for $task"
        python train.py --task=$task --agent=transporter --n_demos=200 --data_dir data

	echo "train done"
	echo "--"
	i=$(($i+1))
done
