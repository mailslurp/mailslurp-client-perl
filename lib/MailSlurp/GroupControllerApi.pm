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
package MailSlurp::GroupControllerApi;

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
# add_contacts_to_group
#
# Add contacts to a group
# 
# @param string $group_id groupId (required)
# @param UpdateGroupContacts $update_group_contacts_option updateGroupContactsOption (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    'update_group_contacts_option' => {
        data_type => 'UpdateGroupContacts',
        description => 'updateGroupContactsOption',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_contacts_to_group' } = { 
        summary => 'Add contacts to a group',
        params => $params,
        returns => 'GroupContactsDto',
        };
}
# @return GroupContactsDto
#
sub add_contacts_to_group {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling add_contacts_to_group");
    }

    # verify the required parameter 'update_group_contacts_option' is set
    unless (exists $args{'update_group_contacts_option'}) {
      croak("Missing the required parameter 'update_group_contacts_option' when calling add_contacts_to_group");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}/contacts';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_group_contacts_option'}) {
        $_body_data = $args{'update_group_contacts_option'};
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
    my $_response_object = $self->{api_client}->deserialize('GroupContactsDto', $response);
    return $_response_object;
}

#
# create_group
#
# Create a group
# 
# @param CreateGroupOptions $create_group_options createGroupOptions (required)
{
    my $params = {
    'create_group_options' => {
        data_type => 'CreateGroupOptions',
        description => 'createGroupOptions',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_group' } = { 
        summary => 'Create a group',
        params => $params,
        returns => 'GroupDto',
        };
}
# @return GroupDto
#
sub create_group {
    my ($self, %args) = @_;

    # verify the required parameter 'create_group_options' is set
    unless (exists $args{'create_group_options'}) {
      croak("Missing the required parameter 'create_group_options' when calling create_group");
    }

    # parse inputs
    my $_resource_path = '/groups';

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
    if ( exists $args{'create_group_options'}) {
        $_body_data = $args{'create_group_options'};
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
    my $_response_object = $self->{api_client}->deserialize('GroupDto', $response);
    return $_response_object;
}

#
# delete_group
#
# Delete group
# 
# @param string $group_id groupId (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_group' } = { 
        summary => 'Delete group',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_group {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling delete_group");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
# get_all_groups
#
# Get all Contact Groups in paginated format
# 
# @param int $page Optional page index in list pagination (optional, default to 0)
# @param int $size Optional page size in list pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Optional page index in list pagination',
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
    __PACKAGE__->method_documentation->{ 'get_all_groups' } = { 
        summary => 'Get all Contact Groups in paginated format',
        params => $params,
        returns => 'PageGroupProjection',
        };
}
# @return PageGroupProjection
#
sub get_all_groups {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/groups/paginated';

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
    my $_response_object = $self->{api_client}->deserialize('PageGroupProjection', $response);
    return $_response_object;
}

#
# get_group
#
# Get group
# 
# @param string $group_id groupId (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_group' } = { 
        summary => 'Get group',
        params => $params,
        returns => 'GroupDto',
        };
}
# @return GroupDto
#
sub get_group {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling get_group");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
    my $_response_object = $self->{api_client}->deserialize('GroupDto', $response);
    return $_response_object;
}

#
# get_group_with_contacts
#
# Get group and contacts belonging to it
# 
# @param string $group_id groupId (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_group_with_contacts' } = { 
        summary => 'Get group and contacts belonging to it',
        params => $params,
        returns => 'GroupContactsDto',
        };
}
# @return GroupContactsDto
#
sub get_group_with_contacts {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling get_group_with_contacts");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}/contacts';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
    my $_response_object = $self->{api_client}->deserialize('GroupContactsDto', $response);
    return $_response_object;
}

#
# get_group_with_contacts_paginated
#
# Get group and paginated contacts belonging to it
# 
# @param string $group_id groupId (required)
# @param int $page Optional page index in group contact pagination (optional, default to 0)
# @param int $size Optional page size in group contact pagination (optional, default to 20)
# @param string $sort Optional createdAt sort direction ASC or DESC (optional, default to 'ASC')
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Optional page index in group contact pagination',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'Optional page size in group contact pagination',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'Optional createdAt sort direction ASC or DESC',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_group_with_contacts_paginated' } = { 
        summary => 'Get group and paginated contacts belonging to it',
        params => $params,
        returns => 'PageContactProjection',
        };
}
# @return PageContactProjection
#
sub get_group_with_contacts_paginated {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling get_group_with_contacts_paginated");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}/contacts-paginated';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PageContactProjection', $response);
    return $_response_object;
}

#
# get_groups
#
# Get all groups
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_groups' } = { 
        summary => 'Get all groups',
        params => $params,
        returns => 'ARRAY[GroupProjection]',
        };
}
# @return ARRAY[GroupProjection]
#
sub get_groups {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/groups';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[GroupProjection]', $response);
    return $_response_object;
}

#
# remove_contacts_from_group
#
# Remove contacts from a group
# 
# @param string $group_id groupId (required)
# @param UpdateGroupContacts $update_group_contacts_option updateGroupContactsOption (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => 'groupId',
        required => '1',
    },
    'update_group_contacts_option' => {
        data_type => 'UpdateGroupContacts',
        description => 'updateGroupContactsOption',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'remove_contacts_from_group' } = { 
        summary => 'Remove contacts from a group',
        params => $params,
        returns => 'GroupContactsDto',
        };
}
# @return GroupContactsDto
#
sub remove_contacts_from_group {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling remove_contacts_from_group");
    }

    # verify the required parameter 'update_group_contacts_option' is set
    unless (exists $args{'update_group_contacts_option'}) {
      croak("Missing the required parameter 'update_group_contacts_option' when calling remove_contacts_from_group");
    }

    # parse inputs
    my $_resource_path = '/groups/{groupId}/contacts';

    my $_method = 'DELETE';
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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_group_contacts_option'}) {
        $_body_data = $args{'update_group_contacts_option'};
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
    my $_response_object = $self->{api_client}->deserialize('GroupContactsDto', $response);
    return $_response_object;
}

1;
