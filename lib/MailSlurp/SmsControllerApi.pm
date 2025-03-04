=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

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
package MailSlurp::SmsControllerApi;

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
# delete_sent_sms_message
#
# Delete sent SMS message.
# 
# @param string $sent_sms_id  (required)
{
    my $params = {
    'sent_sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_sent_sms_message' } = { 
        summary => 'Delete sent SMS message.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_sent_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sent_sms_id' is set
    unless (exists $args{'sent_sms_id'}) {
      croak("Missing the required parameter 'sent_sms_id' when calling delete_sent_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/sent/{sentSmsId}';

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
    if ( exists $args{'sent_sms_id'}) {
        my $_base_variable = "{" . "sentSmsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sent_sms_id'});
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
# delete_sent_sms_messages
#
# Delete all sent SMS messages
# 
# @param string $phone_number_id  (optional)
{
    my $params = {
    'phone_number_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_sent_sms_messages' } = { 
        summary => 'Delete all sent SMS messages',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_sent_sms_messages {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/sent';

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

    # query params
    if ( exists $args{'phone_number_id'}) {
        $query_params->{'phoneNumberId'} = $self->{api_client}->to_query_value($args{'phone_number_id'});
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
# delete_sms_message
#
# Delete SMS message.
# 
# @param string $sms_id  (required)
{
    my $params = {
    'sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_sms_message' } = { 
        summary => 'Delete SMS message.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_id' is set
    unless (exists $args{'sms_id'}) {
      croak("Missing the required parameter 'sms_id' when calling delete_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/{smsId}';

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
    if ( exists $args{'sms_id'}) {
        my $_base_variable = "{" . "smsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sms_id'});
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
# delete_sms_messages
#
# Delete all SMS messages
# 
# @param string $phone_number_id  (optional)
{
    my $params = {
    'phone_number_id' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_sms_messages' } = { 
        summary => 'Delete all SMS messages',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_sms_messages {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms';

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

    # query params
    if ( exists $args{'phone_number_id'}) {
        $query_params->{'phoneNumberId'} = $self->{api_client}->to_query_value($args{'phone_number_id'});
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
# get_all_sms_messages
#
# 
# 
# @param string $phone_number Optional receiving phone number to filter SMS messages for (optional)
# @param int $page Optional page index in SMS list pagination (optional, default to 0)
# @param int $size Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Optional filter SMSs received after given date time (optional)
# @param DateTime $before Optional filter SMSs received before given date time (optional)
# @param string $search Optional search filter (optional)
# @param boolean $favourite Optionally filter results for favourites only (optional, default to false)
{
    my $params = {
    'phone_number' => {
        data_type => 'string',
        description => 'Optional receiving phone number to filter SMS messages for',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in SMS list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Optional filter SMSs received after given date time',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Optional filter SMSs received before given date time',
        required => '0',
    },
    'search' => {
        data_type => 'string',
        description => 'Optional search filter',
        required => '0',
    },
    'favourite' => {
        data_type => 'boolean',
        description => 'Optionally filter results for favourites only',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_all_sms_messages' } = { 
        summary => '',
        params => $params,
        returns => 'PageSmsProjection',
        };
}
# @return PageSmsProjection
#
sub get_all_sms_messages {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms';

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
    if ( exists $args{'phone_number'}) {
        $query_params->{'phoneNumber'} = $self->{api_client}->to_query_value($args{'phone_number'});
    }

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

    # query params
    if ( exists $args{'search'}) {
        $query_params->{'search'} = $self->{api_client}->to_query_value($args{'search'});
    }

    # query params
    if ( exists $args{'favourite'}) {
        $query_params->{'favourite'} = $self->{api_client}->to_query_value($args{'favourite'});
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
    my $_response_object = $self->{api_client}->deserialize('PageSmsProjection', $response);
    return $_response_object;
}

#
# get_reply_for_sms_message
#
# Get reply for an SMS message
# 
# @param string $sms_id  (required)
{
    my $params = {
    'sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_reply_for_sms_message' } = { 
        summary => 'Get reply for an SMS message',
        params => $params,
        returns => 'ReplyForSms',
        };
}
# @return ReplyForSms
#
sub get_reply_for_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_id' is set
    unless (exists $args{'sms_id'}) {
      croak("Missing the required parameter 'sms_id' when calling get_reply_for_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/{smsId}/reply';

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
    if ( exists $args{'sms_id'}) {
        my $_base_variable = "{" . "smsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sms_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ReplyForSms', $response);
    return $_response_object;
}

#
# get_sent_sms_count
#
# Get sent SMS count
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_sent_sms_count' } = { 
        summary => 'Get sent SMS count',
        params => $params,
        returns => 'CountDto',
        };
}
# @return CountDto
#
sub get_sent_sms_count {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/sent/count';

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
    my $_response_object = $self->{api_client}->deserialize('CountDto', $response);
    return $_response_object;
}

#
# get_sent_sms_message
#
# Get sent SMS content including body. Expects sent SMS to exist by ID.
# 
# @param string $sent_sms_id  (required)
{
    my $params = {
    'sent_sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sent_sms_message' } = { 
        summary => 'Get sent SMS content including body. Expects sent SMS to exist by ID.',
        params => $params,
        returns => 'SentSmsDto',
        };
}
# @return SentSmsDto
#
sub get_sent_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sent_sms_id' is set
    unless (exists $args{'sent_sms_id'}) {
      croak("Missing the required parameter 'sent_sms_id' when calling get_sent_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/sent/{sentSmsId}';

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
    if ( exists $args{'sent_sms_id'}) {
        my $_base_variable = "{" . "sentSmsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sent_sms_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SentSmsDto', $response);
    return $_response_object;
}

#
# get_sent_sms_messages_paginated
#
# Get all SMS messages in all phone numbers in paginated form. .
# 
# @param string $phone_number Optional phone number to filter sent SMS messages for (optional)
# @param int $page Optional page index in SMS list pagination (optional, default to 0)
# @param int $size Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Optional filter SMSs received after given date time (optional)
# @param DateTime $before Optional filter SMSs received before given date time (optional)
# @param string $search Optional search filter (optional)
{
    my $params = {
    'phone_number' => {
        data_type => 'string',
        description => 'Optional phone number to filter sent SMS messages for',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in SMS list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Optional filter SMSs received after given date time',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Optional filter SMSs received before given date time',
        required => '0',
    },
    'search' => {
        data_type => 'string',
        description => 'Optional search filter',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sent_sms_messages_paginated' } = { 
        summary => 'Get all SMS messages in all phone numbers in paginated form. .',
        params => $params,
        returns => 'PageSentSmsProjection',
        };
}
# @return PageSentSmsProjection
#
sub get_sent_sms_messages_paginated {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/sent';

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
    if ( exists $args{'phone_number'}) {
        $query_params->{'phoneNumber'} = $self->{api_client}->to_query_value($args{'phone_number'});
    }

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

    # query params
    if ( exists $args{'search'}) {
        $query_params->{'search'} = $self->{api_client}->to_query_value($args{'search'});
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
    my $_response_object = $self->{api_client}->deserialize('PageSentSmsProjection', $response);
    return $_response_object;
}

#
# get_sms_count
#
# Get SMS count
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_sms_count' } = { 
        summary => 'Get SMS count',
        params => $params,
        returns => 'CountDto',
        };
}
# @return CountDto
#
sub get_sms_count {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/count';

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
    my $_response_object = $self->{api_client}->deserialize('CountDto', $response);
    return $_response_object;
}

#
# get_sms_message
#
# Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
# 
# @param string $sms_id  (required)
{
    my $params = {
    'sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sms_message' } = { 
        summary => 'Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.',
        params => $params,
        returns => 'SmsDto',
        };
}
# @return SmsDto
#
sub get_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_id' is set
    unless (exists $args{'sms_id'}) {
      croak("Missing the required parameter 'sms_id' when calling get_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/{smsId}';

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
    if ( exists $args{'sms_id'}) {
        my $_base_variable = "{" . "smsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sms_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SmsDto', $response);
    return $_response_object;
}

#
# get_unread_sms_count
#
# Get unread SMS count
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_unread_sms_count' } = { 
        summary => 'Get unread SMS count',
        params => $params,
        returns => 'UnreadCount',
        };
}
# @return UnreadCount
#
sub get_unread_sms_count {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/unreadCount';

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
    my $_response_object = $self->{api_client}->deserialize('UnreadCount', $response);
    return $_response_object;
}

#
# reply_to_sms_message
#
# Send a reply to a received SMS message. Replies are sent from the receiving number.
# 
# @param string $sms_id  (required)
# @param SmsReplyOptions $sms_reply_options  (required)
{
    my $params = {
    'sms_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'sms_reply_options' => {
        data_type => 'SmsReplyOptions',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'reply_to_sms_message' } = { 
        summary => 'Send a reply to a received SMS message. Replies are sent from the receiving number.',
        params => $params,
        returns => 'SentSmsDto',
        };
}
# @return SentSmsDto
#
sub reply_to_sms_message {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_id' is set
    unless (exists $args{'sms_id'}) {
      croak("Missing the required parameter 'sms_id' when calling reply_to_sms_message");
    }

    # verify the required parameter 'sms_reply_options' is set
    unless (exists $args{'sms_reply_options'}) {
      croak("Missing the required parameter 'sms_reply_options' when calling reply_to_sms_message");
    }

    # parse inputs
    my $_resource_path = '/sms/{smsId}/reply';

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

    # path params
    if ( exists $args{'sms_id'}) {
        my $_base_variable = "{" . "smsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sms_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'sms_reply_options'}) {
        $_body_data = $args{'sms_reply_options'};
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
    my $_response_object = $self->{api_client}->deserialize('SentSmsDto', $response);
    return $_response_object;
}

#
# send_sms
#
# 
# 
# @param SmsSendOptions $sms_send_options  (required)
# @param string $from_phone_number Phone number to send from in E.164 format (optional)
# @param string $from_phone_id Phone number ID to send from in UUID form (optional)
{
    my $params = {
    'sms_send_options' => {
        data_type => 'SmsSendOptions',
        description => '',
        required => '1',
    },
    'from_phone_number' => {
        data_type => 'string',
        description => 'Phone number to send from in E.164 format',
        required => '0',
    },
    'from_phone_id' => {
        data_type => 'string',
        description => 'Phone number ID to send from in UUID form',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_sms' } = { 
        summary => '',
        params => $params,
        returns => 'SentSmsDto',
        };
}
# @return SentSmsDto
#
sub send_sms {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_send_options' is set
    unless (exists $args{'sms_send_options'}) {
      croak("Missing the required parameter 'sms_send_options' when calling send_sms");
    }

    # parse inputs
    my $_resource_path = '/sms/send';

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
    if ( exists $args{'from_phone_number'}) {
        $query_params->{'fromPhoneNumber'} = $self->{api_client}->to_query_value($args{'from_phone_number'});
    }

    # query params
    if ( exists $args{'from_phone_id'}) {
        $query_params->{'fromPhoneId'} = $self->{api_client}->to_query_value($args{'from_phone_id'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'sms_send_options'}) {
        $_body_data = $args{'sms_send_options'};
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
    my $_response_object = $self->{api_client}->deserialize('SentSmsDto', $response);
    return $_response_object;
}

#
# set_sms_favourited
#
# 
# 
# @param string $sms_id ID of SMS to set favourite state (required)
# @param boolean $favourited  (required)
{
    my $params = {
    'sms_id' => {
        data_type => 'string',
        description => 'ID of SMS to set favourite state',
        required => '1',
    },
    'favourited' => {
        data_type => 'boolean',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_sms_favourited' } = { 
        summary => '',
        params => $params,
        returns => 'SmsDto',
        };
}
# @return SmsDto
#
sub set_sms_favourited {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_id' is set
    unless (exists $args{'sms_id'}) {
      croak("Missing the required parameter 'sms_id' when calling set_sms_favourited");
    }

    # verify the required parameter 'favourited' is set
    unless (exists $args{'favourited'}) {
      croak("Missing the required parameter 'favourited' when calling set_sms_favourited");
    }

    # parse inputs
    my $_resource_path = '/sms/{smsId}/favourite';

    my $_method = 'PUT';
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
    if ( exists $args{'favourited'}) {
        $query_params->{'favourited'} = $self->{api_client}->to_query_value($args{'favourited'});
    }

    # path params
    if ( exists $args{'sms_id'}) {
        my $_base_variable = "{" . "smsId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'sms_id'});
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
    my $_response_object = $self->{api_client}->deserialize('SmsDto', $response);
    return $_response_object;
}

1;
