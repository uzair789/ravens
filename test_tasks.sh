
# tasks=('towers-of-hanoi' 'sweeping-piles' 'stack-block-pyramid' 'place-red-in-green' 'packing-boxes' 'manipulating-rope' 'align-box-corner' 'assembling-kits')
tasks=('sweeping-piles' 'stack-block-pyramid' 'place-red-in-green' 'packing-boxes' 'manipulating-rope' 'align-box-corner' 'assembling-kits')
i=1
for task in ${tasks[@]}; do
	
        echo " $i/7 processing for $task"
	python test.py --assets_root=./ravens/environments/assets/ --disp=True --task=$task --agent=transporter --n_demos=10 --n_steps=1000 --data_dir data
	echo "test done"
	echo "--"
	i=$(($i+1))
done
