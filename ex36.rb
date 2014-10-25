LED_ZEPPELIN = "Led Zeppelin"
QUEEN = "Queen"
SUPERTRAMP = "Supertramp"

def die(codigo)
  puts "ERRO: " + codigo
  exit(0)
end

def selecionou_opcao_valida(lista, opcao)
  r = false
  lista.each_key {
    |k| 
    r = k.to_s == opcao || r 
  }
  return r
end

def imprime_opcoes_e_aguarda(lista)
  puts
  puts "Selecione uma das opções abaixo:"
  lista.each {
    |k, v|
    puts "[" + k.to_s + "] " + v
  }
  print "> "
  opcao = $stdin.gets.chomp
  return opcao  
end

def le_arquivo(path_arq)
  f = open(path_arq)
  puts f.read
  f.close
end

def led_zeppelin()
  musicas = {}
  musicas[1] = "Stairway To Heaven"
  musicas[2] = "Good Times Bad Times"
  musicas[3] = "Tangerine"
  
  begin
    opcao = imprime_opcoes_e_aguarda(musicas)
  end until selecionou_opcao_valida(musicas, opcao)
  
  musica_selecionada = musicas[opcao.to_i]
  musica_selecionada_arq = "./ex36/" + musica_selecionada + ".txt"
  le_arquivo(musica_selecionada_arq)
end

def queen()
  musicas = {}
  musicas[1] = "Radio Ga Ga"
  musicas[2] = "Flash"
  musicas[3] = "I Want to Break Free"
  
  begin
    opcao = imprime_opcoes_e_aguarda(musicas)
  end until selecionou_opcao_valida(musicas, opcao)
  
  musica_selecionada = musicas[opcao.to_i]
  musica_selecionada_arq = "./ex36/" + musica_selecionada + ".txt"
  le_arquivo(musica_selecionada_arq)
end

def supertramp()
  musicas = {}
  musicas[1] = "Dreamer"
  musicas[2] = "Take the Long Way Home"
  musicas[3] = "Goodbye Stranger"
  
  begin
    opcao = imprime_opcoes_e_aguarda(musicas)
  end until selecionou_opcao_valida(musicas, opcao)
  
  musica_selecionada = musicas[opcao.to_i]
  musica_selecionada_arq = "./ex36/" + musica_selecionada + ".txt"
  le_arquivo(musica_selecionada_arq)
end

def start()
  bandas = {} #use hashes
  bandas[1] = LED_ZEPPELIN
  bandas[2] = QUEEN
  bandas[3] = SUPERTRAMP
  
  begin
    opcao = imprime_opcoes_e_aguarda(bandas)
  end until selecionou_opcao_valida(bandas, opcao)
  
  banda_selecionada = bandas[opcao.to_i]
  if banda_selecionada.eql? LED_ZEPPELIN 
    puts \a
    led_zeppelin()
  elsif banda_selecionada.eql? QUEEN
    queen()
  elsif banda_selecionada.eql? SUPERTRAMP
    supertramp()
  else
    die("0")
  end
end

start

