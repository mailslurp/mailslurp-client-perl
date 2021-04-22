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
package MailSlurp::AliasControllerApi;

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
# create_alias
#
# Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
# 
# @param CreateAliasOptions $create_alias_options createAliasOptions (required)
{
    my $params = {
    'create_alias_options' => {
        data_type => 'CreateAliasOptions',
        description => 'createAliasOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_alias' } = { 
        summary => 'Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.',
        params => $params,
        returns => 'AliasDto',
        };
}
# @return AliasDto
#
sub create_alias {
    my ($self, %args) = @_;

    # verify the required parameter 'create_alias_options' is set
    unless (exists $args{'create_alias_options'}) {
      croak("Missing the required parameter 'create_alias_options' when calling create_alias");
    }

    # parse inputs
    my $_resource_path = '/aliases';

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
    if ( exists $args{'create_alias_options'}) {
        $_body_data = $args{'create_alias_options'};
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
    my $_response_object = $self->{api_client}->deserialize('AliasDto', $response);
    return $_response_object;
}

#
# delete_alias
#
# Delete an email alias
# 
# @param string $alias_id aliasId (required)
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_alias' } = { 
        summary => 'Delete an email alias',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_alias {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling delete_alias");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}';

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
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
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
# get_alias
#
# Get an email alias
# 
# @param string $alias_id aliasId (required)
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_alias' } = { 
        summary => 'Get an email alias',
        params => $params,
        returns => 'AliasDto',
        };
}
# @return AliasDto
#
sub get_alias {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling get_alias");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}';

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
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
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
    my $_response_object = $self->{api_client}->deserialize('AliasDto', $response);
    return $_response_object;
}

#
# get_alias_emails
#
# Get emails for an alias
# 
# @param string $alias_id aliasId (required)
# @param int $page Optional page index alias email list pagination (optional, default to 0)
# @param int $size Optional page size alias email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index alias email list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size alias email list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_alias_emails' } = { 
        summary => 'Get emails for an alias',
        params => $params,
        returns => 'PageEmailProjection',
        };
}
# @return PageEmailProjection
#
sub get_alias_emails {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling get_alias_emails");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}/emails';

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

    # path params
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PageEmailProjection', $response);
    return $_response_object;
}

#
# get_alias_threads
#
# Get threads created for an alias
# 
# @param string $alias_id aliasId (required)
# @param int $page Optional page index in thread list pagination (optional, default to 0)
# @param int $size Optional page size in thread list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in thread list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in thread list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_alias_threads' } = { 
        summary => 'Get threads created for an alias',
        params => $params,
        returns => 'PageThreadProjection',
        };
}
# @return PageThreadProjection
#
sub get_alias_threads {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling get_alias_threads");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}/threads';

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

    # path params
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PageThreadProjection', $response);
    return $_response_object;
}

#
# get_aliases
#
# Get all email aliases you have created
# 
# @param int $page Optional page index in alias list pagination (optional, default to 0)
# @param int $size Optional page size in alias list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in alias list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in alias list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_aliases' } = { 
        summary => 'Get all email aliases you have created',
        params => $params,
        returns => 'PageAlias',
        };
}
# @return PageAlias
#
sub get_aliases {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/aliases';

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
    my $_response_object = $self->{api_client}->deserialize('PageAlias', $response);
    return $_response_object;
}

#
# reply_to_alias_email
#
# Reply to an email
# 
# @param string $alias_id ID of the alias that email belongs to (required)
# @param string $email_id ID of the email that should be replied to (required)
# @param ReplyToAliasEmailOptions $reply_to_alias_email_options replyToAliasEmailOptions (required)
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'ID of the alias that email belongs to',
        required => '1',
    },
    'email_id' => {
        data_type => 'string',
        description => 'ID of the email that should be replied to',
        required => '1',
    },
    'reply_to_alias_email_options' => {
        data_type => 'ReplyToAliasEmailOptions',
        description => 'replyToAliasEmailOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'reply_to_alias_email' } = { 
        summary => 'Reply to an email',
        params => $params,
        returns => 'SentEmailDto',
        };
}
# @return SentEmailDto
#
sub reply_to_alias_email {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling reply_to_alias_email");
    }

    # verify the required parameter 'email_id' is set
    unless (exists $args{'email_id'}) {
      croak("Missing the required parameter 'email_id' when calling reply_to_alias_email");
    }

    # verify the required parameter 'reply_to_alias_email_options' is set
    unless (exists $args{'reply_to_alias_email_options'}) {
      croak("Missing the required parameter 'reply_to_alias_email_options' when calling reply_to_alias_email");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}/emails/{emailId}';

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

    # path params
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'email_id'}) {
        my $_base_variable = "{" . "emailId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'reply_to_alias_email_options'}) {
        $_body_data = $args{'reply_to_alias_email_options'};
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
    my $_response_object = $self->{api_client}->deserialize('SentEmailDto', $response);
    return $_response_object;
}

#
# send_alias_email
#
# Send an email from an alias inbox
# 
# @param string $alias_id aliasId (required)
# @param SendEmailOptions $send_email_options Options for the email to be sent (optional)
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    'send_email_options' => {
        data_type => 'SendEmailOptions',
        description => 'Options for the email to be sent',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_alias_email' } = { 
        summary => 'Send an email from an alias inbox',
        params => $params,
        returns => 'SentEmailDto',
        };
}
# @return SentEmailDto
#
sub send_alias_email {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling send_alias_email");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}/emails';

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
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'send_email_options'}) {
        $_body_data = $args{'send_email_options'};
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
    my $_response_object = $self->{api_client}->deserialize('SentEmailDto', $response);
    return $_response_object;
}

#
# update_alias
#
# Update an email alias
# 
# @param string $alias_id aliasId (required)
# @param UpdateAliasOptions $update_alias_options updateAliasOptions (required)
{
    my $params = {
    'alias_id' => {
        data_type => 'string',
        description => 'aliasId',
        required => '1',
    },
    'update_alias_options' => {
        data_type => 'UpdateAliasOptions',
        description => 'updateAliasOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_alias' } = { 
        summary => 'Update an email alias',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_alias {
    my ($self, %args) = @_;

    # verify the required parameter 'alias_id' is set
    unless (exists $args{'alias_id'}) {
      croak("Missing the required parameter 'alias_id' when calling update_alias");
    }

    # verify the required parameter 'update_alias_options' is set
    unless (exists $args{'update_alias_options'}) {
      croak("Missing the required parameter 'update_alias_options' when calling update_alias");
    }

    # parse inputs
    my $_resource_path = '/aliases/{aliasId}';

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

    # path params
    if ( exists $args{'alias_id'}) {
        my $_base_variable = "{" . "aliasId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'alias_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_alias_options'}) {
        $_body_data = $args{'update_alias_options'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API_KEY )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
