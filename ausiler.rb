system("sudo clear")
# logo
puts "--------------------------------------------------------------"
puts "|     ##       ##   ##      ##   ##  ##    #####     #####   |"
puts "|    ####      ##   ##    ##  #      ##    ##       ##   ##  |"
puts "|   ##  ##     ##   ##    ##     ##  ##    #####    ##  ##   |"
puts "|  ## ## ##    ##   ##  #  ##    ##  ##    ##       ## ##    |"
puts "| ##      ##   #######   ###     ##  ####  #####    ##  ##   |" 
puts "--------------------------------------------------------------"
puts "------------------"
print "Discord: "
puts  "touch.html"
print "Criado por: "
puts "keeb"
puts "------------------"
# barra de carregamento simulada
def barra_de_carregamento
    total = 3  # Define o total de unidades na barra de carregamento
    progresso = 0  # Inicializa o progresso como 0
  
    while progresso <= total
      percentagem = (progresso.to_f / total * 100).to_i
      barra = "#" * (progresso * 20 / total)
      espacos = " " * (20 - barra.length)
  
      print "\r[#{barra}#{espacos}] #{percentagem}%"
      $stdout.flush  # Limpa o buffer de saída para exibir imediatamente
  
      sleep(0.1)  # Adiciona um pequeno atraso para a animação
  
      progresso += 1
    end
  
    puts "\nCarregamento completo"
  end
  print "-Load script: "
  puts "ausiler.rb"
  barra_de_carregamento
  puts "------------------"
  # script
  puts "Escolha uma opção"
  puts "1: deb"
  puts "2: apt"
  puts "3: tar"
  puts "4: mv (renomear)"
  puts "5: cp"
  puts "6: mkdir"
  puts "7: ssh"
  puts "8: Desinstalar"
  puts "9: rm (deletar)"
  puts "10: Criptografia"
  puts "11: Descriptografar"
  puts "12: exit"
  print "Escolha: "
    escolha = gets.chomp

    if escolha.to_i == 1
      system("ls -a")
      system("pwd")
      print "Informe o nome do .deb: "
      arquivo = gets.chomp
      puts "--------------------------------------------------------------"
      print "Preparando: "
      puts "Instalação"
      barra_de_carregamento
      system("sudo dpkg -i #{arquivo}")
      puts "--------------------------------------------------------------"
      puts "Pressione enter para continuar."
      gets.chomp   
      system("ruby ausiler.rb")
    else

      if escolha.to_i == 2
        print "Informe o nome do apt: "
        arquivo = gets.chomp
        puts "--------------------------------------------------------------"
        print "Preparando: "
        puts "Instalação"
        barra_de_carregamento
        system("sudo apt-get install #{arquivo} -y")
        puts "--------------------------------------------------------------"
        puts "Pressione enter para continuar."
        gets.chomp   
        system("ruby ausiler.rb")
        else

        if escolha.to_i == 3
          system("ls -a")
          system("pwd")
          print "Informe o nome do arquivo: "
          arquivo = gets.chomp
          puts "--------------------------------------------------------------"
          print "Preparando: "
          puts "Extração"
          barra_de_carregamento
          system("tar -xf #{arquivo}")
          puts "--------------------------------------------------------------"
          puts "Pressione enter para continuar."
          gets.chomp   
          system("ruby ausiler.rb")
        else

          if escolha.to_i == 4
          system("ls -a")
          system("pwd")
          print "Informe o nome do arquivo para renomear: "
          arquivo = gets.chomp
          puts "--------------------------------------------------------------"
          print "Preparando: "
          puts "renome"
          barra_de_carregamento
          system("mv #{arquivo}")
          puts "--------------------------------------------------------------"
          puts "Pressione enter para continuar."
          gets.chomp   
          system("ruby ausiler.rb")
          else

            if escolha.to_i == 5 
              system("ls -a")
              system("pwd")
              print "Informe o arquivo e o diretorio que será copiado: "
              arquivo = gets.chomp
              puts "--------------------------------------------------------------"
              print "Preparando: "
              puts "Mover"
              barra_de_carregamento
              system("cp #{arquivo}")
              puts "--------------------------------------------------------------"
              puts "Pressione enter para continuar."
              gets.chomp   
              system("ruby ausiler.rb")
              else

            if escolha.to_i == 6
              system("ls -a")
              system("pwd")
              print "Informe o nome da pasta que será criada: "
              arquivo = gets.chomp
              puts "--------------------------------------------------------------"
              print "Preparando: "
              puts "pasta"
              barra_de_carregamento
              system("mkdir #{arquivo}")
              puts "--------------------------------------------------------------"
              puts "Pressione enter para continuar."
              gets.chomp   
              system("ruby ausiler.rb")  
            else
            
              if escolha.to_i == 7
                print "Informe a conexão e a porta: "
                arquivo = gets.chomp
                puts "--------------------------------------------------------------"
                print "Preparando: "
                puts "SSH"
                barra_de_carregamento
                exec("ssh #{arquivo}")
                puts "--------------------------------------------------------------"   
              else

          if escolha.to_i == 8
            print "Informe o nome da aplicação: "
            desinstalar = gets.chomp
            puts "--------------------------------------------------------------"
            print "Preparando: "
            puts "Desinstalação"
            barra_de_carregamento
            system("sudo apt-get remove #{desinstalar} -y")
            puts "--------------------------------------------------------------"
            puts "Pressione enter para continuar."
            gets.chomp   
            system("ruby ausiler.rb")
          else

            if escolha.to_i == 9
              system("ls -a")
              system("pwd")
              print "Informe o nome do arquivo a ser deletado: "
              desinstalar = gets.chomp
              puts "--------------------------------------------------------------"
              print "Preparando: "
              puts "Deletando"
              barra_de_carregamento
              system("rm -rf #{desinstalar}")
              puts "--------------------------------------------------------------"
              puts "Pressione enter para continuar."
              gets.chomp   
              system("ruby ausiler.rb")
            else

          if escolha.to_i == 10
            def encrypt(text, shift)
              encrypted_text = ""
            
              text.each_char do |char|
                if char.match(/[a-zA-Z]/)
                  # Verifica se o caractere é uma letra
                  shift_amount = shift % 26
                  shifted_char = char.ord + shift_amount
            
                  if char =~ /[A-Z]/ && shifted_char > 'Z'.ord
                    shifted_char -= 26
                  elsif char =~ /[a-z]/ && shifted_char > 'z'.ord
                    shifted_char -= 26
                  end
            
                  encrypted_text << shifted_char.chr
                else
                  # Mantém caracteres não alfabéticos inalterados
                  encrypted_text << char
                end
              end
            
              return encrypted_text
            end
            
            puts "Digite o texto que deseja criptografar:"
            plaintext = gets.chomp
            
            puts "Digite o valor do deslocamento (um número inteiro positivo ou negativo):"
            shift = gets.chomp.to_i
            
            encrypted_text = encrypt(plaintext, shift)
            puts "Texto criptografado: #{encrypted_text}"
            puts "Pressione enter para continuar"
              gets.chomp
              system("ruby ausiler.rb")
          else

            if escolha.to_i  == 11
              def decrypt(encrypted_text, shift)
                decrypted_text = ""
              
                encrypted_text.each_char do |char|
                  if char.match(/[a-zA-Z]/)
                    # Verifica se o caractere é uma letra
                    shift_amount = shift % 26
                    shifted_char = char.ord - shift_amount
              
                    if char =~ /[A-Z]/ && shifted_char < 'A'.ord
                      shifted_char += 26
                    elsif char =~ /[a-z]/ && shifted_char < 'a'.ord
                      shifted_char += 26
                    end
              
                    decrypted_text << shifted_char.chr
                  else
                    # Mantém caracteres não alfabéticos inalterados
                    decrypted_text << char
                  end
                end
              
                return decrypted_text
              end
              
              puts "Digite o texto criptografado que deseja descriptografar:"
              encrypted_text = gets.chomp
              
              puts "Digite o valor do deslocamento usado para criptografar (um número inteiro positivo ou negativo):"
              shift = gets.chomp.to_i
              
              decrypted_text = decrypt(encrypted_text, shift)
              puts "Texto descriptografado: #{decrypted_text}"
              
              puts "Pressione enter para continuar"
              gets.chomp
              system("ruby ausiler.rb")
            else

            if escolha.to_i == 12
              puts "Saindo..."
              system("exit")
              else
                
                if escolha.to_i <= 12
                else
                  puts "Opção invalida, tente novamente."
                  puts "Pressione enter para continuar."
                  gets.chomp
                  system("ruby ausiler.rb")
                      end 
                     end
                    end
                   end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
