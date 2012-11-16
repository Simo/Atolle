class HomeController < ApplicationController

def index
  @accordion = Accordion.all
  @news = News.prima_pagina
end

end
