=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('MailSlurp::DomainControllerApi');

my $api = MailSlurp::DomainControllerApi->new();
isa_ok($api, 'MailSlurp::DomainControllerApi');

#
# add_domain_wildcard_catch_all test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->add_domain_wildcard_catch_all(id => $id);
}

#
# create_domain test
#
{
    my $domain_options = undef; # replace NULL with a proper value
    my $result = $api->create_domain(domain_options => $domain_options);
}

#
# delete_domain test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_domain(id => $id);
}

#
# get_domain test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_domain(id => $id);
}

#
# get_domains test
#
{
    my $result = $api->get_domains();
}

#
# update_domain test
#
{
    my $id = undef; # replace NULL with a proper value
    my $update_domain_dto = undef; # replace NULL with a proper value
    my $result = $api->update_domain(id => $id, update_domain_dto => $update_domain_dto);
}


1;
