#Tetris Theme
#Coded by Davids Fiddle
/
    __        __
   |  |      |  |
   |  |      |  |__
 __|  |      |_____|
|  |__|
|  |       __
|  |    __|  |__ __
|  |___|________|  |
|__|________|______| 

/
use_bpm 140

w = 4
h = 2
dq = 1.5
q = 1
e = 0.5
s = 0.25

#Perc
define :b1 do
  4.times do
    sleep e
    sample :drum_snare_soft
    sleep e
  end
end
define :b2 do
  2.times do
    sleep e
    sample :drum_snare_soft
    sleep e
  end
  sleep e
  2.times do
    sample :drum_snare_soft
    sleep s
  end
  sleep e
  sample :drum_snare_soft
  sleep e
end
define :b3 do
  2.times do
    sleep e
    sample :drum_snare_soft
    sleep e
  end
  sleep e
  3.times do
    sample :drum_snare_hard
    sleep e
  end
end

in_thread do
  2.times do
    8.times do
      b1
      b2
    end
    4.times do
      b1
      b3
    end
  end
  8.times do
    b1
    b2
  end
end

#Bass
in_thread do
  use_synth :chipbass
  #use_synth_defaults release: q
  2.times do
    2.times do
      play_pattern_timed [:r,:e2,:r,:e2,:r,:e2,:r,:e2],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r,:a2],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:e2,:r,:e2,:r,:e2,:r,:b2],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:b2,:c3],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:d2,:r,:d2,:r,:d2,:r,:e2],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r,:c3],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:b2,:r,:b2,:r,:c3,:r,:b2],[e,e,e,e,e,e,e,e]
      play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r],[e,e,e,e,e,q,e]
    end
    2.times do
      3.times do
        4.times do
          play_pattern_timed [:a2,:a3],[e,e]
        end
      end
      4.times do
        play_pattern_timed [:e2,:e3],[e,e]
      end
    end
  end
  2.times do
    play_pattern_timed [:r,:e2,:r,:e2,:r,:e2,:r,:e2],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r,:a2],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:e2,:r,:e2,:r,:e2,:r,:b2],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:b2,:c3],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:d2,:r,:d2,:r,:d2,:r,:e2],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r,:c3],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:b2,:r,:b2,:r,:c3,:r,:b2],[e,e,e,e,e,e,e,e]
    play_pattern_timed [:r,:a2,:r,:a2,:r,:a2,:r],[e,e,e,e,e,q,e]
  end
end

define :chorus do
  use_synth_defaults sustain: dq, release: e, attack: e, amp: 1.5
  play :a3
  play :c4
  play :e4
  sleep h
  play :c4
  play :e4
  sleep h
  play :g3
  play :b3
  play :d4
  sleep h
  play :b3
  play :d4
  sleep h
  play :e3
  play :a3
  play :c4
  sleep h
  play :e3
  play :a3
  sleep h
  use_synth_defaults sustain: h, release: q, attack: q, amp: 1.5
  play :e3
  play :gs3
  play :b3
  sleep w
  use_synth_defaults sustain: dq, release: e, attack: e, amp: 1.5
  play :a3
  play :c4
  play :e4
  sleep h
  play :c4
  play :e4
  sleep h
  play :g3
  play :b3
  play :d4
  sleep h
  play :b3
  play :d4
  sleep h
  use_synth_defaults sustain: e, release: e, amp: 1.5
  play :c4
  sleep q
  play :e4
  sleep q
  play :a4, sustain: dq
  sleep h
  play :gs4, sustain: h
  sleep w
end
define :main_melody do
  use_synth_defaults release: dq, amp: 1.5
  2.times do #main melody
    play_pattern_timed [:e4,:b3,:c4,:d4,:c4,:b3,:a3,:a3,:c4,:e4,:d4,:c4,:b3,:r,:c4,:d4,:e4,:c4,:a3,:a3,:r],[q,e,e,q,e,e,q,e,e,q,e,e,q,e,e,q,q,q,q,q,q]
    play_pattern_timed [:r,:d4,:f4,:a4,:g4,:f4,:e4,:r,:c4,:e4,:d4,:c4,:b3,:c4,:d4,:e4,:c4,:a3,:a3,:r],[e,q,e,q,e,e,q,e,e,q,e,e,dq,e,q,q,q,q,q,q]
  end
end
#Melody
in_thread do
  use_synth :chiplead
  main_melody
  chorus
  main_melody
  chorus
  main_melody
end