def order
  ordered = {}
  esp_alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esp_alpha = esp_alpha.split("")
  esp_alpha.each_with_index do |letter, index|
    ordered[letter] = index + 1
  end
  ordered
end

def alphabetize(arr)
  i = 0
  arr = arr.sort_by {|word| word.length}
  while i < arr[-1].length
    check = arr.collect {|element| element[i]}
      if check.uniq.length == arr.length
        return arr.sort_by {|word| order[word[i]]}
      end
    i += 1
  end
end 
