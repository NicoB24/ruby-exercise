module Exercise1Helper
    def filter_and_group(strings, i)
        strings.select {
          |string| string.length < i
        }.group_by { 
          |string| string.length 
        }.transform_values{ |strings| strings.count }
    end
end
