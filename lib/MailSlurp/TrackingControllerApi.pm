=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package MailSlurp::TrackingControllerApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use MailSlurp::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'MailSlurp::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = MailSlurp::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_tracking_pixel
#
# Create tracking pixel
# 
# @param CreateTrackingPixelOptions $create_tracking_pixel_options createTrackingPixelOptions (required)
{
    my $params = {
    'create_tracking_pixel_options' => {
        data_type => 'CreateTrackingPixelOptions',
        description => 'createTrackingPixelOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tracking_pixel' } = { 
        summary => 'Create tracking pixel',
        params => $params,
        returns => 'TrackingPixelDto',
        };
}
# @return TrackingPixelDto
#
sub create_tracking_pixel {
    my ($self, %args) = @_;

    # verify the required parameter 'create_tracking_pixel_options' is set
    unless (exists $args{'create_tracking_pixel_options'}) {
      croak("Missing the required parameter 'create_tracking_pixel_options' when calling create_tracking_pixel");
    }

    # parse inputs
    my $_resource_path = '/tracking/pixels';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'create_tracking_pixel_options'}) {
        $_body_data = $args{'create_tracking_pixel_options'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API_KEY )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TrackingPixelDto', $response);
    return $_response_object;
}

#
# get_all_tracking_pixels
#
# Get tracking pixels
# 
# @param int $page Optional page index in list pagination (optional, default to 0)
# @param int $size Optional page size in list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_all_tracking_pixels' } = { 
        summary => 'Get tracking pixels',
        params => $params,
        returns => 'PageTrackingPixelProjection',
        };
}
# @return PageTrackingPixelProjection
#
sub get_all_tracking_pixels {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tracking/pixels';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API_KEY )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageTrackingPixelProjection', $response);
    return $_response_object;
}

#
# get_tracking_pixel
#
# Get pixel
# 
# @param string $id id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tracking_pixel' } = { 
        summary => 'Get pixel',
        params => $params,
        returns => 'TrackingPixelDto',
        };
}
# @return TrackingPixelDto
#
sub get_tracking_pixel {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_tracking_pixel");
    }

    # parse inputs
    my $_resource_path = '/tracking/pixels/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API_KEY )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('TrackingPixelDto', $response);
    return $_response_object;
}

1;
