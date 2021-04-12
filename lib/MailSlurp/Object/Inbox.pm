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
package MailSlurp::Object::Inbox;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Representation of an inbox with an email address. Emails can be sent to or from this email address.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "MailSlurp::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Representation of an inbox with an email address. Emails can be sent to or from this email address.',
                                  class => 'Inbox',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'createdAt',
        description => 'When the inbox was created. Time stamps are in ISO DateTime Format &#x60;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX&#x60; e.g. &#x60;2000-10-31T01:30:00.000-05:00&#x60;.',
        format => '',
        read_only => '',
            },
    'description' => {
        datatype => 'string',
        base_name => 'description',
        description => 'Description of an inbox for labelling and searching purposes',
        format => '',
        read_only => '',
            },
    'email_address' => {
        datatype => 'string',
        base_name => 'emailAddress',
        description => 'The inbox&#39;s email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so &#x60;+123&#x60; additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.',
        format => '',
        read_only => '',
            },
    'expires_at' => {
        datatype => 'string',
        base_name => 'expiresAt',
        description => 'Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.',
        format => '',
        read_only => '',
            },
    'favourite' => {
        datatype => 'boolean',
        base_name => 'favourite',
        description => 'Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering',
        format => '',
        read_only => '',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods &#x60;waitForLatestEmail&#x60; and &#x60;getEmails&#x60; methods respectively. Inboxes can be used with aliases to forward emails automatically.',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Name of the inbox. Displayed in the dashboard for easier search',
        format => '',
        read_only => '',
            },
    'read_only' => {
        datatype => 'boolean',
        base_name => 'readOnly',
        description => 'Is the inbox readOnly for the caller. Read only means can not be deleted or modified.',
        format => '',
        read_only => '',
            },
    'tags' => {
        datatype => 'ARRAY[string]',
        base_name => 'tags',
        description => 'Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.',
        format => '',
        read_only => '',
            },
    'team_access' => {
        datatype => 'boolean',
        base_name => 'teamAccess',
        description => 'Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it.',
        format => '',
        read_only => '',
            },
    'user_id' => {
        datatype => 'string',
        base_name => 'userId',
        description => 'ID of user that inbox belongs to',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'created_at' => 'DateTime',
    'description' => 'string',
    'email_address' => 'string',
    'expires_at' => 'string',
    'favourite' => 'boolean',
    'id' => 'string',
    'name' => 'string',
    'read_only' => 'boolean',
    'tags' => 'ARRAY[string]',
    'team_access' => 'boolean',
    'user_id' => 'string'
} );

__PACKAGE__->attribute_map( {
    'created_at' => 'createdAt',
    'description' => 'description',
    'email_address' => 'emailAddress',
    'expires_at' => 'expiresAt',
    'favourite' => 'favourite',
    'id' => 'id',
    'name' => 'name',
    'read_only' => 'readOnly',
    'tags' => 'tags',
    'team_access' => 'teamAccess',
    'user_id' => 'userId'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
