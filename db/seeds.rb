Site.destroy_all
User.destroy_all
ProfessionalEquality.destroy_all

User.create!(email: 'barville@paul-calin.com', password: 'azerty123')

hash = {
  "entites" => [
    { name: "Siège social - Barville (88)", latitude: 48.38361080714551, longitude: 5.774257326224938, color: 'blue' },
    { name: "Saint-Dizier (52)", latitude: 48.64389955485438, longitude: 4.907417811038694, color: 'blue' },
    { name: "Entreprise Boulogne (52)", latitude: 48.6207446388889, longitude: 4.901303895915837, color: 'blue' },
    { name: "SAS C2B - Calin Bar Béton (55)", latitude: 48.80010408747171, longitude: 5.113630784278893, color: 'blue' },
  ],
  "beton" => [
    { name: "Barville / Harchéchamp (88)", latitude: 48.38068960008176, longitude: 5.777261433185531, color: 'red' },
    { name: "Saint-Dizier (52)", latitude: 48.643083102611236, longitude: 4.905642007065683, color: 'red' },
    { name: "Rachecourt-sur-Marne (52)", latitude: 48.526493004469884, longitude: 5.109040707880983, color: 'red' },
    { name: "Varney (55)", latitude: 48.8000970205148, longitude: 5.113598597771987, color: 'red' },
  ],
  "carrieres calcaires" => [
    { name: "Attignéville (88)", latitude: 48.38548509880643, longitude: 5.827950952161498, color: 'green' },
    { name: "Gondrecourt-le-Château (55)", latitude: 48.504400382780986, longitude: 5.521308863562023, color: 'green' },
    { name: "Magneux / Brousseval (52)", latitude: 48.4996977011607, longitude: 4.997028362121279, color: 'green' },
    { name: "Sommerécourt (52)", latitude: 48.23053029458792, longitude: 5.645876282445718, color: 'green' },
    { name: "Tramont-Lassus (54)", latitude: 48.40788981601554, longitude: 5.976054762851975, color: 'green' },
  ],
  "sablieres" => [
    { name: "Coussey / Sionne (88)", latitude: 48.40163873300476, longitude: 5.668304771089603, color: 'yellow' },
    { name: "Perthois (52)", latitude: 48.66633126264354, longitude: 4.7856462665331465, color: 'yellow' },
    { name: "Moeslains (52)", latitude: 48.622392401697844, longitude: 4.902547356435005, color: 'yellow' },
  ]
}

hash.each do |kind, array|
  array.each do |data|
    Site.create!(kind: kind, name: data[:name], latitude: data[:latitude], longitude: data[:longitude], color: data[:color])
  end
end

ProfessionalEquality.create!(
  year: '2021',
  technical_name: 'only_instance',
  index: 'incalculable',
  pay_gap_result: 'incalculable',
  pay_gap_points: '',
  increase_gap_result: '0%',
  increase_gap_points: '35 points',
  maternity_increase_result: '100%',
  maternity_increase_points: '15 points',
  high_remuneration_result: '2',
  high_remuneration_points: '5 points',
  actions_comment: 'non requis'
)
