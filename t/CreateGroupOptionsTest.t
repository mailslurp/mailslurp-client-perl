=begin comment

MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by the OpenAPI Generator
# Please update the test cases below to test the model.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 2;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use_ok('MailSlurp::Object::CreateGroupOptions');

my $instance = MailSlurp::Object::CreateGroupOptions->new();

isa_ok($instance, 'MailSlurp::Object::CreateGroupOptions');

