# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create([
              {:name => "Admin", :description => "Rol perteneciente al Admininistrador"},
              {:name => "Leader", :description => "Rol perteneciente al Jefe de Proyecto"},
              {:name => "Viewer", :description => "Rol perteneciente al observador o visitante"},
              {:name => "Tester_Designer", :description => "Rol perteneciente al diseñador de los casos de uso y los pasos"},
              {:name => "Tester_Junior", :description => "Rol perteneciente al tester con menor experiencia del proyecto"},
              {:name => "Tester_Senior", :description => "Rol perteneciente al tester con mayor experiencia del proyecto"}
                    ])

zones = Zone.create([
              {:name => "User"},
              {:name => "Project"},
              {:name => "Suite"},
              {:name => "Case"},
              {:name => "Build"},
              {:name => "Plan"},
              {:name => "Execute"},
              {:name => "Platform"},
              {:name => "Keyword"}
                    ])

manages = Manage.create([
    # Manage Admin
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Admin").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Leader
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Leader").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Viewer
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Viewer").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Designer
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Designer").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Junior
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Junior").id, :zone_id => Zone.find_by(name: "Keyword").id},

  # Manage Senior
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "User").id},
{:canCreate => false, :canRead => true, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Project").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Suite").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Case").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Build").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Plan").id},
{:canCreate => true, :canRead => true, :canUpdate => true, :canDelete => true, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Execute").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Platform").id},
{:canCreate => false, :canRead => false, :canUpdate => false, :canDelete => false, :role_id => Role.find_by(name: "Tester_Senior").id, :zone_id => Zone.find_by(name: "Keyword").id},
                         ])

users = User.create([
    {:name => "Admin", :surname => "istrator", :email => "admin@testUs.com", :username => "Admin", :password => "123456", :role_id => Role.find_by(name: "Admin").id, :active => true},
    {:name => "Tester", :surname => "Designer", :email => "designer@testUs.com", :username => "designer", :password => "123456", :role_id => Role.find_by(name: "Tester_Designer").id, :active => true},
    {:name => "Tester", :surname => "Junior", :email => "junior@testUs.com", :username => "junior", :password => "123456", :role_id => Role.find_by(name: "Tester_Junior").id, :active => true},
    {:name => "Tester", :surname => "Senior", :email => "senior@testUs.com", :username => "senior", :password => "123456", :role_id => Role.find_by(name: "Tester_Senior").id, :active => true}
                    ])

projects = Project.create([

    {:name => "Proyecto Base", :description => "Este es el proyecto Base de Test US", :active => true, :public => true},
    {:name => "Proyecto Colirio", :description => "Proyecto creado para la realización del caso practico", :active => true, :public => true}
                          ])

assigns = Assign.create([
    {:user_id => User.find_by(name: "Admin").id, :project_id => Project.find_by(name:"Proyecto Base").id},
    {:user_id => User.find_by(surname: "Junior").id, :project_id => Project.find_by(name:"Proyecto Base").id},
    {:user_id => User.find_by(surname: "Senior").id, :project_id => Project.find_by(name:"Proyecto Base").id},
    {:user_id => User.find_by(surname: "Designer").id, :project_id => Project.find_by(name:"Proyecto Base").id}
                        ])

suites = Suite.create([
    {:name => "Login y Registro", :description => "Ejemplo del caso practico de la suite Login y Registro"}
                      ])

cases =  Case.create([
    {:title => "Registro", :description => "Ejemplo del caso practico de un caso de prueba llamado Registro", :precondition => "No estar registrado en la aplicación", :timeEstimated => "20", :suite_id => Suite.find_by(name:"Login y Registro").id},
    {:title => "Login", :description => "Ejemplo del caso practico de un caso de prueba llamado Login", :precondition => "No estar iniciado sesión", :timeEstimated => "5", :suite_id => Suite.find_by(name:"Login y Registro").id}
                     ])

steps =  Step.create([
    {:action => "Entrar en la aplicación", :expectedResult => "Estamos en la aplicación", :case_id => Case.find_by(title:"Registro").id},
    {:action => "Pulsar en el botón Registrarse", :expectedResult => "Aparecerá vista de registro", :case_id => Case.find_by(title:"Registro").id},
    {:action => "Introducir como usuario prueba y contraseña prueba", :expectedResult => "Campos introducidos", :case_id => Case.find_by(title:"Registro").id},
    {:action => "Introducir los demás campos obligatorios", :expectedResult => "Campos introducidos", :case_id => Case.find_by(title:"Registro").id},
    {:action => "Pulsar botón crear usuario", :expectedResult => "Guardado del usuario y visualización del éxito en la aplicación", :case_id => Case.find_by(title:"Registro").id},
    {:action => "Entrar en la aplicación", :expectedResult => "Estamos en la aplicación", :case_id => Case.find_by(title:"Login").id},
    {:action => "Introducir usuario y contraseña: prueba / prueba", :expectedResult => "Campos introducidos", :case_id => Case.find_by(title:"Login").id},
    {:action => "Pulsar botón Iniciar sesión", :expectedResult => "Visualización confirmación del inicio de sesión y redireccion al inicio con el usuario iniciado", :case_id => Case.find_by(title:"Login").id}
                     ])

builds = Build.create([
    {:active => true, :isOpen => true, :name => "Registro y Login v1", :description => "Ejemplo del caso practico para la creacion de un paquete de prueba de Registro y Login", :releaseDate => '10/09/2017', :project_id => Project.find_by(name:"Proyecto Base").id}
                     ])

plans = Plan.create([
    {:active => true, :public => true, :name => "Registro", :description => "Ejemplo del caso practico para la creacion de un plan de prueba de Registro", :build_id => Build.find_by(name:"Registro y Login v1").id},
    {:active => true, :public => true, :name => "Login", :description => "Ejemplo del caso practico para la creacion de un plan de prueba de Login", :build_id => Build.find_by(name:"Registro y Login v1").id}
                    ])

case_plans = CasePlan.create([
    {:case_id => Case.find_by(title:"Registro").id, :plan_id => Plan.find_by(name:"Registro").id, :user_id => User.find_by(surname:"Senior").id, :isExecute => false},
    {:case_id => Case.find_by(title:"Login").id, :plan_id => Plan.find_by(name:"Login").id, :user_id => User.find_by(surname:"Junior").id, :isExecute => false}
                             ])

folders = MessageFolder.create([
                            ])

messages = Message.create([
                          ])

platforms = Platform.create([
                            ])

keywords = Keyword.create([
                            ])