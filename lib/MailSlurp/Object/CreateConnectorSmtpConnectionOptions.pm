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
package MailSlurp::Object::CreateConnectorSmtpConnectionOptions;

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
                                  class => 'CreateConnectorSmtpConnectionOptions',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'enabled' => {
        datatype => 'boolean',
        base_name => 'enabled',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_host' => {
        datatype => 'string',
        base_name => 'smtpHost',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_port' => {
        datatype => 'int',
        base_name => 'smtpPort',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_ssl' => {
        datatype => 'boolean',
        base_name => 'smtpSsl',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_username' => {
        datatype => 'string',
        base_name => 'smtpUsername',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_password' => {
        datatype => 'string',
        base_name => 'smtpPassword',
        description => '',
        format => '',
        read_only => '',
            },
    'smtp_mechanisms' => {
        datatype => 'ARRAY[string]',
        base_name => 'smtpMechanisms',
        description => '',
        format => '',
        read_only => '',
            },
    'start_tls' => {
        datatype => 'boolean',
        base_name => 'startTls',
        description => '',
        format => '',
        read_only => '',
            },
    'local_host_name' => {
        datatype => 'string',
        base_name => 'localHostName',
        description => '',
        format => '',
        read_only => '',
            },
    'proxy_host' => {
        datatype => 'string',
        base_name => 'proxyHost',
        description => '',
        format => '',
        read_only => '',
            },
    'proxy_port' => {
        datatype => 'int',
        base_name => 'proxyPort',
        description => '',
        format => '',
        read_only => '',
            },
    'proxy_enabled' => {
        datatype => 'boolean',
        base_name => 'proxyEnabled',
        description => '',
        format => '',
        read_only => '',
            },
    'ssl_trust' => {
        datatype => 'string',
        base_name => 'sslTrust',
        description => '',
        format => '',
        read_only => '',
            },
    'ssl_protocols' => {
        datatype => 'ARRAY[string]',
        base_name => 'sslProtocols',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'enabled' => 'boolean',
    'smtp_host' => 'string',
    'smtp_port' => 'int',
    'smtp_ssl' => 'boolean',
    'smtp_username' => 'string',
    'smtp_password' => 'string',
    'smtp_mechanisms' => 'ARRAY[string]',
    'start_tls' => 'boolean',
    'local_host_name' => 'string',
    'proxy_host' => 'string',
    'proxy_port' => 'int',
    'proxy_enabled' => 'boolean',
    'ssl_trust' => 'string',
    'ssl_protocols' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'enabled' => 'enabled',
    'smtp_host' => 'smtpHost',
    'smtp_port' => 'smtpPort',
    'smtp_ssl' => 'smtpSsl',
    'smtp_username' => 'smtpUsername',
    'smtp_password' => 'smtpPassword',
    'smtp_mechanisms' => 'smtpMechanisms',
    'start_tls' => 'startTls',
    'local_host_name' => 'localHostName',
    'proxy_host' => 'proxyHost',
    'proxy_port' => 'proxyPort',
    'proxy_enabled' => 'proxyEnabled',
    'ssl_trust' => 'sslTrust',
    'ssl_protocols' => 'sslProtocols'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
