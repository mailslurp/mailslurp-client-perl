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
package MailSlurp::AttachmentControllerApi;

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
# delete_all_attachments
#
# Delete all attachments
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'delete_all_attachments' } = { 
        summary => 'Delete all attachments',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_all_attachments {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/attachments';

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
# delete_attachment
#
# Delete an attachment
# 
# @param string $attachment_id ID of attachment (required)
{
    my $params = {
    'attachment_id' => {
        data_type => 'string',
        description => 'ID of attachment',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_attachment' } = { 
        summary => 'Delete an attachment',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_attachment {
    my ($self, %args) = @_;

    # verify the required parameter 'attachment_id' is set
    unless (exists $args{'attachment_id'}) {
      croak("Missing the required parameter 'attachment_id' when calling delete_attachment");
    }

    # parse inputs
    my $_resource_path = '/attachments/{attachmentId}';

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
    if ( exists $args{'attachment_id'}) {
        my $_base_variable = "{" . "attachmentId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'attachment_id'});
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
# download_attachment_as_base64_encoded
#
# Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
# 
# @param string $attachment_id ID of attachment (required)
{
    my $params = {
    'attachment_id' => {
        data_type => 'string',
        description => 'ID of attachment',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'download_attachment_as_base64_encoded' } = { 
        summary => 'Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.',
        params => $params,
        returns => 'DownloadAttachmentDto',
        };
}
# @return DownloadAttachmentDto
#
sub download_attachment_as_base64_encoded {
    my ($self, %args) = @_;

    # verify the required parameter 'attachment_id' is set
    unless (exists $args{'attachment_id'}) {
      croak("Missing the required parameter 'attachment_id' when calling download_attachment_as_base64_encoded");
    }

    # parse inputs
    my $_resource_path = '/attachments/{attachmentId}/base64';

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
    if ( exists $args{'attachment_id'}) {
        my $_base_variable = "{" . "attachmentId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'attachment_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DownloadAttachmentDto', $response);
    return $_response_object;
}

#
# download_attachment_as_bytes
#
# Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
# 
# @param string $attachment_id ID of attachment (required)
{
    my $params = {
    'attachment_id' => {
        data_type => 'string',
        description => 'ID of attachment',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'download_attachment_as_bytes' } = { 
        summary => 'Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub download_attachment_as_bytes {
    my ($self, %args) = @_;

    # verify the required parameter 'attachment_id' is set
    unless (exists $args{'attachment_id'}) {
      croak("Missing the required parameter 'attachment_id' when calling download_attachment_as_bytes");
    }

    # parse inputs
    my $_resource_path = '/attachments/{attachmentId}/bytes';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/octet-stream');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'attachment_id'}) {
        my $_base_variable = "{" . "attachmentId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'attachment_id'});
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
# get_attachment
#
# Get an attachment entity
# 
# @param string $attachment_id ID of attachment (required)
{
    my $params = {
    'attachment_id' => {
        data_type => 'string',
        description => 'ID of attachment',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_attachment' } = { 
        summary => 'Get an attachment entity',
        params => $params,
        returns => 'AttachmentEntity',
        };
}
# @return AttachmentEntity
#
sub get_attachment {
    my ($self, %args) = @_;

    # verify the required parameter 'attachment_id' is set
    unless (exists $args{'attachment_id'}) {
      croak("Missing the required parameter 'attachment_id' when calling get_attachment");
    }

    # parse inputs
    my $_resource_path = '/attachments/{attachmentId}';

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
    if ( exists $args{'attachment_id'}) {
        my $_base_variable = "{" . "attachmentId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'attachment_id'});
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
    my $_response_object = $self->{api_client}->deserialize('AttachmentEntity', $response);
    return $_response_object;
}

#
# get_attachment_info
#
# Get email attachment metadata information
# 
# @param string $attachment_id ID of attachment (required)
{
    my $params = {
    'attachment_id' => {
        data_type => 'string',
        description => 'ID of attachment',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_attachment_info' } = { 
        summary => 'Get email attachment metadata information',
        params => $params,
        returns => 'AttachmentMetaData',
        };
}
# @return AttachmentMetaData
#
sub get_attachment_info {
    my ($self, %args) = @_;

    # verify the required parameter 'attachment_id' is set
    unless (exists $args{'attachment_id'}) {
      croak("Missing the required parameter 'attachment_id' when calling get_attachment_info");
    }

    # parse inputs
    my $_resource_path = '/attachments/{attachmentId}/metadata';

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
    if ( exists $args{'attachment_id'}) {
        my $_base_variable = "{" . "attachmentId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'attachment_id'});
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
    my $_response_object = $self->{api_client}->deserialize('AttachmentMetaData', $response);
    return $_response_object;
}

#
# get_attachments
#
# Get email attachments
# 
# @param int $page Optional page index event list pagination (optional, default to 0)
# @param int $size Optional page size event list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
# @param string $file_name_filter Optional file name and content type search filter (optional)
# @param DateTime $since Filter by created at after the given timestamp (optional)
# @param DateTime $before Filter by created at before the given timestamp (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index event list pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size event list pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    'file_name_filter' => {
        data_type => 'string',
        description => 'Optional file name and content type search filter',
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
    __PACKAGE__->method_documentation->{ 'get_attachments' } = { 
        summary => 'Get email attachments',
        params => $params,
        returns => 'PageAttachmentEntity',
        };
}
# @return PageAttachmentEntity
#
sub get_attachments {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/attachments';

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
    if ( exists $args{'file_name_filter'}) {
        $query_params->{'fileNameFilter'} = $self->{api_client}->to_query_value($args{'file_name_filter'});
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
    my $_response_object = $self->{api_client}->deserialize('PageAttachmentEntity', $response);
    return $_response_object;
}

#
# upload_attachment
#
# Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
# 
# @param UploadAttachmentOptions $upload_attachment_options  (required)
{
    my $params = {
    'upload_attachment_options' => {
        data_type => 'UploadAttachmentOptions',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'upload_attachment' } = { 
        summary => 'Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub upload_attachment {
    my ($self, %args) = @_;

    # verify the required parameter 'upload_attachment_options' is set
    unless (exists $args{'upload_attachment_options'}) {
      croak("Missing the required parameter 'upload_attachment_options' when calling upload_attachment");
    }

    # parse inputs
    my $_resource_path = '/attachments';

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
    if ( exists $args{'upload_attachment_options'}) {
        $_body_data = $args{'upload_attachment_options'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

#
# upload_attachment_bytes
#
# Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
# 
# @param InlineObject1 $inline_object1  (required)
# @param string $content_type Optional contentType for file. For instance &#x60;application/pdf&#x60; (optional)
# @param string $filename Optional filename to save upload with (optional)
{
    my $params = {
    'inline_object1' => {
        data_type => 'InlineObject1',
        description => '',
        required => '1',
    },
    'content_type' => {
        data_type => 'string',
        description => 'Optional contentType for file. For instance &#x60;application/pdf&#x60;',
        required => '0',
    },
    'filename' => {
        data_type => 'string',
        description => 'Optional filename to save upload with',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'upload_attachment_bytes' } = { 
        summary => 'Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub upload_attachment_bytes {
    my ($self, %args) = @_;

    # verify the required parameter 'inline_object1' is set
    unless (exists $args{'inline_object1'}) {
      croak("Missing the required parameter 'inline_object1' when calling upload_attachment_bytes");
    }

    # parse inputs
    my $_resource_path = '/attachments/bytes';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/octet-stream');

    # query params
    if ( exists $args{'filename'}) {
        $query_params->{'filename'} = $self->{api_client}->to_query_value($args{'filename'});
    }

    # header params
    if ( exists $args{'content_type'}) {
        $header_params->{'contentType'} = $self->{api_client}->to_header_value($args{'content_type'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'inline_object1'}) {
        $_body_data = $args{'inline_object1'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

#
# upload_multipart_form
#
# Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
# 
# @param string $content_type Optional content type of attachment (optional)
# @param string $filename Optional name of file (optional)
# @param string $x_filename Optional content type header of attachment (optional)
# @param InlineObject $inline_object  (optional)
{
    my $params = {
    'content_type' => {
        data_type => 'string',
        description => 'Optional content type of attachment',
        required => '0',
    },
    'filename' => {
        data_type => 'string',
        description => 'Optional name of file',
        required => '0',
    },
    'x_filename' => {
        data_type => 'string',
        description => 'Optional content type header of attachment',
        required => '0',
    },
    'inline_object' => {
        data_type => 'InlineObject',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'upload_multipart_form' } = { 
        summary => 'Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub upload_multipart_form {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/attachments/multipart';

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
    if ( exists $args{'content_type'}) {
        $query_params->{'contentType'} = $self->{api_client}->to_query_value($args{'content_type'});
    }

    # query params
    if ( exists $args{'filename'}) {
        $query_params->{'filename'} = $self->{api_client}->to_query_value($args{'filename'});
    }

    # query params
    if ( exists $args{'x_filename'}) {
        $query_params->{'x-filename'} = $self->{api_client}->to_query_value($args{'x_filename'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'inline_object'}) {
        $_body_data = $args{'inline_object'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

1;
