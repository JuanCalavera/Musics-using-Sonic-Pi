use_synth :piano

8.times do
  play:b2, release:3
  play:fs3, release:3
  play:b3, release:3
  play:fs3, release:3
  sleep 0.5
  play:a4
  play:e5
  sleep 0.3
  play:a2, release:3
  play:e3, release:3
  play:a3, release:3
  play:e4, release:3
  sleep 0.8
  play:a4
  play:e5
  sleep 0.5
end