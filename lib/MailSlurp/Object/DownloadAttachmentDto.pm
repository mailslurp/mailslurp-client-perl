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
package MailSlurp::Object::DownloadAttachmentDto;

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
#Content of attachment
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



__PACKAGE__->class_documentation({description => 'Content of attachment',
                                  class => 'DownloadAttachmentDto',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'base64_file_contents' => {
        datatype => 'string',
        base_name => 'base64FileContents',
        description => 'Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as &#x60;text/html&#x60; you can read the contents directly by converting it to string using &#x60;utf-8&#x60; encoding.',
        format => '',
        read_only => '',
            },
    'content_type' => {
        datatype => 'string',
        base_name => 'contentType',
        description => 'Content type of attachment. Examples are &#x60;image/png&#x60;, &#x60;application/msword&#x60;, &#x60;text/csv&#x60; etc.',
        format => '',
        read_only => '',
            },
    'size_bytes' => {
        datatype => 'int',
        base_name => 'sizeBytes',
        description => 'Size in bytes of attachment content',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'base64_file_contents' => 'string',
    'content_type' => 'string',
    'size_bytes' => 'int'
} );

__PACKAGE__->attribute_map( {
    'base64_file_contents' => 'base64FileContents',
    'content_type' => 'contentType',
    'size_bytes' => 'sizeBytes'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
