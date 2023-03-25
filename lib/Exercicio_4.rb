=begin
5) Escreva um programa que inverta os caracteres de um string.

IMPORTANTE:
a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode
ser previamente definida no código;
b) Evite usar funções prontas, como, por exemplo, reverse;

=end

def inverte_string(string)
  inverted_string = ""
  for i in (0..string.length-1)
    inverted_string = string[i] + inverted_string
  end
  return inverted_string
end

puts inverte_string("hello world")