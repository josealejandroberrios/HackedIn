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
    {role_id: 2, name: "juan", lastname: "manrrique", email: "juanmanrrique@gmail.com", password: "123456", password_confirmation: "123456"}
  ])

##### Historial de Niveles Creados
  @levels = Level.create([
    {name: "JR", positive_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in massa mattis, tempor ipsum a, congue turpis. Pellentesque ornare condimentum tortor, id ultrices augue tincidunt at. Ut molestie, mauris quis lobortis sollicitudin, quam est semper diam, id consequat tellus lectus a nunc. Maecenas nec ullamcorper velit. Phasellus massa dui, dapibus sed luctus sed, dignissim eu tellus. Vestibulum eu porttitor nisi, sed mollis massa. Nunc eget pulvinar arcu. Integer bibendum mi id justo venenatis feugiat ut vel metus.", negative_description: "Vestibulum convallis orci nec magna finibus consequat. Proin sollicitudin, ipsum et pellentesque fermentum, augue dolor elementum eros, eget varius lorem nunc id sem. Nullam laoreet nunc id justo egestas euismod. Phasellus accumsan iaculis tellus, sed maximus odio placerat vel. Duis feugiat metus eget egestas pharetra. Morbi ornare aliquet lorem vitae dapibus. Maecenas non rutrum diam."},
    {name: "S-SR", positive_description: "Mauris erat nibh, suscipit vitae augue ac, luctus feugiat erat. Vestibulum efficitur erat a lorem maximus ornare. Etiam vitae ipsum non erat accumsan ullamcorper ut eget nisi. Sed posuere dapibus blandit. Donec commodo, lacus eu finibus suscipit, justo dui egestas ipsum, et elementum est felis vitae urna. Nam fermentum iaculis velit at luctus. Mauris id nisi vitae ipsum aliquam mattis. Aliquam blandit porta vulputate. Ut volutpat velit purus, non scelerisque felis lobortis eget", negative_description: "Proin eget consectetur erat, auctor rhoncus neque. Duis ac ligula viverra, malesuada purus vitae, pretium magna. Cras lobortis ex sit amet varius finibus. Nulla nec quam id ante rutrum pulvinar nec ultrices orci. Pellentesque efficitur nulla eget leo viverra, nec volutpat nisl blandit. Curabitur placerat dolor ut est varius, quis consectetur nibh faucibus. Suspendisse potenti."},
    {name: "SR", positive_description: "Cras commodo est a placerat dictum. Aliquam euismod quam venenatis mattis pretium. Ut nec tellus nec nisl dictum vulputate dapibus vitae nibh. Fusce ultricies nec mi non fringilla. Phasellus a porta nibh, non efficitur risus. Nunc turpis eros, blandit sed faucibus id, posuere nec nibh. Suspendisse sed vestibulum metus.", negative_description: "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer tempus metus quis sagittis maximus. Nam eros mauris, mattis sit amet pharetra et, bibendum vel purus. Quisque vestibulum fermentum eros."},
    {name: "LT", positive_description: "Maecenas sed finibus nibh, id commodo turpis. Duis venenatis sem tempus tincidunt egestas. Nam ultricies tincidunt eleifend. Suspendisse rutrum commodo nunc vel auctor. Mauris ipsum urna, placerat id orci quis, lobortis auctor metus. Nulla dapibus nibh ut urna mollis, varius dapibus nibh convallis. Sed egestas urna non orci lobortis luctus.", negative_description: "Pellentesque ultrices nisl nec quam mattis, non consequat arcu pharetra. Nunc eu ex nunc. Donec tristique, urna sit amet ornare luctus, sem magna pulvinar libero, sit amet varius purus lectus eu enim."}
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
    {user_id: 3, avatar: "", about: "Durante mis prácticas en Gidahatari trabajé en modelamientos numéricos que formaron parte de proyectos importantes para clientes como Petroperú, así como en trabajo de investigación acerca de diversos temas relacionados a la gestión del agua. Además trabajé en equipo empleando mi habilidad de comunicación, desarrollando y manteniendo buenas relaciones laborales con mis compañeros de trabajo", country: "Venezuela", level_id: 4}
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