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
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We tied!"  
  end
  if computer == "paper"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We lost!"  
  end
  if computer == "scissors"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We won!"  
  end

  @outcome1 = result1
  @outcome2 = result2
  @outcome3 = result3

  erb(:rock)
end

get("/paper") do
  player = "paper"
  computer_choices = ["rock", "paper", "scissors"]
  computer = computer_choices.sample

  if computer == "paper"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We tied!"  
  end
  if computer == "scissors"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We lost!"  
  end
  if computer == "rock"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We won!"  
  end

  @outcome1 = result1
  @outcome2 = result2
  @outcome3 = result3

  erb(:paper)
end

get("/scissors") do
  player = "scissors"
  computer_choices = ["rock", "paper", "scissors"]
  computer = computer_choices.sample

  if computer == "scissors"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We tied!"
  end
  if computer == "rock"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We lost!"  
  end
  if computer == "paper"
    result1 = "We played #{player}!"
    result2 = "They played #{computer}!"
    result3 = "We won!"  
  end
  @outcome1 = result1
  @outcome2 = result2
  @outcome3 = result3

  erb(:scissors)
end
