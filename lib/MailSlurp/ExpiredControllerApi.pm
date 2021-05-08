=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package MailSlurp::ExpiredControllerApi;

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
# get_expiration_defaults
#
# Get default expiration settings
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_expiration_defaults' } = { 
        summary => 'Get default expiration settings',
        params => $params,
        returns => 'ExpirationDefaults',
        };
}
# @return ExpirationDefaults
#
sub get_expiration_defaults {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/expired/defaults';

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
    my $_response_object = $self->{api_client}->deserialize('ExpirationDefaults', $response);
    return $_response_object;
}

#
# get_expired_inbox_by_inbox_id
#
# Get expired inbox record for a previously existing inbox
# 
# @param string $inbox_id ID of inbox you want to retrieve (not the inbox ID) (required)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'ID of inbox you want to retrieve (not the inbox ID)',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_expired_inbox_by_inbox_id' } = { 
        summary => 'Get expired inbox record for a previously existing inbox',
        params => $params,
        returns => 'ExpiredInboxDto',
        };
}
# @return ExpiredInboxDto
#
sub get_expired_inbox_by_inbox_id {
    my ($self, %args) = @_;

    # verify the required parameter 'inbox_id' is set
    unless (exists $args{'inbox_id'}) {
      croak("Missing the required parameter 'inbox_id' when calling get_expired_inbox_by_inbox_id");
    }

    # parse inputs
    my $_resource_path = '/expired/inbox/{inboxId}';

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
    if ( exists $args{'inbox_id'}) {
        my $_base_variable = "{" . "inboxId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'inbox_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ExpiredInboxDto', $response);
    return $_response_object;
}

#
# get_expired_inbox_record
#
# Get an expired inbox record
# 
# @param string $expired_id ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId) (required)
{
    my $params = {
    'expired_id' => {
        data_type => 'string',
        description => 'ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId)',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_expired_inbox_record' } = { 
        summary => 'Get an expired inbox record',
        params => $params,
        returns => 'ExpiredInboxDto',
        };
}
# @return ExpiredInboxDto
#
sub get_expired_inbox_record {
    my ($self, %args) = @_;

    # verify the required parameter 'expired_id' is set
    unless (exists $args{'expired_id'}) {
      croak("Missing the required parameter 'expired_id' when calling get_expired_inbox_record");
    }

    # parse inputs
    my $_resource_path = '/expired/{expiredId}';

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
    if ( exists $args{'expired_id'}) {
        my $_base_variable = "{" . "expiredId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'expired_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ExpiredInboxDto', $response);
    return $_response_object;
}

#
# get_expired_inboxes
#
# List records of expired inboxes
# 
# @param int $page Optional page index in inbox sent email list pagination (optional, default to 0)
# @param int $size Optional page size in inbox sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in inbox sent email list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in inbox sent email list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_expired_inboxes' } = { 
        summary => 'List records of expired inboxes',
        params => $params,
        returns => 'PageExpiredInboxRecordProjection',
        };
}
# @return PageExpiredInboxRecordProjection
#
sub get_expired_inboxes {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/expired';

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
    my $_response_object = $self->{api_client}->deserialize('PageExpiredInboxRecordProjection', $response);
    return $_response_object;
}

1;
