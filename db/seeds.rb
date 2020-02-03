# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.destroy_all

Todo.create(
    completed: true,
    description: 'Instalar versión de ruby'
)

Todo.create(
    completed: true,
    description: 'Instalar versión de rails'
)

Todo.create(
    completed: true,
    description: 'Settear un gemset'
)

Todo.create(
    completed: true,
    description: 'Crear nuevo proyecto'
)

Todo.create(
    completed: true,
    description: 'Generar el modelo'
)

Todo.create(
    completed: true,
    description: 'Ejecutar la migración'
)

Todo.create(
    completed: false,
    description: 'Crear rutas'
)

Todo.create(
    completed: false,
    description: 'Crear vista'
)

Todo.create(
    completed: false,
    description: 'Generar controlador'
)

Todo.create(
    completed: false,
    description: 'Generar modelo'
)