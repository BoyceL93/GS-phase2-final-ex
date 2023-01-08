class Diary
    def initialize
        @diary_entries = []
    end

    def add(entry)
        @diary_entries << entry
    end

    def entry_history
        return @diary_entries
    end

    def readable_entries(wpm, minutes)
        selection_of_entries = []
        readable_words = wpm * minutes
        @diary_entries.each{ |selection|
            if selection.count_words <= readable_words
                selection_of_entries << selection
            end
        }
        return selection_of_entries
    end
end

class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def count_words
        words = contents.split(' ')
        return words.length
    end
end