require 'cpf_cnpj'

print "digite o seu cpf: "
input = gets.chomp

if CPF.valid?(input) then
  cpf = CPF.new(input)
  puts "cpf #{cpf.formatted} é válido!"
else
  puts "cpf é inválido, aqui está um exemplo: #{CPF.generate}"
end
