def get_statistics(a1, a2, b1, b2, c1, c2)
  a = a1, a2
  b = b1, b2
  c = c1, c2

  matrix = [
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
  puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
end

def reasses
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.054450000000000005..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information} ]."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ]."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ]."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ]."

  else
    puts "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability + $current_probability
end

def reconsider
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end

  case $current_probability
  when 0.054450000000000005..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information} ]."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ]."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ]."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ]."
  else
    puts "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability * $current_probability
end
