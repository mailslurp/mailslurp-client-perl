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
package MailSlurp::Object::SearchEmailsOptions;

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
#
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



__PACKAGE__->class_documentation({description => '',
                                  class => 'SearchEmailsOptions',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'inbox_ids' => {
        datatype => 'ARRAY[string]',
        base_name => 'inboxIds',
        description => 'Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.',
        format => '',
        read_only => '',
            },
    'page_index' => {
        datatype => 'int',
        base_name => 'pageIndex',
        description => 'Optional page index in email list pagination',
        format => '',
        read_only => '',
            },
    'page_size' => {
        datatype => 'int',
        base_name => 'pageSize',
        description => 'Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results',
        format => '',
        read_only => '',
            },
    'sort_direction' => {
        datatype => 'string',
        base_name => 'sortDirection',
        description => 'Optional createdAt sort direction ASC or DESC',
        format => '',
        read_only => '',
            },
    'unread_only' => {
        datatype => 'boolean',
        base_name => 'unreadOnly',
        description => 'Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly',
        format => '',
        read_only => '',
            },
    'search_filter' => {
        datatype => 'string',
        base_name => 'searchFilter',
        description => 'Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body',
        format => '',
        read_only => '',
            },
    'since' => {
        datatype => 'DateTime',
        base_name => 'since',
        description => 'Optional filter emails received after given date time',
        format => '',
        read_only => '',
            },
    'before' => {
        datatype => 'DateTime',
        base_name => 'before',
        description => 'Optional filter emails received before given date time',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'inbox_ids' => 'ARRAY[string]',
    'page_index' => 'int',
    'page_size' => 'int',
    'sort_direction' => 'string',
    'unread_only' => 'boolean',
    'search_filter' => 'string',
    'since' => 'DateTime',
    'before' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'inbox_ids' => 'inboxIds',
    'page_index' => 'pageIndex',
    'page_size' => 'pageSize',
    'sort_direction' => 'sortDirection',
    'unread_only' => 'unreadOnly',
    'search_filter' => 'searchFilter',
    'since' => 'since',
    'before' => 'before'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
