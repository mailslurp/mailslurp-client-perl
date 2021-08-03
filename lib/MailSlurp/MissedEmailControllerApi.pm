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
package MailSlurp::MissedEmailControllerApi;

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
# get_all_missed_emails
#
# Get all MissedEmails in paginated format
# 
# @param string $inbox_id Optional inbox ID filter (optional)
# @param int $page Optional page index in list pagination (optional, default to 0)
# @param string $search_filter Optional search filter (optional)
# @param int $size Optional page size in list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inbox ID filter',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in list pagination',
        required => '0',
    },
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
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
    __PACKAGE__->method_documentation->{ 'get_all_missed_emails' } = { 
        summary => 'Get all MissedEmails in paginated format',
        params => $params,
        returns => 'PageMissedEmailProjection',
        };
}
# @return PageMissedEmailProjection
#
sub get_all_missed_emails {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/missed-emails';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'search_filter'}) {
        $query_params->{'searchFilter'} = $self->{api_client}->to_query_value($args{'search_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageMissedEmailProjection', $response);
    return $_response_object;
}

#
# get_missed_email
#
# Get MissedEmail
# 
# @param string $missed_email_id missedEmailId (required)
{
    my $params = {
    'missed_email_id' => {
        data_type => 'string',
        description => 'missedEmailId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_missed_email' } = { 
        summary => 'Get MissedEmail',
        params => $params,
        returns => 'MissedEmail',
        };
}
# @return MissedEmail
#
sub get_missed_email {
    my ($self, %args) = @_;

    # verify the required parameter 'missed_email_id' is set
    unless (exists $args{'missed_email_id'}) {
      croak("Missing the required parameter 'missed_email_id' when calling get_missed_email");
    }

    # parse inputs
    my $_resource_path = '/missed-emails/{missedEmailId}';

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
    if ( exists $args{'missed_email_id'}) {
        my $_base_variable = "{" . "missedEmailId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'missed_email_id'});
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
    my $_response_object = $self->{api_client}->deserialize('MissedEmail', $response);
    return $_response_object;
}

#
# wait_for_nth_missed_email
#
# Wait for Nth missed email
# 
# @param string $inbox_id Optional inbox ID filter (optional)
# @param int $index Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 (optional)
# @param int $timeout Optional timeout milliseconds (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inbox ID filter',
        required => '0',
    },
    'index' => {
        data_type => 'int',
        description => 'Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Optional timeout milliseconds',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_nth_missed_email' } = { 
        summary => 'Wait for Nth missed email',
        params => $params,
        returns => 'MissedEmail',
        };
}
# @return MissedEmail
#
sub wait_for_nth_missed_email {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/missed-emails/waitForNthMissedEmail';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'index'}) {
        $query_params->{'index'} = $self->{api_client}->to_query_value($args{'index'});
    }

    # query params
    if ( exists $args{'timeout'}) {
        $query_params->{'timeout'} = $self->{api_client}->to_query_value($args{'timeout'});
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
    my $_response_object = $self->{api_client}->deserialize('MissedEmail', $response);
    return $_response_object;
}

1;
