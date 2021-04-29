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
package MailSlurp::Object::WebhookPayload;

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

use MailSlurp::Object::AttachmentMetaData;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#MailSlurp webhook payload schema. This schema describes the JSON object that is sent via HTTP POST to webhook urls when an email is received by an inbox that a webhook is attached to. Payloads may be delivered multiple times so use the ID as a key for event uniqueness. The payload contains IDs for the email and inbox affected. Use these to fetch more data related to the event using appropriate inbox and email endpoints. See https://www.mailslurp.com/guides/email-webhooks/ for more information. Your webhook endpoint should accept POST HTTP request and return a 200 in under 30 seconds. Process the webhook asynchronously if you need to.
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



__PACKAGE__->class_documentation({description => 'MailSlurp webhook payload schema. This schema describes the JSON object that is sent via HTTP POST to webhook urls when an email is received by an inbox that a webhook is attached to. Payloads may be delivered multiple times so use the ID as a key for event uniqueness. The payload contains IDs for the email and inbox affected. Use these to fetch more data related to the event using appropriate inbox and email endpoints. See https://www.mailslurp.com/guides/email-webhooks/ for more information. Your webhook endpoint should accept POST HTTP request and return a 200 in under 30 seconds. Process the webhook asynchronously if you need to.',
                                  class => 'WebhookPayload',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'attachment_meta_datas' => {
        datatype => 'ARRAY[AttachmentMetaData]',
        base_name => 'attachmentMetaDatas',
        description => 'List of attachment meta data objects if attachments present',
        format => '',
        read_only => '',
            },
    'bcc' => {
        datatype => 'ARRAY[string]',
        base_name => 'bcc',
        description => 'List of &#x60;BCC&#x60; recipients email was addressed to',
        format => '',
        read_only => '',
            },
    'cc' => {
        datatype => 'ARRAY[string]',
        base_name => 'cc',
        description => 'List of &#x60;CC&#x60; recipients email was addressed to',
        format => '',
        read_only => '',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'createdAt',
        description => 'Date time of event creation',
        format => '',
        read_only => '',
            },
    'email_id' => {
        datatype => 'string',
        base_name => 'emailId',
        description => 'ID of the email that was received. Use this ID for fetching the email',
        format => '',
        read_only => '',
            },
    'event_name' => {
        datatype => 'string',
        base_name => 'eventName',
        description => 'Name of the event type webhook is being triggered for',
        format => '',
        read_only => '',
            },
    'from' => {
        datatype => 'string',
        base_name => 'from',
        description => 'Who the email was sent from',
        format => '',
        read_only => '',
            },
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'Idempotent message ID. Store this ID locally or in a database to prevent message duplication.',
        format => '',
        read_only => '',
            },
    'inbox_id' => {
        datatype => 'string',
        base_name => 'inboxId',
        description => 'Id of the inbox that receive an email',
        format => '',
        read_only => '',
            },
    'subject' => {
        datatype => 'string',
        base_name => 'subject',
        description => 'The subject line of the email message',
        format => '',
        read_only => '',
            },
    'to' => {
        datatype => 'ARRAY[string]',
        base_name => 'to',
        description => 'List of &#x60;To&#x60; recipients email was addressed to',
        format => '',
        read_only => '',
            },
    'webhook_id' => {
        datatype => 'string',
        base_name => 'webhookId',
        description => 'ID of webhook entity being triggered',
        format => '',
        read_only => '',
            },
    'webhook_name' => {
        datatype => 'string',
        base_name => 'webhookName',
        description => 'Name of the webhook being triggered',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'attachment_meta_datas' => 'ARRAY[AttachmentMetaData]',
    'bcc' => 'ARRAY[string]',
    'cc' => 'ARRAY[string]',
    'created_at' => 'DateTime',
    'email_id' => 'string',
    'event_name' => 'string',
    'from' => 'string',
    'id' => 'string',
    'inbox_id' => 'string',
    'subject' => 'string',
    'to' => 'ARRAY[string]',
    'webhook_id' => 'string',
    'webhook_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'attachment_meta_datas' => 'attachmentMetaDatas',
    'bcc' => 'bcc',
    'cc' => 'cc',
    'created_at' => 'createdAt',
    'email_id' => 'emailId',
    'event_name' => 'eventName',
    'from' => 'from',
    'id' => 'id',
    'inbox_id' => 'inboxId',
    'subject' => 'subject',
    'to' => 'to',
    'webhook_id' => 'webhookId',
    'webhook_name' => 'webhookName'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
