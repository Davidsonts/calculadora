listas = []
loop do
  print 'Escolha uma opção
  A) Adiciona, V) Visualizar, R) Remover X) Fecha: '
  opcao = gets.chomp.upcase

  if opcao == 'A'
    system('clear')
    print 'Digite o nome: '
    nome = gets.chomp
    print 'Digite o telefone: '
    fone = gets.chomp
     
    listas.push(['nome' => nome, 'fone' => fone])
  end

  if opcao == 'V'
    system('clear')
    listas.each {|lista| 
      print "Nome: #{lista[0]['nome']} "
      print "Telefone: #{lista[0]['fone']} ", "\n" }
  end

  if opcao == 'R'
    print 'Digite o nome para deletar: '
    nome = gets.chomp
    listas.delete_if {|lista| lista[0]['nome'] == nome } 
  end

  break if opcao == 'X'
  
  unless ["A","V","R","X"].include? opcao   
    system('clear')
    puts "A opção #{opcao} é invalida!!!"
  end
end


