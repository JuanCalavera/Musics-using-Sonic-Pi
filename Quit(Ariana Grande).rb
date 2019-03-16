use_bpm 125

sing = [:C5, :C5, :G5, :G5, :C5, :C5, :C5, :C5, :C5, :C5, :G5, :G5, :C5, :C5, :C5]
times = [0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5]

play :C, release: 4
play :Eb, release: 4
play :Ab, release: 4
play :C5, release: 4
sleep 4
play :D, release: 4
play :F, release: 4
play :Bb, release: 4
play :D5, release: 4
sleep 4
play :C, release: 4
play :Eb, release: 4
play :G, release: 4
play :Eb5, release: 4
sleep 4
play :D, release: 4
play :G, release: 4
play :Bb, release: 4
play :G5, release: 4
sleep 4
play :C, release: 4
play :Eb, release: 4
play :Ab, release: 4
play :C5, release: 4
sleep 4
play :D, release: 4
play :F, release: 4
play :Bb, release: 4
play :D5, release: 4
sleep 4
play :C, release: 4
play :Eb, release: 4
play :G, release: 4
play :Eb5, release: 4
sleep 4
play :D, release: 4
play :G, release: 4
play :Bb, release: 4
play :G5, release: 4
sleep 4

in_thread do
  sleep 0.5
  play_pattern_timed sing, times
  play :Bb4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :G4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :G4
  sleep 0.5
  play :Eb5
  sleep 0.5
  play :D5, release: 5
  sleep 5
  play_pattern_timed sing, times
  play :Bb4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :G4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :G4
  sleep 0.5
  play :Eb5
  sleep 0.5
  play :F5, release: 2
end
in_thread do
  play :C, release: 4
  play :Eb, release: 4
  play :Ab, release: 4
  sleep 4
  play :D, release: 4
  play :F, release: 4
  play :Bb, release: 4
  sleep 4
  play :C, release: 4
  play :Eb, release: 4
  play :G, release: 4
  sleep 4
  play :D, release: 4
  play :G, release: 4
  play :Bb, release: 4
  sleep 4
  play :C, release: 4
  play :Eb, release: 4
  play :Ab, release: 4
  sleep 4
  play :D, release: 4
  play :F, release: 4
  play :Bb, release: 4
  sleep 4
  play :C, release: 4
  play :Eb, release: 4
  play :G, release: 4
  sleep 4
  play :D, release: 4
  play :G, release: 4
  play :Bb, release: 5
  sleep 5
  
end