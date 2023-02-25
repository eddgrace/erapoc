
era -c "profile compute delete name=1_2_8"
era -c "profile compute delete name=1_4_16"
era -c "profile compute delete name=2_4_32"

era -c "profile compute create name=1_2_8 input_file=computer_small.txt"
era -c "profile compute create name=1_4_16 input_file=computer_middle.txt"
era -c "profile compute create name=2_4_32 input_file=computer_large.txt"

