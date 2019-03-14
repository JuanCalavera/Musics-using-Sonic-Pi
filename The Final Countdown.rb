# The Final Countdown on Sonic Pi

use_bpm 100

use_synth :dsaw

live_loop :riff do
  with_fx :reverb do
    sleep 1.5
    play :cs6  # 85
    sleep 0.25
    play :b5   # 83
    sleep 0.25
    play :cs6  # 85
    sleep 1
    play :fs5  # 78
    
    sleep 2.5
    play :d6
    sleep 0.25
    play :cs6
    sleep 0.25
    play :d6
    sleep 0.5
    play :cs6
    sleep 0.5
    play :b5
    
    sleep 2.5
    play :d6
    sleep 0.25
    play :cs6
    sleep 0.25
    play :d6
    sleep 1
    play :fs5
    
    sleep 2.5
    play :b5
    sleep 0.25
    play :a5
    sleep 0.25
    play :b5
    sleep 0.5
    play :a5
    sleep 0.5
    play :gs5
    sleep 0.5
    play :b5
    sleep 0.5
    play :a5
  end
end

use_synth :prophet
live_loop :bass do
  play :fs2, release: 3.5
  sleep 4
  play :d3, release: 3.5
  sleep 4
  play :b2, release: 3.5
  sleep 4
  play :e2, release: 1.8
  sleep 2
  play :f2, release: 1.8
  sleep 2
end