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
# get_all_sent_tracking_pixels
#
# Get all sent email tracking pixels in paginated form
# 
# @param int $page Optional page index in sent email tracking pixel list pagination (optional, default to 0)
# @param string $search_filter Optional search filter (optional)
# @param int $size Optional page size in sent email tracking pixel list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in sent email tracking pixel list pagination',
        required => '0',
    },
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
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
    };
    __PACKAGE__->method_documentation->{ 'get_all_sent_tracking_pixels' } = { 
        summary => 'Get all sent email tracking pixels in paginated form',
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
    my $_response_object = $self->{api_client}->deserialize('PageTrackingPixelProjection', $response);
    return $_response_object;
}

#
# get_sent_email
#
# Get sent email receipt
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
    my $_response_object = $self->{api_client}->deserialize('SentEmailDto', $response);
    return $_response_object;
}

#
# get_sent_email_html_content
#
# Get sent email HTML content
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
# get_sent_email_tracking_pixels
#
# Get all tracking pixels for a sent email in paginated form
# 
# @param string $id id (required)
# @param int $page Optional page index in sent email tracking pixel list pagination (optional, default to 0)
# @param string $search_filter Optional search filter (optional)
# @param int $size Optional page size in sent email tracking pixel list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'id',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in sent email tracking pixel list pagination',
        required => '0',
    },
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
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
    };
    __PACKAGE__->method_documentation->{ 'get_sent_email_tracking_pixels' } = { 
        summary => 'Get all tracking pixels for a sent email in paginated form',
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
# @param string $search_filter Optional search filter (optional)
# @param int $size Optional page size in inbox sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
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
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
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
    my $_response_object = $self->{api_client}->deserialize('PageSentEmailProjection', $response);
    return $_response_object;
}

#
# get_sent_organization_emails
#
# Get all sent organization emails in paginated form
# 
# @param string $inbox_id Optional inboxId to filter sender of sent emails by (optional)
# @param int $page Optional page index in sent email list pagination (optional, default to 0)
# @param string $search_filter Optional search filter (optional)
# @param int $size Optional page size in sent email list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
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
    'search_filter' => {
        data_type => 'string',
        description => 'Optional search filter',
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
    };
    __PACKAGE__->method_documentation->{ 'get_sent_organization_emails' } = { 
        summary => 'Get all sent organization emails in paginated form',
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
    my $_response_object = $self->{api_client}->deserialize('PageSentEmailProjection', $response);
    return $_response_object;
}

1;
