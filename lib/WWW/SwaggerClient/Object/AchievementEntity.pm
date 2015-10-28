package WWW::SwaggerClient::Object::AchievementEntity;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "WWW::SwaggerClient::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'achievement_id' => 'int',
    'name' => 'string',
    'children' => 'ARRAY[AchievementEntity]',
    'description' => 'string'
};

my $attribute_map = {
    'achievement_id' => 'achievement_id',
    'name' => 'name',
    'children' => 'children',
    'description' => 'description'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #ID of the Achievement Record
        'achievement_id' => $args{'achievement_id'}, 
        #Name of the achievement
        'name' => $args{'name'}, 
        #Array of requirements
        'children' => $args{'children'}, 
        #Detailed description of the achievement
        'description' => $args{'description'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;