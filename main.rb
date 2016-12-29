require 'erb'

erb_file = 'index.html.erb'
html_file = File.basename(erb_file, '.erb') #=>"index.html"

erb_str = File.read(erb_file)

@teste = "sei la"
renderer = ERB.new(erb_str)
result = renderer.result()

File.open(html_file, 'w') do |f|
  f.write(result)
end
