# Идеальный вес. Программа запрашивает у пользователя имя и рост и выводит идеальный вес по формуле (<рост> - 110) * 1.15,
# после чего выводит результат пользователю на экран с обращением по имени. Если идеальный вес получается отрицательным,
# то выводится строка "Ваш вес уже оптимальный"

puts 'Как ваше имя ?'
user_name = gets.chomp
puts 'Какой у вас рост?'
user_height = gets.chomp

weight = (user_height.to_i - 110) * 1.15

puts 'Ваш вес уже оптимальный' if weight.negative?
puts "#{user_name} Ваш идеальный  вес #{weight.round}" unless weight.negative?
