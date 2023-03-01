=begin 
2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor 
sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), 
escreva um programa na linguagem que desejar onde, 
informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem 
avisando se o número informado pertence ou não a sequência.

IMPORTANTE:
Esse número pode ser informado através de qualquer entrada de sua preferência ou 
pode ser previamente definido no código; 

=end

class Fibonacci
    def fibonacci(n)
        # Inicializei com os primeiros dois números da sequência
        a, b = 0, 1

        # Agora irei executar a sequencia de fibonacci até o n-ésimo número
        n.times do
            a, b = b, a + b
        end

        # Agora ele me retorna o n-ésimo numero da sequência de fibonacci
        a

    end

    # solicitando a entrada do usuario

    puts "Digite um número inteiro: "
    num = gets.chomp.to_i

    # Agora vou verificar se o número faz parte ou não da sequẽncia

    pertence = false
    i = 0
    while fibonacci(i) <= num
        if fibonacci(i) == num
            pertence = true
            break
        end
        i += 1
    end

    # Agora irei imprimir a mensagem informar se pertence ou não pertence

    if pertence
        puts "#{num} pertence a sequencia de fibonacci"
    else
        puts "#{num} não pertence a sequencia de fibonacci"
    end
end