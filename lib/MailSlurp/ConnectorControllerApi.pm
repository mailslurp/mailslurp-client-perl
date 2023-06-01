=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package MailSlurp::ConnectorControllerApi;

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
# create_connector
#
# Create an inbox connector
# 
# @param CreateConnectorOptions $create_connector_options  (required)
{
    my $params = {
    'create_connector_options' => {
        data_type => 'CreateConnectorOptions',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_connector' } = { 
        summary => 'Create an inbox connector',
        params => $params,
        returns => 'ConnectorDto',
        };
}
# @return ConnectorDto
#
sub create_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'create_connector_options' is set
    unless (exists $args{'create_connector_options'}) {
      croak("Missing the required parameter 'create_connector_options' when calling create_connector");
    }

    # parse inputs
    my $_resource_path = '/connectors';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'create_connector_options'}) {
        $_body_data = $args{'create_connector_options'};
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorDto', $response);
    return $_response_object;
}

#
# delete_connector
#
# Delete an inbox connector
# 
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_connector' } = { 
        summary => 'Delete an inbox connector',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_connector");
    }

    # parse inputs
    my $_resource_path = '/connectors/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
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
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_all_connector_sync_events
#
# Get all inbox connector sync events
# 
# @param int $page Optional page index in connector list pagination (optional, default to 0)
# @param int $size Optional page size in connector list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in connector list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in connector list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter by created at after the given timestamp',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_all_connector_sync_events' } = { 
        summary => 'Get all inbox connector sync events',
        params => $params,
        returns => 'PageConnectorSyncEvents',
        };
}
# @return PageConnectorSyncEvents
#
sub get_all_connector_sync_events {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/connectors/events';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
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
    my $_response_object = $self->{api_client}->deserialize('PageConnectorSyncEvents', $response);
    return $_response_object;
}

#
# get_connector
#
# Get an inbox connector
# 
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_connector' } = { 
        summary => 'Get an inbox connector',
        params => $params,
        returns => 'ConnectorDto',
        };
}
# @return ConnectorDto
#
sub get_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_connector");
    }

    # parse inputs
    my $_resource_path = '/connectors/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorDto', $response);
    return $_response_object;
}

#
# get_connector_sync_event
#
# Get an inbox connector sync event
# 
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_connector_sync_event' } = { 
        summary => 'Get an inbox connector sync event',
        params => $params,
        returns => 'ConnectorSyncEventDto',
        };
}
# @return ConnectorSyncEventDto
#
sub get_connector_sync_event {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_connector_sync_event");
    }

    # parse inputs
    my $_resource_path = '/connectors/events/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorSyncEventDto', $response);
    return $_response_object;
}

#
# get_connector_sync_events
#
# Get an inbox connector sync events
# 
# @param string $id  (required)
# @param int $page Optional page index in connector list pagination (optional, default to 0)
# @param int $size Optional page size in connector list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in connector list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in connector list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter by created at after the given timestamp',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_connector_sync_events' } = { 
        summary => 'Get an inbox connector sync events',
        params => $params,
        returns => 'PageConnectorSyncEvents',
        };
}
# @return PageConnectorSyncEvents
#
sub get_connector_sync_events {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_connector_sync_events");
    }

    # parse inputs
    my $_resource_path = '/connectors/{id}/events';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
    }

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
    my $_response_object = $self->{api_client}->deserialize('PageConnectorSyncEvents', $response);
    return $_response_object;
}

#
# get_connectors
#
# Get inbox connectors
# 
# @param int $page Optional page index in connector list pagination (optional, default to 0)
# @param int $size Optional page size in connector list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in connector list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in connector list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter by created at after the given timestamp',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_connectors' } = { 
        summary => 'Get inbox connectors',
        params => $params,
        returns => 'PageConnector',
        };
}
# @return PageConnector
#
sub get_connectors {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/connectors';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
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
    my $_response_object = $self->{api_client}->deserialize('PageConnector', $response);
    return $_response_object;
}

#
# sync_connector
#
# Sync an inbox connector
# 
# @param string $id  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sync_connector' } = { 
        summary => 'Sync an inbox connector',
        params => $params,
        returns => 'ConnectorSyncRequestResult',
        };
}
# @return ConnectorSyncRequestResult
#
sub sync_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling sync_connector");
    }

    # parse inputs
    my $_resource_path = '/connectors/{id}/sync';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorSyncRequestResult', $response);
    return $_response_object;
}

#
# update_connector
#
# Update an inbox connector
# 
# @param string $id  (required)
# @param CreateConnectorOptions $create_connector_options  (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'create_connector_options' => {
        data_type => 'CreateConnectorOptions',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_connector' } = { 
        summary => 'Update an inbox connector',
        params => $params,
        returns => 'ConnectorDto',
        };
}
# @return ConnectorDto
#
sub update_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_connector");
    }

    # verify the required parameter 'create_connector_options' is set
    unless (exists $args{'create_connector_options'}) {
      croak("Missing the required parameter 'create_connector_options' when calling update_connector");
    }

    # parse inputs
    my $_resource_path = '/connectors/{id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'create_connector_options'}) {
        $_body_data = $args{'create_connector_options'};
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorDto', $response);
    return $_response_object;
}

1;