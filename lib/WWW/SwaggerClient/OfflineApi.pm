#
# Copyright 2015 SmartBear Software
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::OfflineApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

sub new {
    my $class   = shift;
    my $default_api_client = $WWW::SwaggerClient::Configuration::api_client ? $WWW::SwaggerClient::Configuration::api_client  : WWW::SwaggerClient::ApiClient->new;
    my (%self) = (
        'api_client' => $default_api_client,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}

#
# g_et_version_offline
#
# Returns all troop data for cacheing prior to going offline
# 
# @param string $x_partner_token Your secret partner token (required)
# @param string $x_user_token The token you recieved when you authenticated the user (required)
# @param string $troop_id  (required)
# @return string
#
sub g_et_version_offline {
    my ($self, %args) = @_;

    
    # verify the required parameter 'x_partner_token' is set
    unless (exists $args{'x_partner_token'}) {
      croak("Missing the required parameter 'x_partner_token' when calling g_et_version_offline");
    }
    
    # verify the required parameter 'x_user_token' is set
    unless (exists $args{'x_user_token'}) {
      croak("Missing the required parameter 'x_user_token' when calling g_et_version_offline");
    }
    
    # verify the required parameter 'troop_id' is set
    unless (exists $args{'troop_id'}) {
      croak("Missing the required parameter 'troop_id' when calling g_et_version_offline");
    }
    

    # parse inputs
    my $_resource_path = '/v1/offline';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/xml', 'application/json', 'application/octet-stream', 'text/plain');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'troop_id'}) {
        $query_params->{'troop_id'} = $self->{api_client}->to_query_value($args{'troop_id'});
    }
    # header params
    if ( exists $args{'x_partner_token'}) {
        $header_params->{'X-Partner-Token'} = $self->{api_client}->to_header_value($args{'x_partner_token'});
    }# header params
    if ( exists $args{'x_user_token'}) {
        $header_params->{'X-User-Token'} = $self->{api_client}->to_header_value($args{'x_user_token'});
    }
    
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
    
}


1;
