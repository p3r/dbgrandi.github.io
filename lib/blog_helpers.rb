module BlogHelpers

# from https://gist.github.com/zachleat/5792681
# Outputs the reading time, e.g. "about 4 minutes"
 
    def reading_time( input )
        words_per_minute = 180
 
        words = input.split.size;
        minutes = ( words / words_per_minute ).floor
        minutes_label = minutes === 1 ? " minute" : " minute"
        minutes > 0 ? "#{minutes} #{minutes_label}" : "less than 1 minute"
    end
end
