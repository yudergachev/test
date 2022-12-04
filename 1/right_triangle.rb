# Прямоугольный треугольник. Программа запрашивает у пользователя 3 стороны треугольника и определяет, является ли треугольник прямоугольным (используя теорему Пифагора www-formula.ru), равнобедренным (т.е. у него равны любые 2 стороны)  или равносторонним (все 3 стороны равны) и выводит результат на экран. Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза) и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.

arr = []
puts 'Введите первая сторону треугольника: '
arr << gets.chomp.to_i
puts 'Введите вторую сторону треугольника: '
arr << gets.chomp.to_i
puts 'Введите третью сторону треугольника: '
arr << gets.chomp.to_i

if arr.uniq.count == 3
  arr_max = arr.delete(arr.max)
  is_right_triangle = arr_max**2 == arr.first**2 + arr.last**2
  puts 'Треугольник прямоугольный' if is_right_triangle
  puts 'Треугольник не прямоугольный' unless is_right_triangle
elsif arr.uniq.count == 2
  puts 'Треугольник равнобедренный'
elsif arr.uniq.count == 1
  puts 'Треугольник равнобедренный и равносторонний, но не прямоугольный'
end
