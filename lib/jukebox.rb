songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts <<-HELP
  I accept the following commands:
  - help : display this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  HELP
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  new_song = "Playing "
  songs.each_with_index do |son, index|
    if son == song
      new_song = "Playing #{son}"
      break
    elsif song.to_i == index+1
      new_song = "Playing #{son}"
      break
    else
        new_song = "Invalid input, please try again"
    end

  end
  puts new_song
end

def list(songs)
  output = ""

  songs.each_with_index do |song, i|
    output << "#{i + 1}. #{song}\n"
  end

  puts output
end
