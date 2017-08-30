# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'davidrm901503@gmail.com', username: 'david',first_name:'David',last_name:'Roman', password: '123456', password_confirmation:'123456', permission_level: 1)
User.create(email: 'yoidel86@gmail.com', username: 'yoidel86',first_name:'Yoidel',last_name:'Martinez', password: '123456', password_confirmation:'123456', permission_level: 3)
User.create(email: 'admin@gmail.com', username: 'admin',first_name:'System',last_name:'Admin', password: '123456', password_confirmation:'123456', permission_level: 3)
User.create(email: 'colaborador@gmail.com', username: 'colaborador',first_name:'Colaborador',last_name:'Ejemplo', password: '123456', password_confirmation:'123456', permission_level: 1)

#estado posible de las tareas (estos deben ser todos)
Estado.create(estado:"Creada")
Estado.create(estado:"Asignada")
Estado.create(estado:"Iniciada")
Estado.create(estado:"Terminada")

#categorias
Categoria.create(nombre:"Desarrollo web");
Categoria.create(nombre:"Ventas");
# EJEMPLO DE PROYECTOS
Proyecto.create(nombre:"Agora",urlgithub:"https://github.com/maxantonio/agora",user_id:3)
Proyecto.create(nombre:"Ford",urlgithub:"",user_id:3)
Proyecto.create(nombre:"Kasa",urlgithub:"",user_id:3)
Proyecto.create(nombre:"Apple",urlgithub:"",user_id:3)