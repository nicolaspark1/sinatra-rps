require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:rules)
end

get("/rock") do
  player = "rock"
  computer_choices = ["rock", "paper", "scissors"]
  computer = computer_choices.sample

  if computer == "rock"
    result = "We played #{player}! \n They played #{computer}! \n We tied!"  
  end
  if computer == "paper"
    result = "We played #{player}! \n They played #{computer}! \n We lost!"  
  end
  if computer == "scissors"
    result = "We played #{player}! \n They played #{computer}! \n We won!"  
  end

  @outcome = result

  erb(:rock)
end

get("/paper") do
  player = "paper"
  computer_choices = ["rock", "paper", "scissors"]
  computer = computer_choices.sample

  if computer == "paper"
    result = "We played #{player}! \n They played #{computer}! \n We tied!"  
  end
  if computer == "scissors"
    result = "We played #{player}! \n They played #{computer}! \n We lost!"  
  end
  if computer == "rock"
    result = "We played #{player}! \n They played #{computer}! \n We won!"  
  end

  @outcome = result

  erb(:paper)
end

get("/scissors") do
  player = "scissors"
  computer_choices = ["rock", "paper", "scissors"]
  computer = computer_choices.sample

  if computer == "scissors"
    result = "We played #{player}! \n They played #{computer}! \n We tied!"  
  end
  if computer == "rock"
    result = "We played #{player}! \n They played #{computer}! \n We lost!"  
  end
  if computer == "paper"
    result = "We played #{player}! \n They played #{computer}! \n We won!"  
  end
  @outcome = result

  erb(:scissors)
end
