require 'test_helper'

class NewsTest < ActiveSupport::TestCase
   
  test "filtra ultime due notizie" do
     news = News.prima_pagina
     assert news.size == 2, "il numero non e congruo"
   end
   
end
