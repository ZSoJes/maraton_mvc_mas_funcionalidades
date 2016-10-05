require_relative 'view'
require_relative 'model'

vista = Vista.new
ciclo = false

while ciclo == false
  vista.presentacion
  opcion = gets.chomp

  case opcion.to_s
  when "A", "a"
    juego = LeerJuego.new('geografia.csv')
    ciclo = true
  when "B", "b"
    juego = LeerJuego.new('historia.csv')
    ciclo = true
  when "C", "c"
    juego = LeerJuego.new('entretenimiento.csv')
    ciclo = true
  else
    puts "Intenta una opcion Diferente"
    rciclo = false
  end
end

vista.empiezaElJuego
juego.proceso