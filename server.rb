require "sinatra"
#require "pry"

set :public_folder, './public'

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

post '/battles' do
  combatant1 = params[:combatant1]
  combatant2 = params[:combatant2]
  combatant3 = params[:combatant3]
  combatants= [combatant1, combatant2]
  combatants << combatant3 unless combatant3.nil? || combatant3.empty?
  winner = combatants[rand(combatants.size)]
  return "A close battle! #{winner} is triumphant!"
end
