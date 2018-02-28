def oxford_comma(array)
if array.length == 1
return array[0].to_s
elsif array.length == 2
  return array.join(' and ')
elsif array.length == 3
array[0] << ','
array[1] << ', and'
return array.join(' ')
elsif array.length > 3
  newArray = []
  array.each_with_index do |fruit, index|
    if index == array.size - 1
        fruit
  else
       fruit << ','
      end
    newArray.push(fruit)

  end
  array[-2] << " and"
  return newArray.join(' ')
end
end
