# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

neighborhood = [

['Cerrillos '], ['Cerro Navia '], ['Conchalí '], ['El Bosque '], ['Estación Central '], ['Huechuraba '], ['Independencia '], ['La Cisterna '], ['La Florida '], ['La Pintana '], ['La Granja '], ['Padre Hurtado '], ['Pirque '], ['La Reina '], ['Las Condes '], ['Lo Barnechea '], ['Lo Espejo '], ['Lo Prado '], ['Macul '], ['Maipú '], ['Ñuñoa '], ['Pedro Aguirre Cerda '], ['Peñalolén '], ['Providencia '], ['Pudahuel'], ['Quilicura'], ['Quinta Normal'], ['Recoleta'], ['Renca'], ['San Miguel'], ['San Joaquín'], ['San Ramón'], ['Santiago'], ['Vitacura'], ['San Bernardo '], ['San José de Maipo'], ['Puente Alto']

]

neighborhood.map{|b| Neighborhood.create(name: b.first)}

