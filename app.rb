
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@talk = "I DROPPED MY FOOD ON THE FLOOR"
	@test = "/start"
	erb :index
end

get '/start' do
	@question = "DID ANYONE SEE YOU?"
	@pass = "/who"
	@fail = "/sticky"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end


get '/who' do
	@question = "WAS IT A BOSS / LOVER / PARENT?"
	@pass = "/expensive"
	@fail = "/eatit"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/expensive' do
	@question = "WAS IT EXPENSIVE?"
	@pass = "/cutoff"
	@fail = "/bacon"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

# get '/expensive' do
# 	@question = "Was it expensive?"
# 	@pass = "/cutoff"
# 	@fail = "/bacon"
# 	@pass_button = "yes"
# 	@fail_button = "no"
# 	erb :start
# end

get '/bacon' do
	@question = "IS IT BACON?"
	@pass = "/eatit"
	@fail = "/donteat"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start	
end


get '/cutoff' do
	@question = "CAN YOU CUT OFF THE PART THAT TOUCHED THE FLOOR?"
	@pass = "/eatit"
	@fail = "/call"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/sticky' do
	@question = "IS IT STICKY?"
	@pass = "/raw"
	@fail = "/butter"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/raw' do
	@question = "IS IT RAW STEAK?"
	@pass = "/puma"
	@fail = "/cat"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/puma' do
	@question = "ARE YOU A PUMA?"
	@pass = "/eatit"
	@fail = "/donteat"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end


get '/cat' do
	@question = "DID THE CAT LICK IT?"
	@pass = "/healthy"
	@fail = "/eatit"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/healthy' do
	@question = "IS YOUR CAT HEALTHY?"
	@pass = "/eatit"
	@fail = "/call"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/butter' do
	@question = "DOES IT HAVE BUTTER?"
	@pass = "/butterlove"
	@fail = "/cat"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end

get '/butterlove' do
	@question = "DO YOU LOVE BUTTER?"
	@pass = "/eatit"
	@fail = "/donteat"
	@pass_button = "yes"
	@fail_button = "no"
	erb :start
end


get '/eatit' do
	@talk = "EAT IT"
	erb :done

end


get '/donteat' do
	@talk = "DO NOT EAT IT"
	erb :done
end

get '/call' do
	@talk = "YOUR CALL"
	erb :done
end	