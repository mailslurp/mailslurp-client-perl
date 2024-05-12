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
package MailSlurp::Object::PageInboxProjection;

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

use MailSlurp::Object::InboxPreview;
use MailSlurp::Object::PageableObject;
use MailSlurp::Object::SortObject;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Paginated inbox results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
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



__PACKAGE__->class_documentation({description => 'Paginated inbox results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.',
                                  class => 'PageInboxProjection',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'content' => {
        datatype => 'ARRAY[InboxPreview]',
        base_name => 'content',
        description => '',
        format => '',
        read_only => '',
            },
    'pageable' => {
        datatype => 'PageableObject',
        base_name => 'pageable',
        description => '',
        format => '',
        read_only => '',
            },
    'total_pages' => {
        datatype => 'int',
        base_name => 'totalPages',
        description => '',
        format => '',
        read_only => '',
            },
    'total_elements' => {
        datatype => 'int',
        base_name => 'totalElements',
        description => '',
        format => '',
        read_only => '',
            },
    'last' => {
        datatype => 'boolean',
        base_name => 'last',
        description => '',
        format => '',
        read_only => '',
            },
    'number_of_elements' => {
        datatype => 'int',
        base_name => 'numberOfElements',
        description => '',
        format => '',
        read_only => '',
            },
    'size' => {
        datatype => 'int',
        base_name => 'size',
        description => '',
        format => '',
        read_only => '',
            },
    'number' => {
        datatype => 'int',
        base_name => 'number',
        description => '',
        format => '',
        read_only => '',
            },
    'sort' => {
        datatype => 'SortObject',
        base_name => 'sort',
        description => '',
        format => '',
        read_only => '',
            },
    'first' => {
        datatype => 'boolean',
        base_name => 'first',
        description => '',
        format => '',
        read_only => '',
            },
    'empty' => {
        datatype => 'boolean',
        base_name => 'empty',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'content' => 'ARRAY[InboxPreview]',
    'pageable' => 'PageableObject',
    'total_pages' => 'int',
    'total_elements' => 'int',
    'last' => 'boolean',
    'number_of_elements' => 'int',
    'size' => 'int',
    'number' => 'int',
    'sort' => 'SortObject',
    'first' => 'boolean',
    'empty' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'content' => 'content',
    'pageable' => 'pageable',
    'total_pages' => 'totalPages',
    'total_elements' => 'totalElements',
    'last' => 'last',
    'number_of_elements' => 'numberOfElements',
    'size' => 'size',
    'number' => 'number',
    'sort' => 'sort',
    'first' => 'first',
    'empty' => 'empty'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
