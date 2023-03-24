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
package MailSlurp::Object::UpdateInboxReplierOptions;

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
#Options for updating an inbox replier
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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



__PACKAGE__->class_documentation({description => 'Options for updating an inbox replier',
                                  class => 'UpdateInboxReplierOptions',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'inbox_id' => {
        datatype => 'string',
        base_name => 'inboxId',
        description => 'Inbox ID to attach replier to',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => 'Name for replier',
        format => '',
        read_only => '',
            },
    'field' => {
        datatype => 'string',
        base_name => 'field',
        description => 'Field to match against to trigger inbox replier for inbound email',
        format => '',
        read_only => '',
            },
    'match' => {
        datatype => 'string',
        base_name => 'match',
        description => 'String or wildcard style match for field specified when evaluating reply rules',
        format => '',
        read_only => '',
            },
    'reply_to' => {
        datatype => 'string',
        base_name => 'replyTo',
        description => 'Reply-to email address when sending replying',
        format => '',
        read_only => '',
            },
    'subject' => {
        datatype => 'string',
        base_name => 'subject',
        description => 'Subject override when replying to email',
        format => '',
        read_only => '',
            },
    'from' => {
        datatype => 'string',
        base_name => 'from',
        description => 'Send email from address',
        format => '',
        read_only => '',
            },
    'charset' => {
        datatype => 'string',
        base_name => 'charset',
        description => 'Email reply charset',
        format => '',
        read_only => '',
            },
    'is_html' => {
        datatype => 'boolean',
        base_name => 'isHTML',
        description => 'Send HTML email',
        format => '',
        read_only => '',
            },
    'ignore_reply_to' => {
        datatype => 'boolean',
        base_name => 'ignoreReplyTo',
        description => 'Ignore sender replyTo when responding. Send directly to the sender if enabled.',
        format => '',
        read_only => '',
            },
    'body' => {
        datatype => 'string',
        base_name => 'body',
        description => 'Email body for reply',
        format => '',
        read_only => '',
            },
    'template_id' => {
        datatype => 'string',
        base_name => 'templateId',
        description => 'ID of template to use when sending a reply',
        format => '',
        read_only => '',
            },
    'template_variables' => {
        datatype => 'HASH[string,object]',
        base_name => 'templateVariables',
        description => 'Template variable values',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'inbox_id' => 'string',
    'name' => 'string',
    'field' => 'string',
    'match' => 'string',
    'reply_to' => 'string',
    'subject' => 'string',
    'from' => 'string',
    'charset' => 'string',
    'is_html' => 'boolean',
    'ignore_reply_to' => 'boolean',
    'body' => 'string',
    'template_id' => 'string',
    'template_variables' => 'HASH[string,object]'
} );

__PACKAGE__->attribute_map( {
    'inbox_id' => 'inboxId',
    'name' => 'name',
    'field' => 'field',
    'match' => 'match',
    'reply_to' => 'replyTo',
    'subject' => 'subject',
    'from' => 'from',
    'charset' => 'charset',
    'is_html' => 'isHTML',
    'ignore_reply_to' => 'ignoreReplyTo',
    'body' => 'body',
    'template_id' => 'templateId',
    'template_variables' => 'templateVariables'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;