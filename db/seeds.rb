[
  { name: 'Andy Gray' },
  { name: 'Benedict Aluan' },
  { name: 'Brayden Gosse' },
  { name: 'Dan Henton' },
  { name: 'Edwin Rozario' },
  { name: 'Emma Dyson' },
  { name: 'Gavin Coughlan' },
  { name: 'Gustavo Motizuki' },
  { name: 'James Nicolle' },
  { name: 'Krystie Daw' },
  { name: 'Nathan Donaldson' },
  { name: 'Nick Bulter' },
  { name: 'Oliver Stigley' },
  { name: 'Rebecca Jones' },
  { name: 'Richard Matthews' },
  { name: 'Theo Paul' },
  { name: 'Yar Htut' },
  { name: 'Tim Wright' }
].each do |info|
  Player.find_or_create_by(info)
end
