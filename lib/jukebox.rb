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

def play_prompt
  prompt = "> "
  puts "Please enter a song name or number:"
  print prompt
end

def play(songs)

  song_playing = nil

  play_prompt

  while user_input = gets.chomp
    if songs.find(user_input) || songs[user_input.to_i]
      song_playing = songs[user_input.to_i] || songs[songs.index(user_input)]
      break
    else
      puts "Invalid input, please try again"
      play_prompt
    end
  end

  puts song_playing
end

def list(songs)
  output = ""

  songs.each_with_index do |song, i|
    output << "#{i + 1}. #{song}\n"
  end

  puts output
end
