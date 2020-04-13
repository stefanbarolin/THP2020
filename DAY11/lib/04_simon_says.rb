def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat (word, *times)
  return "#{word} #{word}" * times
end

print repeat("Hello", 3)