#Legend of Zelda
#Song of Storms
#Coded by Davids Fiddle

use_bpm 120

#Melody
melody = [:d4,:f4,:d5,:d4,:f4,:d5,:e5,:f5,:e5,:f5,:e5,:c5,:a4,:a4,:d4,:f4,:g4,:a4,:a4,:d4,:f4,:g4,:e4]
times = [0.5,0.5,2,0.5,0.5,2,1.5,0.5,0.5,0.5,0.5,0.5,2,1,1,0.5,0.5,3,1,1,0.5,0.5,3]
in_thread do
  use_synth :chiplead
  2.times do
    2.times do
      
      sleep 1
      play :d4
      play :f4
      play :a4
      sleep 1
      play :d4
      play :f4
      play :a4
      sleep 1
      
      sleep 0.5
      play :e4
      sleep 0.5
      play :g4, release: 1.5
      play :b4, release: 1.5
      sleep 2
      
      sleep 1
      play :f4
      play :a4
      play :c5
      sleep 1
      play :f4
      play :a4
      play :c5
      sleep 1
      
      sleep 0.5
      play :e4
      sleep 0.5
      play :g4, release: 1.5
      play :b4, release: 1.5
      sleep 2
      
    end
    2.times do
      play_pattern_timed melody, times
    end
  end
  #ending chord
  play :d3, release: 1.5
  play :fs3, release: 1.5
  play :a3, release: 1.5
  play :d4, release: 1.5
  play :a4, release: 1.5
end


#Harmony
in_thread do
  use_synth :chipbass
  with_fx :reverb do
    2.times do
      2.times do
        play_pattern_timed [:d3, :e3, :f3, :e3], [3,3,3,3]
      end
      
      2.times do
        
        play :d3
        sleep 1
        play :f3
        play :a3
        sleep 1
        play :f3
        play :a3
        sleep 1
        
        play :e3
        sleep 1
        play :g3
        play :b3
        sleep 1
        play :g3
        play :b3
        sleep 1
        
        play :f3
        sleep 1
        play :a3
        play :c4
        sleep 1
        play :a3
        play :c4
        sleep 1
        
        play :e3
        sleep 1
        play :g3
        play :b3
        sleep 1
        play :g3
        play :b3
        sleep 1
        
        play :bb2
        sleep 1
        play :d3
        play :f3
        sleep 1
        play :d3
        play :f3
        sleep 1
        
        play :f2
        sleep 1
        play :a2
        play :c3
        sleep 1
        play :a2
        play :c3
        sleep 1
        
        play :bb2
        sleep 1
        play :d3
        play :f3
        sleep 1
        play :d3
        play :f3
        sleep 1
        
        play :a2
        sleep 1
        play :db3
        play :e3
        sleep 1
        play :db3
        play :e3
        sleep 1
      end
    end
  end
  #ending chord
  play :d2, release: 1.5
end