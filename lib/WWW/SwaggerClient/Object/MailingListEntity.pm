package WWW::SwaggerClient::Object::MailingListEntity;

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
    'email' => 'string',
    'mailing_list_id' => 'int',
    'name' => 'string'
};

my $attribute_map = {
    'email' => 'email',
    'mailing_list_id' => 'mailing_list_id',
    'name' => 'name'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #Email address of the mailing list
        'email' => $args{'email'}, 
        #ID of the mailing list record
        'mailing_list_id' => $args{'mailing_list_id'}, 
        #Name used to identify the mailing list
        'name' => $args{'name'}
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
