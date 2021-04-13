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

use_ok('MailSlurp::BulkActionsControllerApi');

my $api = MailSlurp::BulkActionsControllerApi->new();
isa_ok($api, 'MailSlurp::BulkActionsControllerApi');

#
# bulk_create_inboxes test
#
{
    my $count = undef; # replace NULL with a proper value
    my $result = $api->bulk_create_inboxes(count => $count);
}

#
# bulk_delete_inboxes test
#
{
    my $ids = undef; # replace NULL with a proper value
    my $result = $api->bulk_delete_inboxes(ids => $ids);
}

#
# bulk_send_emails test
#
{
    my $bulk_send_email_options = undef; # replace NULL with a proper value
    my $result = $api->bulk_send_emails(bulk_send_email_options => $bulk_send_email_options);
}


1;
