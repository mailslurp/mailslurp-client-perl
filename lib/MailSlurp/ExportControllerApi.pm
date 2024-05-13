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
package MailSlurp::ExportControllerApi;

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
# export_entities
#
# Export inboxes link callable via browser
# 
# @param string $export_type  (required)
# @param string $api_key  (required)
# @param string $output_format  (required)
# @param string $filter  (optional)
# @param string $list_separator_token  (optional)
# @param boolean $exclude_previously_exported  (optional)
# @param DateTime $created_earliest_time  (optional)
# @param DateTime $created_oldest_time  (optional)
{
    my $params = {
    'export_type' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'api_key' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'output_format' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'filter' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'list_separator_token' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'exclude_previously_exported' => {
        data_type => 'boolean',
        description => '',
        required => '0',
    },
    'created_earliest_time' => {
        data_type => 'DateTime',
        description => '',
        required => '0',
    },
    'created_oldest_time' => {
        data_type => 'DateTime',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'export_entities' } = { 
        summary => 'Export inboxes link callable via browser',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub export_entities {
    my ($self, %args) = @_;

    # verify the required parameter 'export_type' is set
    unless (exists $args{'export_type'}) {
      croak("Missing the required parameter 'export_type' when calling export_entities");
    }

    # verify the required parameter 'api_key' is set
    unless (exists $args{'api_key'}) {
      croak("Missing the required parameter 'api_key' when calling export_entities");
    }

    # verify the required parameter 'output_format' is set
    unless (exists $args{'output_format'}) {
      croak("Missing the required parameter 'output_format' when calling export_entities");
    }

    # parse inputs
    my $_resource_path = '/export';

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
    if ( exists $args{'export_type'}) {
        $query_params->{'exportType'} = $self->{api_client}->to_query_value($args{'export_type'});
    }

    # query params
    if ( exists $args{'api_key'}) {
        $query_params->{'apiKey'} = $self->{api_client}->to_query_value($args{'api_key'});
    }

    # query params
    if ( exists $args{'output_format'}) {
        $query_params->{'outputFormat'} = $self->{api_client}->to_query_value($args{'output_format'});
    }

    # query params
    if ( exists $args{'filter'}) {
        $query_params->{'filter'} = $self->{api_client}->to_query_value($args{'filter'});
    }

    # query params
    if ( exists $args{'list_separator_token'}) {
        $query_params->{'listSeparatorToken'} = $self->{api_client}->to_query_value($args{'list_separator_token'});
    }

    # query params
    if ( exists $args{'exclude_previously_exported'}) {
        $query_params->{'excludePreviouslyExported'} = $self->{api_client}->to_query_value($args{'exclude_previously_exported'});
    }

    # query params
    if ( exists $args{'created_earliest_time'}) {
        $query_params->{'createdEarliestTime'} = $self->{api_client}->to_query_value($args{'created_earliest_time'});
    }

    # query params
    if ( exists $args{'created_oldest_time'}) {
        $query_params->{'createdOldestTime'} = $self->{api_client}->to_query_value($args{'created_oldest_time'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# get_export_link
#
# Get export link
# 
# @param string $export_type  (required)
# @param ExportOptions $export_options  (required)
# @param string $api_key  (optional)
{
    my $params = {
    'export_type' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'export_options' => {
        data_type => 'ExportOptions',
        description => '',
        required => '1',
    },
    'api_key' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_export_link' } = { 
        summary => 'Get export link',
        params => $params,
        returns => 'ExportLink',
        };
}
# @return ExportLink
#
sub get_export_link {
    my ($self, %args) = @_;

    # verify the required parameter 'export_type' is set
    unless (exists $args{'export_type'}) {
      croak("Missing the required parameter 'export_type' when calling get_export_link");
    }

    # verify the required parameter 'export_options' is set
    unless (exists $args{'export_options'}) {
      croak("Missing the required parameter 'export_options' when calling get_export_link");
    }

    # parse inputs
    my $_resource_path = '/export';

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

    # query params
    if ( exists $args{'export_type'}) {
        $query_params->{'exportType'} = $self->{api_client}->to_query_value($args{'export_type'});
    }

    # query params
    if ( exists $args{'api_key'}) {
        $query_params->{'apiKey'} = $self->{api_client}->to_query_value($args{'api_key'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'export_options'}) {
        $_body_data = $args{'export_options'};
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
    my $_response_object = $self->{api_client}->deserialize('ExportLink', $response);
    return $_response_object;
}

1;
