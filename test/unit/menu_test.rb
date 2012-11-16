require 'test_helper'

class MenuTest < ActiveSupport::TestCase
   
   test "generate the link for menu voice" do
     menu_voice = menus(:savoir)
     menu_voice.voice_with_link
     assert_match "home_path", menu_voice.path
   end
   
   test "generate complete menu with paths" do
     menus = Menu.all_with_path
     assert menus.all? { |menu| menu.path == "#{menu.link}_path" }
   end
   
   
end
