require "sinatra"

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

post '/battles' do
  combatant1 = params[:combatant1]
  combatant2 = params[:combatant2]
  winner = [combatant1, combatant2][rand(2)]
  return "A close battle! #{winner} is triumphant!"
end
