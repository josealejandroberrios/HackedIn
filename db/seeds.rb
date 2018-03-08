# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### Historial de Roles Creados
@roles = Role.create([
  {name: "ADMINISTRADOR"},
  {name: "USUARIO"}
])

##### Historial de Usuarios Registrados
@users = User.create([
  {role_id: 1, name: "admin", lastname: "1", email: "admin@admin.com", password: "admin123", password_confirmation: "admin123"},
  {role_id: 2, name: "jose alejandro", lastname: "berrios galviz", email: "josealejandroberriosgalviz@gmail.com", password: "123456", password_confirmation: "123456"},
  {role_id: 2, name: "juan", lastname: "manrrique", email: "juanmanrrique@gmail.com", password: "123456", password_confirmation: "123456"},
  {role_id: 2, name: "jefferson", lastname: "colmenares", email: "jcolmenares@gmail.com", password: "123456", password_confirmation: "123456"},
  {role_id: 2, name: "andres", lastname: "de avila", email: "adeavila@gmail.com", password: "123456", password_confirmation: "123456"}
])

##### Historial de Niveles Creados
@levels = Level.create([
  {name: "JR", positive_description: "Positivo JR", negative_description: "Negativo JR"},
  {name: "S-SR", positive_description: "Positivo S-SR", negative_description: "Negativo S-SR"},
  {name: "SR", positive_description: "Positivo SR", negative_description: "Negativo SR"},
  {name: "LT", positive_description: "Positivo LT", negative_description: "Negativo LT"}
])

##### Historial de Habilidades Creadas
@skills = Skill.create([
  {name: "Ruby"},
  {name: "Rails"},
  {name: "React"},
  {name: "JavaScript"},
  {name: "Sinatra"},
])
##### Historial de Requirimientos Creados segun Habilidad
@requirements = Requirement.create([
  {name: "Criterio 1", skill_id: 1},
  {name: "Criterio 2", skill_id: 1},
  {name: "Criterio 3", skill_id: 1},
  {name: "Criterio 4", skill_id: 1},
  {name: "Criterio 5", skill_id: 1},
  {name: "Criterio 1", skill_id: 2},
  {name: "Criterio 2", skill_id: 2},
  {name: "Criterio 3", skill_id: 2},
  {name: "Criterio 4", skill_id: 2},
  {name: "Criterio 1", skill_id: 3},
  {name: "Criterio 2", skill_id: 3},
  {name: "Criterio 3", skill_id: 3},
  {name: "Criterio 4", skill_id: 3},
  {name: "Criterio 1", skill_id: 4},
  {name: "Criterio 2", skill_id: 4},
  {name: "Criterio 3", skill_id: 4},
  {name: "Criterio 4", skill_id: 4},
  {name: "Criterio 5", skill_id: 4},
  {name: "Criterio 1", skill_id: 5},
  {name: "Criterio 2", skill_id: 5},
  {name: "Criterio 3", skill_id: 5},
  {name: "Criterio 4", skill_id: 5}
])



##### Historial de Perfiles
@profiles = Profile.create([
  {user_id: 2, avatar: "", about: "Como un graduado de la Universidad de los Andes, con un título de en ingeniería ambiental, he realizado prácticas en varias organizaciones líderes como Gidahatari. Estos puestos no solo me han permitido desarrollar experiencia en este campo, sino también un número de habilidades valiosas en este sector", country: "Venezuela", level_id: 1},
  {user_id: 3, avatar: "", about: "Durante mis prácticas en Gidahatari trabajé en modelamientos numéricos que formaron parte de proyectos importantes para clientes como Petroperú, así como en trabajo de investigación acerca de diversos temas relacionados a la gestión del agua. Además trabajé en equipo empleando mi habilidad de comunicación, desarrollando y manteniendo buenas relaciones laborales con mis compañeros de trabajo", country: "Venezuela", level_id: 4},
  {user_id: 4, avatar: "", about: "descripion jefferson", country: "Venezuela", level_id: 2},
  {user_id: 5, avatar: "", about: "desripcion andres", country: "Venezuela", level_id: 3}
])

##### Historial de Repositorios que tiene un perfil
@repositories = Repository.create([
  {profile_id: 1, link: "gitlab.com/users/joseberrios"},
  {profile_id: 1, link: "github.com/josealejandroberrios"},
  {profile_id: 2, link: "gitlab.com/users/juanmanrique.dth"}
])

##### Historial de Trabajos que puede tener un perfil
@jobs = Job.create([
  {profile_id: 1, company: "Supermercados UNICASA", position: "Analista de Pagos al Personal",  description: "Sed pharetra rutrum cursus. Aliquam pharetra imperdiet ligula sed mattis. Pellentesque euismod fermentum turpis, vehicula vehicula risus pulvinar ac. Donec in eros condimentum, euismod odio a, ornare ipsum. Cras efficitur nisi gravida erat luctus egestas. In porta id lectus at ornare. Phasellus non arcu et erat rhoncus hendrerit vel quis arcu. Quisque interdum laoreet tempor.", start_date: "21-03-2013", finish_date: "04-10-2017"},
  {profile_id: 2, company: "Otro Empleo", position: "Otro Cargo",  description: "In eros nisi, convallis sit amet metus et, tempus eleifend quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque tincidunt id ex sit amet auctor. Cras ultrices dapibus tempus. Cras non ligula fermentum, aliquam metus ut, varius purus. Vivamus quis turpis suscipit, elementum est et, aliquet eros. Quisque ultrices volutpat molestie. Aliquam erat volutpat.", start_date: "09-10-2003", finish_date: "23-12-2012"},
  {profile_id: 2, company: "Academia DevToHack", position: "QA Tech",  description: "Proin dolor urna, semper quis odio in, sagittis posuere arcu. Pellentesque euismod efficitur ante. Sed quis ligula non nibh feugiat mattis. Cras vehicula lacus lectus, in venenatis leo congue non. Morbi laoreet ornare nibh. In dapibus tellus sed rhoncus rutrum. Nullam pretium gravida auctor. Aliquam eget accumsan tortor, id elementum nisl. Morbi sed condimentum orci, eu ultrices sapien.", start_date: "14-03-2013", finish_date: "03-03-2018"}
])

##### Historial de Universidades que tiene un perfil
@educations = Education.create([
  {profile_id: 1, place: "Colegio Universitario de Caracas", qualification: "Licenciado",  discipline: "Turismo", start_date: "02-03-2013", finish_date: "06-06-2015"},
  {profile_id: 2, place: "Universidad 1", qualification: "Titulo 1",  discipline: "Mencion 1", start_date: "03-10-1995", finish_date: "23-11-1999"},
  {profile_id: 2, place: "Universidad 2", qualification: "Titulo 2",  discipline: "Mencion 2", start_date: "14-06-2002", finish_date: "28-03-2006"}
])

##### Historial de Habilidades que tiene un perfil
Profile.find(1).skills << Skill.find(1)
Profile.find(1).skills << Skill.find(3)

Profile.find(2).skills << Skill.find(4)
Profile.find(2).skills << Skill.find(5)


##### Historial de Requerimientos que puede tener un perfil
@fullfillments = Fullfillment.create([
  {profile_id: 1, requirement_id: 1, status: true},
  {profile_id: 1, requirement_id: 2, status: true},
  {profile_id: 1, requirement_id: 3, status: true},
  {profile_id: 1, requirement_id: 4, status: false},
  {profile_id: 1, requirement_id: 5, status: false},
  {profile_id: 1, requirement_id: 10, status: true},
  {profile_id: 1, requirement_id: 11, status: true},
  {profile_id: 1, requirement_id: 12, status: false},
  {profile_id: 1, requirement_id: 13, status: true},
  {profile_id: 2, requirement_id: 14, status: true},
  {profile_id: 2, requirement_id: 15, status: true},
  {profile_id: 2, requirement_id: 16, status: true},
  {profile_id: 2, requirement_id: 17, status: false},
  {profile_id: 2, requirement_id: 18, status: false},
  {profile_id: 2, requirement_id: 19, status: true},
  {profile_id: 2, requirement_id: 20, status: true},
  {profile_id: 2, requirement_id: 21, status: true},
  {profile_id: 2, requirement_id: 22, status: false}
])