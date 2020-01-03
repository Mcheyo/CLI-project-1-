require 'catpix'
require_relative '../config/environment'
# require_relative "../lib/images/Justice_League"


def intro_pics 

    Catpix::print_image "/Users/amiadefreitas/Flatiron/mod1/ruby-project-guidelines-dc-web-120919/lib/images/JL.jpeg",
    :limit_x => 1.0,
    :limit_y => 0,
    :center_x => true,
    :center_y => true,
    :bg => "white",
    :bg_fill => true,
    :resolution => "medium"
end 

def joker_pics
Catpix::print_image "/Users/amiadefreitas/Flatiron/mod1/ruby-project-guidelines-dc-web-120919/lib/images/joker.jpg",
:limit_x => 1.0,
:limit_y => 0,
:center_x => true,
:center_y => true,
:bg => "white",
:bg_fill => true,
:resolution => "auto"
end

def brainiac_pics 
Catpix::print_image "/Users/amiadefreitas/Flatiron/mod1/ruby-project-guidelines-dc-web-120919/lib/images/Brainiac .png",
:limit_x => 1.0,
:limit_y => 0,
:center_x => true,
:center_y => true,
:bg => "white",
:bg_fill => true,
:resolution => "medium"
end
    


def darkseid_pics 
Catpix::print_image "/Users/amiadefreitas/Flatiron/mod1/ruby-project-guidelines-dc-web-120919/lib/images/Darkseid.jpg",
:limit_x => 1.0,
:limit_y => 0,
:center_x => true,
:center_y => true,
:bg => "white",
:bg_fill => true,
:resolution => "medium"
end 

def victory_pic 
    Catpix::print_image"/Users/amiadefreitas/Flatiron/mod1/ruby-project-guidelines-dc-web-120919/lib/images/cookie.jpeg",
    :limit_x => 1.0,
:limit_y => 0,
:center_x => true,
:center_y => true,
:bg => "white",
:bg_fill => true,
:resolution => "medium"
end 

