=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

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
package MailSlurp::WaitForControllerApi;

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
# wait_for
#
# Wait for an email to match the provided filter conditions such as subject contains keyword.
# 
# @param WaitForConditions $wait_for_conditions  (required)
{
    my $params = {
    'wait_for_conditions' => {
        data_type => 'WaitForConditions',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for' } = { 
        summary => 'Wait for an email to match the provided filter conditions such as subject contains keyword.',
        params => $params,
        returns => 'ARRAY[EmailPreview]',
        };
}
# @return ARRAY[EmailPreview]
#
sub wait_for {
    my ($self, %args) = @_;

    # verify the required parameter 'wait_for_conditions' is set
    unless (exists $args{'wait_for_conditions'}) {
      croak("Missing the required parameter 'wait_for_conditions' when calling wait_for");
    }

    # parse inputs
    my $_resource_path = '/waitFor';

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
    if ( exists $args{'wait_for_conditions'}) {
        $_body_data = $args{'wait_for_conditions'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[EmailPreview]', $response);
    return $_response_object;
}

#
# wait_for_email_count
#
# Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
# 
# @param string $inbox_id Id of the inbox we are fetching emails from (required)
# @param int $count Number of emails to wait for. Must be greater that 1 (required)
# @param int $timeout Max milliseconds to wait (optional)
# @param boolean $unread_only Optional filter for unread only (optional, default to false)
# @param DateTime $before Filter for emails that were received before the given timestamp (optional)
# @param DateTime $since Filter for emails that were received after the given timestamp (optional)
# @param string $sort Sort direction (optional)
# @param int $delay Max milliseconds delay between calls (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Id of the inbox we are fetching emails from',
        required => '1',
    },
    'count' => {
        data_type => 'int',
        description => 'Number of emails to wait for. Must be greater that 1',
        required => '1',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Max milliseconds to wait',
        required => '0',
    },
    'unread_only' => {
        data_type => 'boolean',
        description => 'Optional filter for unread only',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received before the given timestamp',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received after the given timestamp',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort direction',
        required => '0',
    },
    'delay' => {
        data_type => 'int',
        description => 'Max milliseconds delay between calls',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_email_count' } = { 
        summary => 'Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs',
        params => $params,
        returns => 'ARRAY[EmailPreview]',
        };
}
# @return ARRAY[EmailPreview]
#
sub wait_for_email_count {
    my ($self, %args) = @_;

    # verify the required parameter 'inbox_id' is set
    unless (exists $args{'inbox_id'}) {
      croak("Missing the required parameter 'inbox_id' when calling wait_for_email_count");
    }

    # verify the required parameter 'count' is set
    unless (exists $args{'count'}) {
      croak("Missing the required parameter 'count' when calling wait_for_email_count");
    }

    # parse inputs
    my $_resource_path = '/waitForEmailCount';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'timeout'}) {
        $query_params->{'timeout'} = $self->{api_client}->to_query_value($args{'timeout'});
    }

    # query params
    if ( exists $args{'unread_only'}) {
        $query_params->{'unreadOnly'} = $self->{api_client}->to_query_value($args{'unread_only'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
    }

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'delay'}) {
        $query_params->{'delay'} = $self->{api_client}->to_query_value($args{'delay'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[EmailPreview]', $response);
    return $_response_object;
}

#
# wait_for_latest_email
#
# Fetch inbox's latest email or if empty wait for an email to arrive
# 
# @param string $inbox_id Id of the inbox we are fetching emails from (optional)
# @param int $timeout Max milliseconds to wait (optional)
# @param boolean $unread_only Optional filter for unread only. (optional, default to false)
# @param DateTime $before Filter for emails that were before after the given timestamp (optional)
# @param DateTime $since Filter for emails that were received after the given timestamp (optional)
# @param string $sort Sort direction (optional)
# @param int $delay Max milliseconds delay between calls (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Id of the inbox we are fetching emails from',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Max milliseconds to wait',
        required => '0',
    },
    'unread_only' => {
        data_type => 'boolean',
        description => 'Optional filter for unread only.',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were before after the given timestamp',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received after the given timestamp',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort direction',
        required => '0',
    },
    'delay' => {
        data_type => 'int',
        description => 'Max milliseconds delay between calls',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_latest_email' } = { 
        summary => 'Fetch inbox&#39;s latest email or if empty wait for an email to arrive',
        params => $params,
        returns => 'Email',
        };
}
# @return Email
#
sub wait_for_latest_email {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/waitForLatestEmail';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'timeout'}) {
        $query_params->{'timeout'} = $self->{api_client}->to_query_value($args{'timeout'});
    }

    # query params
    if ( exists $args{'unread_only'}) {
        $query_params->{'unreadOnly'} = $self->{api_client}->to_query_value($args{'unread_only'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
    }

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'delay'}) {
        $query_params->{'delay'} = $self->{api_client}->to_query_value($args{'delay'});
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
    my $_response_object = $self->{api_client}->deserialize('Email', $response);
    return $_response_object;
}

#
# wait_for_matching_emails
#
# Wait or return list of emails that match simple matching patterns
# 
# @param string $inbox_id Id of the inbox we are fetching emails from (required)
# @param int $count Number of emails to wait for. Must be greater or equal to 1 (required)
# @param MatchOptions $match_options  (required)
# @param DateTime $before Filter for emails that were received before the given timestamp (optional)
# @param DateTime $since Filter for emails that were received after the given timestamp (optional)
# @param string $sort Sort direction (optional)
# @param int $delay Max milliseconds delay between calls (optional)
# @param int $timeout Max milliseconds to wait (optional)
# @param boolean $unread_only Optional filter for unread only (optional, default to false)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Id of the inbox we are fetching emails from',
        required => '1',
    },
    'count' => {
        data_type => 'int',
        description => 'Number of emails to wait for. Must be greater or equal to 1',
        required => '1',
    },
    'match_options' => {
        data_type => 'MatchOptions',
        description => '',
        required => '1',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received before the given timestamp',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received after the given timestamp',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort direction',
        required => '0',
    },
    'delay' => {
        data_type => 'int',
        description => 'Max milliseconds delay between calls',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Max milliseconds to wait',
        required => '0',
    },
    'unread_only' => {
        data_type => 'boolean',
        description => 'Optional filter for unread only',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_matching_emails' } = { 
        summary => 'Wait or return list of emails that match simple matching patterns',
        params => $params,
        returns => 'ARRAY[EmailPreview]',
        };
}
# @return ARRAY[EmailPreview]
#
sub wait_for_matching_emails {
    my ($self, %args) = @_;

    # verify the required parameter 'inbox_id' is set
    unless (exists $args{'inbox_id'}) {
      croak("Missing the required parameter 'inbox_id' when calling wait_for_matching_emails");
    }

    # verify the required parameter 'count' is set
    unless (exists $args{'count'}) {
      croak("Missing the required parameter 'count' when calling wait_for_matching_emails");
    }

    # verify the required parameter 'match_options' is set
    unless (exists $args{'match_options'}) {
      croak("Missing the required parameter 'match_options' when calling wait_for_matching_emails");
    }

    # parse inputs
    my $_resource_path = '/waitForMatchingEmails';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'before'}) {
        $query_params->{'before'} = $self->{api_client}->to_query_value($args{'before'});
    }

    # query params
    if ( exists $args{'since'}) {
        $query_params->{'since'} = $self->{api_client}->to_query_value($args{'since'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'delay'}) {
        $query_params->{'delay'} = $self->{api_client}->to_query_value($args{'delay'});
    }

    # query params
    if ( exists $args{'timeout'}) {
        $query_params->{'timeout'} = $self->{api_client}->to_query_value($args{'timeout'});
    }

    # query params
    if ( exists $args{'unread_only'}) {
        $query_params->{'unreadOnly'} = $self->{api_client}->to_query_value($args{'unread_only'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'match_options'}) {
        $_body_data = $args{'match_options'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[EmailPreview]', $response);
    return $_response_object;
}

#
# wait_for_matching_first_email
#
# Wait for or return the first email that matches provided MatchOptions array
# 
# @param string $inbox_id Id of the inbox we are matching an email for (required)
# @param MatchOptions $match_options  (required)
# @param int $timeout Max milliseconds to wait (optional)
# @param boolean $unread_only Optional filter for unread only (optional, default to false)
# @param DateTime $since Filter for emails that were received after the given timestamp (optional)
# @param DateTime $before Filter for emails that were received before the given timestamp (optional)
# @param string $sort Sort direction (optional)
# @param int $delay Max milliseconds delay between calls (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Id of the inbox we are matching an email for',
        required => '1',
    },
    'match_options' => {
        data_type => 'MatchOptions',
        description => '',
        required => '1',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Max milliseconds to wait',
        required => '0',
    },
    'unread_only' => {
        data_type => 'boolean',
        description => 'Optional filter for unread only',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received after the given timestamp',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received before the given timestamp',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort direction',
        required => '0',
    },
    'delay' => {
        data_type => 'int',
        description => 'Max milliseconds delay between calls',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_matching_first_email' } = { 
        summary => 'Wait for or return the first email that matches provided MatchOptions array',
        params => $params,
        returns => 'Email',
        };
}
# @return Email
#
sub wait_for_matching_first_email {
    my ($self, %args) = @_;

    # verify the required parameter 'inbox_id' is set
    unless (exists $args{'inbox_id'}) {
      croak("Missing the required parameter 'inbox_id' when calling wait_for_matching_first_email");
    }

    # verify the required parameter 'match_options' is set
    unless (exists $args{'match_options'}) {
      croak("Missing the required parameter 'match_options' when calling wait_for_matching_first_email");
    }

    # parse inputs
    my $_resource_path = '/waitForMatchingFirstEmail';

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
    if ( exists $args{'inbox_id'}) {
        $query_params->{'inboxId'} = $self->{api_client}->to_query_value($args{'inbox_id'});
    }

    # query params
    if ( exists $args{'timeout'}) {
        $query_params->{'timeout'} = $self->{api_client}->to_query_value($args{'timeout'});
    }

    # query params
    if ( exists $args{'unread_only'}) {
        $query_params->{'unreadOnly'} = $self->{api_client}->to_query_value($args{'unread_only'});
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
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'delay'}) {
        $query_params->{'delay'} = $self->{api_client}->to_query_value($args{'delay'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'match_options'}) {
        $_body_data = $args{'match_options'};
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
    my $_response_object = $self->{api_client}->deserialize('Email', $response);
    return $_response_object;
}

#
# wait_for_nth_email
#
# Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
# 
# @param string $inbox_id Id of the inbox you are fetching emails from (optional)
# @param int $index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 (optional, default to 0)
# @param int $timeout Max milliseconds to wait for the nth email if not already present (optional)
# @param boolean $unread_only Optional filter for unread only (optional, default to false)
# @param DateTime $since Filter for emails that were received after the given timestamp (optional)
# @param DateTime $before Filter for emails that were received before the given timestamp (optional)
# @param string $sort Sort direction (optional)
# @param int $delay Max milliseconds delay between calls (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Id of the inbox you are fetching emails from',
        required => '0',
    },
    'index' => {
        data_type => 'int',
        description => 'Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1',
        required => '0',
    },
    'timeout' => {
        data_type => 'int',
        description => 'Max milliseconds to wait for the nth email if not already present',
        required => '0',
    },
    'unread_only' => {
        data_type => 'boolean',
        description => 'Optional filter for unread only',
        required => '0',
    },
    'since' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received after the given timestamp',
        required => '0',
    },
    'before' => {
        data_type => 'DateTime',
        description => 'Filter for emails that were received before the given timestamp',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Sort direction',
        required => '0',
    },
    'delay' => {
        data_type => 'int',
        description => 'Max milliseconds delay between calls',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'wait_for_nth_email' } = { 
        summary => 'Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.',
        params => $params,
        returns => 'Email',
        };
}
# @return Email
#
sub wait_for_nth_email {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/waitForNthEmail';

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

    # query params
    if ( exists $args{'unread_only'}) {
        $query_params->{'unreadOnly'} = $self->{api_client}->to_query_value($args{'unread_only'});
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
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # query params
    if ( exists $args{'delay'}) {
        $query_params->{'delay'} = $self->{api_client}->to_query_value($args{'delay'});
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
    my $_response_object = $self->{api_client}->deserialize('Email', $response);
    return $_response_object;
}

1;
