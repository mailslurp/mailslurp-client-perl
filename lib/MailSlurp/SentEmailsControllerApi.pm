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
package MailSlurp::SentEmailsControllerApi;

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
# delete_all_sent_emails
#
# Delete all sent email receipts
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'delete_all_sent_emails' } = { 
        summary => 'Delete all sent email receipts',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_all_sent_emails {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sent';

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
# delete_sent_email
#
# Delete sent email receipt
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
    __PACKAGE__->method_documentation->{ 'delete_sent_email' } = { 
        summary => 'Delete sent email receipt',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_sent_email {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_sent_email");
    }

    # parse inputs
    my $_resource_path = '/sent/{id}';

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
# get_all_sent_tracking_pixels
#
# 
# 
# @param int $page Optional page index in sent email tracking pixel list pagination (optional, default to 0)
# @param int $size Optional page size in sent email tracking pixel list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param string $search_filter Optional search filter (optional)
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in sent email tracking pixel list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in sent email tracking pixel list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
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
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_all_sent_tracking_pixels' } = { 
        summary => '',
        params => $params,
        returns => 'PageTrackingPixelProjection',
        };
}
# @return PageTrackingPixelProjection
#
sub get_all_sent_tracking_pixels {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sent/tracking-pixels';

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
    if ( exists $args{'search_filter'}) {
        $query_params->{'searchFilter'} = $self->{api_client}->to_query_value($args{'search_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageTrackingPixelProjection', $response);
    return $_response_object;
}

#
# get_raw_sent_email_contents
#
# Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
# 
# @param string $email_id ID of email (required)
{
    my $params = {
    'email_id' => {
        data_type => 'string',
        description => 'ID of email',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_raw_sent_email_contents' } = { 
        summary => 'Get raw sent email string. Returns unparsed raw SMTP message with headers and body.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub get_raw_sent_email_contents {
    my ($self, %args) = @_;

    # verify the required parameter 'email_id' is set
    unless (exists $args{'email_id'}) {
      croak("Missing the required parameter 'email_id' when calling get_raw_sent_email_contents");
    }

    # parse inputs
    my $_resource_path = '/sent/{emailId}/raw';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/plain');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'email_id'}) {
        my $_base_variable = "{" . "emailId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_id'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# get_raw_sent_email_json
#
# Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
# 
# @param string $email_id ID of email (required)
{
    my $params = {
    'email_id' => {
        data_type => 'string',
        description => 'ID of email',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_raw_sent_email_json' } = { 
        summary => 'Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.',
        params => $params,
        returns => 'RawEmailJson',
        };
}
# @return RawEmailJson
#
sub get_raw_sent_email_json {
    my ($self, %args) = @_;

    # verify the required parameter 'email_id' is set
    unless (exists $args{'email_id'}) {
      croak("Missing the required parameter 'email_id' when calling get_raw_sent_email_json");
    }

    # parse inputs
    my $_resource_path = '/sent/{emailId}/raw/json';

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
    if ( exists $args{'email_id'}) {
        my $_base_variable = "{" . "emailId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RawEmailJson', $response);
    return $_response_object;
}

#
# get_sent_email
#
# Get sent email receipt
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
    __PACKAGE__->method_documentation->{ 'get_sent_email' } = { 
        summary => 'Get sent email receipt',
        params => $params,
        returns => 'SentEmailDto',
        };
}
# @return SentEmailDto
#
sub get_sent_email {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_sent_email");
    }

    # parse inputs
    my $_resource_path = '/sent/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('SentEmailDto', $response);
    return $_response_object;
}

#
# get_sent_email_html_content
#
# Get sent email HTML content
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
    __PACKAGE__->method_documentation->{ 'get_sent_email_html_content' } = { 
        summary => 'Get sent email HTML content',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub get_sent_email_html_content {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_sent_email_html_content");
    }

    # parse inputs
    my $_resource_path = '/sent/{id}/html';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/html');
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# get_sent_email_preview_ur_ls
#
# Get sent email URL for viewing in browser or downloading
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
    __PACKAGE__->method_documentation->{ 'get_sent_email_preview_ur_ls' } = { 
        summary => 'Get sent email URL for viewing in browser or downloading',
        params => $params,
        returns => 'EmailPreviewUrls',
        };
}
# @return EmailPreviewUrls
#
sub get_sent_email_preview_ur_ls {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_sent_email_preview_ur_ls");
    }

    # parse inputs
    my $_resource_path = '/sent/{id}/urls';

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
    my $_response_object = $self->{api_client}->deserialize('EmailPreviewUrls', $response);
    return $_response_object;
}

#
# get_sent_email_tracking_pixels
#
# 
# 
# @param string $id  (required)
# @param int $page Optional page index in sent email tracking pixel list pagination (optional, default to 0)
# @param int $size Optional page size in sent email tracking pixel list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param string $search_filter Optional search filter (optional)
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
        description => 'Optional page index in sent email tracking pixel list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in sent email tracking pixel list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
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
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sent_email_tracking_pixels' } = { 
        summary => '',
        params => $params,
        returns => 'PageTrackingPixelProjection',
        };
}
# @return PageTrackingPixelProjection
#
sub get_sent_email_tracking_pixels {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_sent_email_tracking_pixels");
    }

    # parse inputs
    my $_resource_path = '/sent/{id}/tracking-pixels';

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
    if ( exists $args{'search_filter'}) {
        $query_params->{'searchFilter'} = $self->{api_client}->to_query_value($args{'search_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageTrackingPixelProjection', $response);
    return $_response_object;
}

#
# get_sent_emails
#
# Get all sent emails in paginated form
# 
# @param string $inbox_id Optional inboxId to filter sender of sent emails by (optional)
# @param int $page Optional page index in inbox sent email list pagination (optional, default to 0)
# @param int $size Optional page size in inbox sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param string $search_filter Optional search filter (optional)
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inboxId to filter sender of sent emails by',
        required => '0',
    },
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
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sent_emails' } = { 
        summary => 'Get all sent emails in paginated form',
        params => $params,
        returns => 'PageSentEmailProjection',
        };
}
# @return PageSentEmailProjection
#
sub get_sent_emails {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sent';

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
    if ( exists $args{'search_filter'}) {
        $query_params->{'searchFilter'} = $self->{api_client}->to_query_value($args{'search_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageSentEmailProjection', $response);
    return $_response_object;
}

#
# get_sent_emails_with_queue_results
#
# Get results of email sent with queues in paginated form
# 
# @param int $page Optional page index in inbox sent email list pagination (optional, default to 0)
# @param int $size Optional page size in inbox sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
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
    __PACKAGE__->method_documentation->{ 'get_sent_emails_with_queue_results' } = { 
        summary => 'Get results of email sent with queues in paginated form',
        params => $params,
        returns => 'PageSentEmailWithQueueProjection',
        };
}
# @return PageSentEmailWithQueueProjection
#
sub get_sent_emails_with_queue_results {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sent/queue-results';

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
    my $_response_object = $self->{api_client}->deserialize('PageSentEmailWithQueueProjection', $response);
    return $_response_object;
}

#
# get_sent_organization_emails
#
# 
# 
# @param string $inbox_id Optional inboxId to filter sender of sent emails by (optional)
# @param int $page Optional page index in sent email list pagination (optional, default to 0)
# @param int $size Optional page size in sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param string $search_filter Optional search filter (optional)
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'inbox_id' => {
        data_type => 'string',
        description => 'Optional inboxId to filter sender of sent emails by',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in sent email list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in sent email list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
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
    'before' => {
        data_type => 'DateTime',
        description => 'Filter by created at before the given timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_sent_organization_emails' } = { 
        summary => '',
        params => $params,
        returns => 'PageSentEmailProjection',
        };
}
# @return PageSentEmailProjection
#
sub get_sent_organization_emails {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sent/organization';

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
    if ( exists $args{'search_filter'}) {
        $query_params->{'searchFilter'} = $self->{api_client}->to_query_value($args{'search_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageSentEmailProjection', $response);
    return $_response_object;
}

1;
