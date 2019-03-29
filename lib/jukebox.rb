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

  output = ""

  puts "Please enter a song name or number:"
  user_input = gets.chomp

  songs.each_with_index do |song, i|
    if song == user_input || (i + 1) == user_input.to_i
      output = "Playing #{song}"
      # output = song
    else
      output = "Invalid input, please try again"
    end
  end

  puts output
end

def list(songs)
  output = ""

  songs.each_with_index do |song, i|
    output << "#{i + 1}. #{song}\n"
  end

  puts output
end
