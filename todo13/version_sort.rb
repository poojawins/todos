# class Array
  
#   def version_sort (some_array)
#     some_array.each do |files|
#       compare = files.match(/(\d+)/)
#     end

#   end

# end


  def version_sort
    sort_by do |file|
      file.scan(/\d*/).collect do |x|
        x.hex
      end
    end
  end


filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

my_sort = Array.new
puts my_sort.version_sort(filenames)

