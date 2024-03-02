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
package MailSlurp::Configuration;

use strict;
use warnings;
use utf8;

use Log::Any qw($log);
use Carp;

use constant VERSION => '15.18.4';

=head1 Name

        MailSlurp::Configuration - holds the configuration for all MailSlurp Modules

=head1 new(%parameters)

=over 4

=item http_timeout: (optional)

Integer. timeout for HTTP requests in seconds

default: 180

=item http_user_agent: (optional)

String. custom UserAgent header

default: OpenAPI-Generator/15.18.4/perl

=item api_key: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens).

    api_key => {
        secretKey => 'aaaabbbbccccdddd',
        anotherKey => '1111222233334444',
    };

=item api_key_prefix: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens). Note not all api keys require a prefix.

    api_key_prefix => {
        secretKey => 'string',
        anotherKey => 'same or some other string',
    };

=item api_key_in: (optional)

=item username: (optional)

String. The username for basic auth.

=item password: (optional)

String. The password for basic auth.

=item access_token: (optional)

String. The OAuth access token.

=item base_url: (optional)

String. The base URL of the API

default: https://api.mailslurp.com

=back

=cut

sub new {
    my ($self, %p) = (shift,@_);

    # class/static variables
    $p{http_timeout} //= 180;
    $p{http_user_agent} //= 'OpenAPI-Generator/15.18.4/perl';

    # authentication setting
    $p{api_key} //= {};
    $p{api_key_prefix} //= {};
    $p{api_key_in} //= {};

    # username and password for HTTP basic authentication
    $p{username} //= '';
    $p{password} //= '';

    # access token for OAuth
    $p{access_token} //= '';

    # base_url
    $p{base_url} //= 'https://api.mailslurp.com';

    return bless \%p => $self;
}


sub get_tokens {
    my $self = shift;
   
    my $tokens = {};
    $tokens->{username} = $self->{username} if $self->{username};
    $tokens->{password} = $self->{password} if $self->{password};
    $tokens->{access_token} = $self->{access_token} if $self->{access_token};

    foreach my $token_name (keys %{ $self->{api_key} }) {
        $tokens->{$token_name}->{token} = $self->{api_key}{$token_name};
        $tokens->{$token_name}->{prefix} = $self->{api_key_prefix}{$token_name};
        $tokens->{$token_name}->{in} = $self->{api_key_in}{$token_name};
    }

    return $tokens;
}

sub clear_tokens {
    my $self = shift;
    my %tokens = %{$self->get_tokens}; # copy

    $self->{username} = '';
    $self->{password} = '';
    $self->{access_token} = '';

    $self->{api_key} = {};
    $self->{api_key_prefix} = {};
    $self->{api_key_in} = {};
  
    return \%tokens;
}

sub accept_tokens {
    my ($self, $tokens) = @_;
  
    foreach my $known_name (qw(username password access_token)) {
        next unless $tokens->{$known_name};
        $self->{$known_name} = delete $tokens->{$known_name};
    }

    foreach my $token_name (keys %$tokens) {
        $self->{api_key}{$token_name} = $tokens->{$token_name}{token};
        if ($tokens->{$token_name}{prefix}) {
            $self->{api_key_prefix}{$token_name} = $tokens->{$token_name}{prefix};
        }
        my $in = $tokens->{$token_name}->{in} || 'head';
        croak "Tokens can only go in 'head' or 'query' (not in '$in')" unless $in =~ /^(?:head|query)$/;
        $self->{api_key_in}{$token_name} = $in;
    }
}    

1;
