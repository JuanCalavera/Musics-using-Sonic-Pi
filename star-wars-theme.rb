use_synth :dsaw

s=0.11 #ajustando tempo aqui
sq=1*s #nota de timinings
sq7=4*sq/7.0 #para semiquaver run
q=2*sq
qt=2/3.0*q #para triplets
c=2*q
cd=3*q
m=4*q
md=6*q
b=8*q

semivol=0.3 #configuração de volume
full=1
soft=0.5

define :ldc do |dlist| #usado para calcular mais facilmente os delays
  dur=0
  dlist.each do |d|
    dur+=d
  end
  return (dur/c).round
end

#bass rhythm part
co= [:c2, :c4]
cor=[co,co,co,co,:r,co,:r]
cor4=cor[0..4]
#colocado cor4 #para debugging

lhn=[co,:r,co,:r]+cor*7+cor4*2+[:r]
dor=[qt,qt,qt,q,q,q,q]
dor4=dor[0..4]
lhd=[q,q,q,q]+dor*7+dor4*2+[q]
lhn=lhn.ring #Colocando a intro em multiplexados plays
lhd=lhd.ring
puts "data checks part lengths and durations"
puts "lh"
puts lhn.length
puts lhd.length
#define some chords
ch1=[:ab3,:db4,:f4,:ab4]
ch2=[:f3,:ab3,:db4,:f4]
ch3=[:b3,:e4,:gs4,:b4]
ch4=[:bb3,:eb4,:g4,:bb4]

rhn=[:r,ch1,ch1,ch2,:r,ch1,ch1,ch2,:r,ch3,ch3,ch4,ch3,ch4,ch1,:r,[:c5,:c6],:b5,:a5,:g5]
rhd=[b+cd,q,md,q,m,q,md,q,m,q,md+m,qt,qt,qt,q,cd,sq,sq,sq,sq]
rhn=rhn.ring
rhd=rhd.ring

puts "rh"
puts rhn.length
puts rhd.length
ra=[full]*16+[soft]*4 #volume parte
ra=ra.ring
puts "ra vol length"
puts ra.length
r1=[:c5,:b5,:a5,:g5];r2=[:a6,:g6,:f6,:e6];r3=[:g5,:f5,:e5,:d5] #further chords
rhn2=r1*2+r2+r1*3+r2+r1+r3+r1+r2+r1*2+r2+[:g5,:g6]
rhd2=[sq]*14*4+[c]
rhn2=rhn2.ring
rhd2=rhd2.ring
puts "rh2"
puts rhn2.length
puts rhd2.length
cl1=[[:c3,:g3,:b3,:c4]];cl2=[[:f3,:a3,:c4]];cl3=[[:g3,:c4]];r=[:r]
lhn2=cl1+r+r+cl2+r+cl2+r+cl1+r+cl1+cl2+r+cl3*3+cl1+r+cl1+r+r+cl2+r+cl2+r+cl1+r+cl1+cl2+cl3+[:g3,:g3]
lhd2=[q]*12+[qt]*3+[q]*12+[c]+[qt]*3
lhn2=lhn2.ring
lhd2=lhd2.ring
puts "lh2"
puts lhn2.length
puts lhd2.length

rhn3=[:c4,:g4]+[:f4,:e4,:d4,:c5,:g4]*2+[:f4,:e4,:f4,:d4,:d4,:d4,:d4,:g3,:g3,:g3]+ \
  [:c4,:g4]+[:f4,:e4,:d4,:c5,:g4]*2+[[:f4,:d5,:f5],[:e4,:cs5,:e5],[:f4,:d5,:f5],[:d4,:b4,:d5]]+ \
  [:g4,:g4,:a4,:a4,:f5,:e5,:d5,:c5,:c5,:d5,:e5,:d5,:a4,:b4,:g4,:g4,:a4,:a4,:f5,:e5,:d5,:c5, \
   [:g4,:g5],:d5,:d5,[:g4,:d5,:g5],[:g4,:g5]]
  rhd3=[m,m,qt,qt,qt,m,c,qt,qt,qt,m,c,qt,qt,qt,c,qt,qt,qt,qt,qt,qt,m,m,qt,qt,qt,m,c, \
        qt,qt,qt,m,c,qt,qt,qt,m,q,q,cd,q,q,q,q,q,qt,qt,qt,qt*2,qt,c,q,q,cd,q,q,q,q,q,q,q,m,q,q]
  rhn3=rhn3.ring
rhd3=rhd3.ring
puts "rh3"
puts rhn3.length
puts rhd3.length
lc1=[:c2,:g2,:e3,:g3];lc2=[:f2,:c3,:a3,:c4];lc1p=[:c2,:g2,:e3,:g3,:c4];lc3=[:bb2,:f3];lc4=[:g2:f3]
lc5=[:f2,:c3,:a3,:c4];lc6=[:c2,:c3,:g3,:c4,:e4];lc7=[:f2,:d3];lc8=[:c2,:c3,:g3,:c4,:e4]
lc9=[:g3,:f4],:c4,:a3,:c4;lc10=[:f4,:c4,:a3,:c4]*3

lhn3=[:r,lc1,:r,lc1,:r,lc1,:r,lc2,lc2,lc2,:r,lc2,:r,lc1p,:r, \
      lc2,lc2,lc2,:r,lc2,:r,lc1p,:r,lc3,lc4,lc4,lc4,:r,[:g2,:b2,:f3],:r,lc1,:r,lc1,lc1,lc1,lc1,:r, \
      :r,[:f2,:c3,:a3],:r,[:f2,:c3,:a3,:c4],:r,lc5,lc5,lc6,lc6,lc6,:r, \
      lc7,:r,lc7+[:c4],:r,lc7+[:a4,:c4],lc7+[:a4,:c4],lc8,lc8,:r,[:bb2,:f3,:bb3],[:g2,:d3,:b3],\
:g3,:a3,:b3,:c4,:d4,:e4,:f4,:r]+ \
  lc9+lc10+lc9+lc10+lc9+lc10+[[:eb3,:bb3],:g3,[:d3,:b3],:g3,\
                              :g2,:a2,:b2,:c3,:d3,:e3,:f3,[:g3,:b3]]
  lhd3=[c,c,q,q,q,q,c,qt,qt,qt,q,q,q,q,c,qt,qt,qt,q,q,q,q,c,c,qt,qt,qt,q,q,c,c,qt,qt,qt,qt,qt,qt,\
        q,q,q,q,qt,qt,qt,qt,qt,qt,q,q,q,q,qt,qt,qt,qt,qt,qt,c,c]+[sq7]*7+[c]+[sq]*48+\
  [q,q,q,q]+[sq7]*7+[c]
lhn3=lhn3.ring
lhd3=lhd3.ring
puts "lh3"
puts lhn3.length
puts lhd3.length
la3=[soft]*67+[semivol]*60
la3=la3.ring
puts "la3 vol length"
puts la3.length

rhn4=[[:a4,:c5,:a5],[:a4,:a5],[:f5,:a5,:f6],[:e5,:e6],[:d5,:d6],[:c5,:c6],[:c5,:e5,:c6],[:d5,:d6],[:e5,:e6], \
      [:d5,:d6],[:a4,:a5],[:b4,:d5,:b6],[:g5,:g6],[:g5,:g6],[:c6,:ab6,:c7],[:bb6,:g6,:cb7],[:ab5,:f6,:ab6],\
      :r, [:g5,:eb6,:g6],[:f5,:d6,:f6],[:eb5,:c6,:eb6],[:d5,:b5,:d6],:r,[:c5,:a5,:c6],[:g5,:d5,:g6]]
rhn4=rhn4.ring
rhd4=[cd,q,q,q,q,q,qt,qt,qt,qt*2,qt,c,qt*2,qt,q,q,q,sq,sq,q,q,q,sq,sq,b]
rhd4=rhd4.ring
rhn4b=[:r,:c6,:b5].ring
rhd4b=[12*c,m,m].ring

lhn4=[[:f1,:f2],[:f2,:b2],[:f2,:c3],[:f2,:d3],[:f2,:e3],[:f2,:f3],[:f2,:d3,:g3],:r,[:d2,:d3],[:eb2,:eb3],[:f2,:f3],:r,\
      [:g2,:g3],[:ab2,:ab3],[:bb2,:bb3],[:c3,:c4],:r,[:d3,:d4],[:g3,:g4],[:g3,:g4],[:g2,:g3],[:g3,:g4],[:g3,:g4],[:g3,:g4]]
lhd4=[c,c,c,c,c,c,c,c,q,q,q,sq,sq,q,q,q,sq,sq,q,q,q,q+qt,qt,qt]
lhd4=lhd4.ring
finalern=[[:c4,:g4,:c5,:e5,:g5,:c6,:c7], [:c4,:g4,:c5,:e5,:g5,:c6,:c7]]
finalerd=[q,q+7*c]
finaleln=[[:c2,:e2,:g2,:c3],[:c2,:e2,:g2,:c3]]
finaleld=[q,q+7*c]
puts "rh4"
puts rhn4.length #duração com a chamada de debbuging para checagem
puts rhd4.length
puts "lh4"
puts lhn4.length
puts lhd4.length
puts "part durations in crotchets"
puts ldc(rhd)
puts ldc(rhd2)
puts ldc(rhd3)
puts ldc(rhd4)

#now start playing
with_fx :reverb,room: 0.8 do
  2.times do #jogando mais 2 vezes no loop
    
    live_loop :lh do
      tick
      play lhn.look,release: lhd.look,amp: full
      sleep lhd.look
      stop if look%lhd.length==lhd.length - 1 # % (modulus) allows for replay without resetting tick
    end
    live_loop :rh do
      tick
      play rhn.look,release: rhd.look,amp: ra.look
      sleep rhd.look
      stop if look%rhd.length==rhd.length - 1
    end
    sleep 27*c
    live_loop :rh2 do
      tick
      play rhn2.look,release: rhd2.look,amp: soft
      sleep rhd2.look
      stop if look%rhd2.length==rhd2.length - 1
    end
    live_loop :lh2 do
      tick
      play lhn2.look,release: lhd2.look,amp: soft
      sleep lhd2.look
      stop if look%lhd2.length==lhd2.length - 1
    end
    sleep 15*c
    live_loop :rh3 do
      tick
      play rhn3.look,release: rhd3.look,amp: soft
      sleep rhd3.look
      stop if look%rhd3.length==rhd3.length - 1
    end
    live_loop :lh3 do
      tick
      play lhn3.look,release: lhd3.look,amp: la3.look
      sleep lhd3.look
      stop if look%lhd3.length==lhd3.length - 1
    end
    sleep 48*c
    live_loop :rh4 do #fazendo mais sustenido
      tick
      play rhn4.look,sustain: rhd4.look*0.9,release: rhd4.look*0.1,amp: full
      sleep rhd4.look
      stop if look%rhd4.length==rhd4.length - 1
    end
    live_loop :lh4 do
      tick
      play lhn4.look,sustain:  (lhd4.look)*0.9,release: (lhd4.look)*0.1,amp: full
      sleep lhd4.look
      stop if look%lhd4.length==lhd4.length - 1
    end
    live_loop :rh4b do  #rh com 2 partes adicionais
      tick
      play rhn4b.look,sustain: (rhd4b.look) * 0.9, release: (rhd4b.look) * 0.1,amp: full
      sleep rhd4b.look
      stop if look%rhd4b.length==rhd4b.length - 1
    end
    sleep 16*c
  end
  live_loop :finalel do #tocando as notas finais
    tick
    play finaleln.look,sustain: (finaleld.look)*0.9,release: (finaleld.look)*0.1,amp: full
    sleep finaleld.look
    stop if look==finaleld.length - 1
  end
  live_loop :finaler do #tocando as notas finais
    tick
    play finalern.look,sustain: (finalerd.look)*0.9,release: (finalerd.look)*0.1,amp: full
    sleep finalerd.look
    stop if look==finalerd.length - 1
  end
end
