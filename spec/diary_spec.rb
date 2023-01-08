require 'diary'

RSpec.describe "Diary" do 
    context "when given an entry title" do
        it "returns the title" do
            entry1 = DiaryEntry.new('flarg', 'frarg')
            result = entry1.title
            expect(result).to eq "flarg"
        end
    end

    context "when given entry contents" do
        it "returns the contents" do
            entry1 = DiaryEntry.new('flarg', 'frarg')
            result = entry1.contents
            expect(result).to eq "frarg"
        end
    end

    context "when we ask for all diary entries" do
        it "returns all diary entries" do
            entry1 = DiaryEntry.new('flarg', 'frarg')
            entry2 = DiaryEntry.new('glarg', 'grarg')
            diary1 = Diary.new
            diary1.add(entry1)
            diary1.add(entry2)
            result = diary1.entry_history
            expect(result).to eq [entry1, entry2]
        end
    end

    context "When we want to know how many words are in the contents" do
        it "returns the number of words" do
            entry1 = DiaryEntry.new('flarg', 'some other gibberish sentence')
            result = entry1.count_words
            expect(result).to eq 4
        end
    end

    it "returns the entries that can be read within the given time" do
        diary1 = Diary.new
        entry1 = DiaryEntry.new('Beetroot', 'Small red root vegetable')
        entry2 = DiaryEntry.new('Cucumber', 'A thing')
        entry3 = DiaryEntry.new('Tomato', 'Blegh')
        diary1.add(entry1)
        diary1.add(entry2)
        diary1.add(entry3)
        result = diary1.readable_entries(1, 2)
        expect(result).to eq [entry2, entry3]
    end
end