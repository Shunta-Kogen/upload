array = Dir.glob('*')

arrays = []
# 
array.each_slice((array.length / 3.0).ceil) do |s|
  arrays << s
end

if array.length % 3 == 1
  arrays[-1] << nil
  arrays[-1] << nil
elsif array.length % 3 == 2
  arrays[-1] << nil
else
end

# arraysの行と列を入れ替え
transposed_arrays = arrays.transpose
# 
transposed_arrays.each do |file|
  default_filename_length = 15
	print file[0] + ' ' * (default_filename_length - file[0].length)
	print file[1] + ' ' * (default_filename_length - file[1].length)
	print file[2]
	print "\n"
end