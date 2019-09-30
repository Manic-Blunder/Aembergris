# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lodge.create name: 'Aember Lodge'

House.create name: :brobnar, icon_link: 'https://cdn.keyforgegame.com/media/houses/Brobnar_RTivg44.png'
House.create name: :dis, icon_link: 'https://cdn.keyforgegame.com/media/houses/Dis_OooSNPO.png'
House.create name: :logos, icon_link: 'https://cdn.keyforgegame.com/media/houses/Logos_2mOY1dH.png'
House.create name: :mars, icon_link: 'https://cdn.keyforgegame.com/media/houses/Mars_CmAUCXI.png'
House.create name: :sanctum, icon_link: 'https://cdn.keyforgegame.com/media/houses/Sanctum_lUWPG7x.png'
House.create name: :shadows, icon_link: 'https://cdn.keyforgegame.com/media/houses/Shadows_z0n69GG.png'
House.create name: :untamed, icon_link: 'https://cdn.keyforgegame.com/media/houses/Untamed_bXh9SJD.png'

User.create! email: 'thegnerg@gmail.com', password: 'alan', password_confirmation: 'alan'
User.create! email: 'geisslecar@gmail.com', password: 'clyde', password_confirmation: 'clyde'
User.create! email: 'pestrelig@gmail.com', password: 'kathryn', password_confirmation: 'kathryn'
User.create! email: 'warnerj999@gmail.com', password: 'mathew', password_confirmation: 'mathew'

# curl -H "Content-Type: application/json" -X POST -d '{"email":"thegnerg@gmail.com","password":"alan"}' http://localhost:3000/authenticate
