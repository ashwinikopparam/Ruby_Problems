#find the total score of all the name scores in the file
#score of the name
def name_score(name)
	score = 0
	name.each_byte{|x| score += x - 64}
	score
end

txt = File.open("names.txt").gets
#sort the list alphabetically after removing the " and splitting at ,
names = txt.gsub!('"','').split(',').sort

total = 0
names.each_with_index {|name,index| total += name_score(name) * (index+1)}
puts total
