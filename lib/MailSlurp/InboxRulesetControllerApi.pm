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
package MailSlurp::InboxRulesetControllerApi;

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
# create_new_inbox_ruleset
#
# Create an inbox ruleset
# 
# @param CreateInboxRulesetOptions $create_inbox_ruleset_options createInboxRulesetOptions (required)
# @param string $inbox_id Inbox id to attach ruleset to (optional)
{
    my $params = {
    'create_inbox_ruleset_options' => {
        data_type => 'CreateInboxRulesetOptions',
        description => 'createInboxRulesetOptions',
        required => '1',
    },
    'inbox_id' => {
        data_type => 'string',
        description => 'Inbox id to attach ruleset to',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_new_inbox_ruleset' } = { 
        summary => 'Create an inbox ruleset',
        params => $params,
        returns => 'InboxRulesetDto',
        };
}
# @return InboxRulesetDto
#
sub create_new_inbox_ruleset {
    my ($self, %args) = @_;

    # verify the required parameter 'create_inbox_ruleset_options' is set
    unless (exists $args{'create_inbox_ruleset_options'}) {
      croak("Missing the required parameter 'create_inbox_ruleset_options' when calling create_new_inbox_ruleset");
    }

    # parse inputs
    my $_resource_path = '/rulesets';

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

    # query params
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'create_inbox_ruleset_options'}) {
        $_body_data = $args{'create_inbox_ruleset_options'};
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
    my $_response_object = $self->{api_client}->deserialize('InboxRulesetDto', $response);
    return $_response_object;
}

#
# delete_inbox_ruleset
#
# Delete an inbox ruleset
# 
# @param string $id ID of inbox ruleset (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'ID of inbox ruleset',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_inbox_ruleset' } = { 
        summary => 'Delete an inbox ruleset',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_inbox_ruleset {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_inbox_ruleset");
    }

    # parse inputs
    my $_resource_path = '/rulesets/{id}';

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
# delete_inbox_rulesets
#
# Delete inbox rulesets
# 
# @param string $inbox_id Optional inbox id to attach ruleset to (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inbox id to attach ruleset to',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_inbox_rulesets' } = { 
        summary => 'Delete inbox rulesets',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_inbox_rulesets {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/rulesets';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
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
# get_inbox_ruleset
#
# Get an inbox ruleset
# 
# @param string $id ID of inbox ruleset (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'ID of inbox ruleset',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_inbox_ruleset' } = { 
        summary => 'Get an inbox ruleset',
        params => $params,
        returns => 'InboxRulesetDto',
        };
}
# @return InboxRulesetDto
#
sub get_inbox_ruleset {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_inbox_ruleset");
    }

    # parse inputs
    my $_resource_path = '/rulesets/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('InboxRulesetDto', $response);
    return $_response_object;
}

#
# get_inbox_rulesets
#
# List inbox rulesets
# 
# @param DateTime $before Filter by created at before the given timestamp (optional)
# @param string $inbox_id Optional inbox id to get rulesets from (optional)
# @param int $page Optional page index in inbox ruleset list pagination (optional, default to 0)
# @param string $search_filter Optional search filter (optional)
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param int $size Optional page size in inbox ruleset list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inbox id to get rulesets from',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in inbox ruleset list pagination',
        required => '0',
    },
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter by created at after the given timestamp',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in inbox ruleset list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_inbox_rulesets' } = { 
        summary => 'List inbox rulesets',
        params => $params,
        returns => 'PageInboxRulesetDto',
        };
}
# @return PageInboxRulesetDto
#
sub get_inbox_rulesets {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/rulesets';

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
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
    }

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
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
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
    my $_response_object = $self->{api_client}->deserialize('PageInboxRulesetDto', $response);
    return $_response_object;
}

#
# test_inbox_ruleset
#
# Test an inbox ruleset
# 
# @param string $id ID of inbox ruleset (required)
# @param InboxRulesetTestOptions $inbox_ruleset_test_options inboxRulesetTestOptions (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'ID of inbox ruleset',
        required => '1',
    },
    'inbox_ruleset_test_options' => {
        data_type => 'InboxRulesetTestOptions',
        description => 'inboxRulesetTestOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'test_inbox_ruleset' } = { 
        summary => 'Test an inbox ruleset',
        params => $params,
        returns => 'InboxRulesetTestResult',
        };
}
# @return InboxRulesetTestResult
#
sub test_inbox_ruleset {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling test_inbox_ruleset");
    }

    # verify the required parameter 'inbox_ruleset_test_options' is set
    unless (exists $args{'inbox_ruleset_test_options'}) {
      croak("Missing the required parameter 'inbox_ruleset_test_options' when calling test_inbox_ruleset");
    }

    # parse inputs
    my $_resource_path = '/rulesets/{id}/test';

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

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'inbox_ruleset_test_options'}) {
        $_body_data = $args{'inbox_ruleset_test_options'};
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
    my $_response_object = $self->{api_client}->deserialize('InboxRulesetTestResult', $response);
    return $_response_object;
}

#
# test_inbox_rulesets_for_inbox
#
# Test inbox rulesets for inbox
# 
# @param string $inbox_id ID of inbox (required)
# @param InboxRulesetTestOptions $inbox_ruleset_test_options inboxRulesetTestOptions (required)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'ID of inbox',
        required => '1',
    },
    'inbox_ruleset_test_options' => {
        data_type => 'InboxRulesetTestOptions',
        description => 'inboxRulesetTestOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'test_inbox_rulesets_for_inbox' } = { 
        summary => 'Test inbox rulesets for inbox',
        params => $params,
        returns => 'InboxRulesetTestResult',
        };
}
# @return InboxRulesetTestResult
#
sub test_inbox_rulesets_for_inbox {
    my ($self, %args) = @_;

    # verify the required parameter 'inbox_id' is set
    unless (exists $args{'inbox_id'}) {
      croak("Missing the required parameter 'inbox_id' when calling test_inbox_rulesets_for_inbox");
    }

    # verify the required parameter 'inbox_ruleset_test_options' is set
    unless (exists $args{'inbox_ruleset_test_options'}) {
      croak("Missing the required parameter 'inbox_ruleset_test_options' when calling test_inbox_rulesets_for_inbox");
    }

    # parse inputs
    my $_resource_path = '/rulesets';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'inbox_ruleset_test_options'}) {
        $_body_data = $args{'inbox_ruleset_test_options'};
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
    my $_response_object = $self->{api_client}->deserialize('InboxRulesetTestResult', $response);
    return $_response_object;
}

#
# test_new_inbox_ruleset
#
# Test new inbox ruleset
# 
# @param TestNewInboxRulesetOptions $test_new_inbox_ruleset_options testNewInboxRulesetOptions (required)
{
    my $params = {
    'test_new_inbox_ruleset_options' => {
        data_type => 'TestNewInboxRulesetOptions',
        description => 'testNewInboxRulesetOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'test_new_inbox_ruleset' } = { 
        summary => 'Test new inbox ruleset',
        params => $params,
        returns => 'InboxRulesetTestResult',
        };
}
# @return InboxRulesetTestResult
#
sub test_new_inbox_ruleset {
    my ($self, %args) = @_;

    # verify the required parameter 'test_new_inbox_ruleset_options' is set
    unless (exists $args{'test_new_inbox_ruleset_options'}) {
      croak("Missing the required parameter 'test_new_inbox_ruleset_options' when calling test_new_inbox_ruleset");
    }

    # parse inputs
    my $_resource_path = '/rulesets';

    my $_method = 'PATCH';
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
    if ( exists $args{'test_new_inbox_ruleset_options'}) {
        $_body_data = $args{'test_new_inbox_ruleset_options'};
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
    my $_response_object = $self->{api_client}->deserialize('InboxRulesetTestResult', $response);
    return $_response_object;
}

1;
