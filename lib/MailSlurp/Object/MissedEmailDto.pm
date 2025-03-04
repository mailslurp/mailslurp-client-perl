=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

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
package MailSlurp::Object::MissedEmailDto;

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
#Missed email
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

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



__PACKAGE__->class_documentation({description => 'Missed email',
                                  class => 'MissedEmailDto',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'user_id' => {
        datatype => 'string',
        base_name => 'userId',
        description => '',
        format => '',
        read_only => '',
            },
    'subject' => {
        datatype => 'string',
        base_name => 'subject',
        description => '',
        format => '',
        read_only => '',
            },
    'body_excerpt' => {
        datatype => 'string',
        base_name => 'bodyExcerpt',
        description => '',
        format => '',
        read_only => '',
            },
    'attachment_count' => {
        datatype => 'int',
        base_name => 'attachmentCount',
        description => '',
        format => '',
        read_only => '',
            },
    'from' => {
        datatype => 'string',
        base_name => 'from',
        description => '',
        format => '',
        read_only => '',
            },
    'raw_url' => {
        datatype => 'string',
        base_name => 'rawUrl',
        description => '',
        format => '',
        read_only => '',
            },
    'raw_key' => {
        datatype => 'string',
        base_name => 'rawKey',
        description => '',
        format => '',
        read_only => '',
            },
    'raw_bucket' => {
        datatype => 'string',
        base_name => 'rawBucket',
        description => '',
        format => '',
        read_only => '',
            },
    'can_restore' => {
        datatype => 'boolean',
        base_name => 'canRestore',
        description => '',
        format => '',
        read_only => '',
            },
    'to' => {
        datatype => 'ARRAY[string]',
        base_name => 'to',
        description => '',
        format => '',
        read_only => '',
            },
    'cc' => {
        datatype => 'ARRAY[string]',
        base_name => 'cc',
        description => '',
        format => '',
        read_only => '',
            },
    'bcc' => {
        datatype => 'ARRAY[string]',
        base_name => 'bcc',
        description => '',
        format => '',
        read_only => '',
            },
    'inbox_ids' => {
        datatype => 'ARRAY[string]',
        base_name => 'inboxIds',
        description => '',
        format => '',
        read_only => '',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'createdAt',
        description => '',
        format => '',
        read_only => '',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updatedAt',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'user_id' => 'string',
    'subject' => 'string',
    'body_excerpt' => 'string',
    'attachment_count' => 'int',
    'from' => 'string',
    'raw_url' => 'string',
    'raw_key' => 'string',
    'raw_bucket' => 'string',
    'can_restore' => 'boolean',
    'to' => 'ARRAY[string]',
    'cc' => 'ARRAY[string]',
    'bcc' => 'ARRAY[string]',
    'inbox_ids' => 'ARRAY[string]',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'user_id' => 'userId',
    'subject' => 'subject',
    'body_excerpt' => 'bodyExcerpt',
    'attachment_count' => 'attachmentCount',
    'from' => 'from',
    'raw_url' => 'rawUrl',
    'raw_key' => 'rawKey',
    'raw_bucket' => 'rawBucket',
    'can_restore' => 'canRestore',
    'to' => 'to',
    'cc' => 'cc',
    'bcc' => 'bcc',
    'inbox_ids' => 'inboxIds',
    'created_at' => 'createdAt',
    'updated_at' => 'updatedAt'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
