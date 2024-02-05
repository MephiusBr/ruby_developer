loop do
  menu = <<-EOF
  - escolha a operação -

    1 - adição
    2 - subtração
    3 - multiplicação
    4 - divisão
    0 - sair
  EOF

  operacoes = {
    1 => '+', 2 => '-', 3 => '*', 4 => '/'
  }

  puts menu
  operacao = gets.chomp.to_i

  resultado = case operacao
              when 1
                ->(a,b) { a + b }
              when 2
                ->(a,b) { a - b }
              when 3
                ->(a,b) { a * b }
              when 4
                ->(a,b) { a / b }
              when 0
                system "clear"
                puts "calculadora será desligada."
                return 0
              else
                puts "operação não reconhecida, tente novamente."
                next
              end


  print "digite o 1 operando: "
  operando1 = gets.chomp.to_i

  print "digite o 2 operando: "
  operando2 = gets.chomp.to_i

  resultado = resultado.(operando1, operando2)

  puts "resultado: #{operando1} #{operacoes[operacao]} #{operando2} = #{resultado}"
end
