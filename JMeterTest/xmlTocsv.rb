# first argument the xml file to convert
# second argument the csv output file
# TODO: it doesn't create the header of the csv file, only values

# works with files from:
# https://archive.org/download/stackexchange

require 'nokogiri'

exit unless ARGV.length > 1
exit unless File.exist?(ARGV[0])

xmldoc = Nokogiri::XML(IO.read(ARGV[0]))

File.open(ARGV[1], 'w') do |f|
  xmldoc.xpath('/*/*').each do |row_xml|
    row_values = row_xml.values
    csv_string = row_values.map { |i| '"' + i.to_s.gsub(/['"]/,'\'').gsub(/[\n\r]+/,"\\n") + '"' }
    f.puts csv_string.join(',')
  end
  f.close
end


