# License
## Human Exclusivity
## PREAMABLE
# Do to the rise of web scrapers and other places stealing source code from humans, this licensed is framed in such a way as to protect humans exclusive right to modify and distribute source code in this agreement. The basic freedoms of free software must be exclusively used and practice by things capable of having a subjective experience and sense of self, and therefore made exclusively by humans. This includes the distribution, contribution, and leasing of material. This is used in tandum with the Creative-Commons Share-Alike Non-Commercial No-Deritives license.

## Distribution
# Exclusively the compiled binaries of source code must be distributed to places that don't respect human developers, if such platforms are to be used at all. While on platforms with specific pro-human terms of services, people are free to distribute the source code on places where it is made obvious that software is not being used to train Generative AI systems.

## Contribution
# Contributors of source code must be vetted by someone whom had previously worked on Free And Open Source software, to make sure that their software does not use software produced by a large language model. Exceptions are granted to self-hosted models that prove that there is a human in the loop whom oversees how the data is gathered, and that it is trained in standards a University or College would deem respectful of the basic privacy rights of people whom use the software for educational purposes such as language acquisition.

# You are not allowed to do pull requests whose main "contribution" is changing the read me, do to the rise of scammers whom engage in such activities. Such changes ( if collaborative ) must be discussed and considered before any potential breaking changes is made to the software.

# Using LLMs for the purpose of contribute to this repository is considered in violation of this agreement.

## Leasing
# This software shall not be leased for profit for those whom wish to use ot for personal uses, but AA and AAA must pay a license fee in order to be able to use and request features. And this developer reserves the exclusive right to refuse requests that are deemed to not be in the public's best interest such as contribution to the public benefit for public education.

# Exceptions are not provided for AA or AAA companies using LLMs, and usage of this software shall be revoked for non-compliance with this agreement. All intellectual property is exclusive to the one implementing changes on behalf of said companies.

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
