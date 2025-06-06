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
package MailSlurp::Object::Email;

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

use MailSlurp::Object::EmailAnalysis;
use MailSlurp::Object::EmailRecipients;
use MailSlurp::Object::Sender;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The &#x60;body&#x60; contains the email content. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoints. The attachments can be fetched using the AttachmentController
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



__PACKAGE__->class_documentation({description => 'Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The &#x60;body&#x60; contains the email content. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoints. The attachments can be fetched using the AttachmentController',
                                  class => 'Email',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => 'ID of the email entity',
        format => '',
        read_only => '',
            },
    'user_id' => {
        datatype => 'string',
        base_name => 'userId',
        description => 'ID of user that email belongs to',
        format => '',
        read_only => '',
            },
    'inbox_id' => {
        datatype => 'string',
        base_name => 'inboxId',
        description => 'ID of the inbox that received the email',
        format => '',
        read_only => '',
            },
    'domain_id' => {
        datatype => 'string',
        base_name => 'domainId',
        description => 'ID of the domain that received the email',
        format => '',
        read_only => '',
            },
    'to' => {
        datatype => 'ARRAY[string]',
        base_name => 'to',
        description => 'List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names.',
        format => '',
        read_only => '',
            },
    'from' => {
        datatype => 'string',
        base_name => 'from',
        description => 'Who the email was sent from. An email address - see fromName for the sender name.',
        format => '',
        read_only => '',
            },
    'sender' => {
        datatype => 'Sender',
        base_name => 'sender',
        description => '',
        format => '',
        read_only => '',
            },
    'recipients' => {
        datatype => 'EmailRecipients',
        base_name => 'recipients',
        description => '',
        format => '',
        read_only => '',
            },
    'reply_to' => {
        datatype => 'string',
        base_name => 'replyTo',
        description => 'The &#x60;replyTo&#x60; field on the received email message',
        format => '',
        read_only => '',
            },
    'cc' => {
        datatype => 'ARRAY[string]',
        base_name => 'cc',
        description => 'List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names.',
        format => '',
        read_only => '',
            },
    'bcc' => {
        datatype => 'ARRAY[string]',
        base_name => 'bcc',
        description => 'List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names.',
        format => '',
        read_only => '',
            },
    'headers' => {
        datatype => 'HASH[string,string]',
        base_name => 'headers',
        description => 'Collection of SMTP headers attached to email',
        format => '',
        read_only => '',
            },
    'headers_map' => {
        datatype => 'HASH[string,ARRAY[string]]',
        base_name => 'headersMap',
        description => 'Multi-value map of SMTP headers attached to email',
        format => '',
        read_only => '',
            },
    'attachments' => {
        datatype => 'ARRAY[string]',
        base_name => 'attachments',
        description => 'List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.',
        format => '',
        read_only => '',
            },
    'subject' => {
        datatype => 'string',
        base_name => 'subject',
        description => 'The subject line of the email message as specified by SMTP subject header',
        format => '',
        read_only => '',
            },
    'body' => {
        datatype => 'string',
        base_name => 'body',
        description => 'The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.',
        format => '',
        read_only => '',
            },
    'body_excerpt' => {
        datatype => 'string',
        base_name => 'bodyExcerpt',
        description => 'An excerpt of the body of the email message for quick preview. Takes HTML content part if exists falls back to TEXT content part if not',
        format => '',
        read_only => '',
            },
    'text_excerpt' => {
        datatype => 'string',
        base_name => 'textExcerpt',
        description => 'An excerpt of the body of the email message for quick preview. Takes TEXT content part if exists',
        format => '',
        read_only => '',
            },
    'body_md5_hash' => {
        datatype => 'string',
        base_name => 'bodyMD5Hash',
        description => 'A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.',
        format => '',
        read_only => '',
            },
    'is_html' => {
        datatype => 'boolean',
        base_name => 'isHTML',
        description => 'Is the email body content type HTML?',
        format => '',
        read_only => '',
            },
    'charset' => {
        datatype => 'string',
        base_name => 'charset',
        description => 'Detected character set of the email body such as UTF-8',
        format => '',
        read_only => '',
            },
    'analysis' => {
        datatype => 'EmailAnalysis',
        base_name => 'analysis',
        description => '',
        format => '',
        read_only => '',
            },
    'created_at' => {
        datatype => 'DateTime',
        base_name => 'createdAt',
        description => 'When was the email received by MailSlurp',
        format => '',
        read_only => '',
            },
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updatedAt',
        description => 'When was the email last updated',
        format => '',
        read_only => '',
            },
    'read' => {
        datatype => 'boolean',
        base_name => 'read',
        description => 'Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.',
        format => '',
        read_only => '',
            },
    'team_access' => {
        datatype => 'boolean',
        base_name => 'teamAccess',
        description => 'Can the email be accessed by organization team members',
        format => '',
        read_only => '',
            },
    'is_x_amp_html' => {
        datatype => 'boolean',
        base_name => 'isXAmpHtml',
        description => 'Is the email body content type x-amp-html Amp4Email?',
        format => '',
        read_only => '',
            },
    'body_part_content_types' => {
        datatype => 'ARRAY[string]',
        base_name => 'bodyPartContentTypes',
        description => 'A list of detected multipart mime message body part content types such as text/plain and text/html. Can be used with email bodyPart endpoints to fetch individual body parts.',
        format => '',
        read_only => '',
            },
    'external_id' => {
        datatype => 'string',
        base_name => 'externalId',
        description => 'UID used by external IMAP server to identify email',
        format => '',
        read_only => '',
            },
    'message_id' => {
        datatype => 'string',
        base_name => 'messageId',
        description => 'RFC 5322 Message-ID header value without angle brackets.',
        format => '',
        read_only => '',
            },
    'thread_id' => {
        datatype => 'string',
        base_name => 'threadId',
        description => 'MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields.',
        format => '',
        read_only => '',
            },
    'in_reply_to' => {
        datatype => 'string',
        base_name => 'inReplyTo',
        description => 'Parsed value of In-Reply-To header. A Message-ID in a thread.',
        format => '',
        read_only => '',
            },
    'favourite' => {
        datatype => 'boolean',
        base_name => 'favourite',
        description => 'Is email favourited',
        format => '',
        read_only => '',
            },
    'size_bytes' => {
        datatype => 'int',
        base_name => 'sizeBytes',
        description => 'Size of raw email message in bytes',
        format => '',
        read_only => '',
            },
    'html' => {
        datatype => 'boolean',
        base_name => 'html',
        description => '',
        format => '',
        read_only => '',
            },
    'xamp_html' => {
        datatype => 'boolean',
        base_name => 'xampHtml',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'user_id' => 'string',
    'inbox_id' => 'string',
    'domain_id' => 'string',
    'to' => 'ARRAY[string]',
    'from' => 'string',
    'sender' => 'Sender',
    'recipients' => 'EmailRecipients',
    'reply_to' => 'string',
    'cc' => 'ARRAY[string]',
    'bcc' => 'ARRAY[string]',
    'headers' => 'HASH[string,string]',
    'headers_map' => 'HASH[string,ARRAY[string]]',
    'attachments' => 'ARRAY[string]',
    'subject' => 'string',
    'body' => 'string',
    'body_excerpt' => 'string',
    'text_excerpt' => 'string',
    'body_md5_hash' => 'string',
    'is_html' => 'boolean',
    'charset' => 'string',
    'analysis' => 'EmailAnalysis',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'read' => 'boolean',
    'team_access' => 'boolean',
    'is_x_amp_html' => 'boolean',
    'body_part_content_types' => 'ARRAY[string]',
    'external_id' => 'string',
    'message_id' => 'string',
    'thread_id' => 'string',
    'in_reply_to' => 'string',
    'favourite' => 'boolean',
    'size_bytes' => 'int',
    'html' => 'boolean',
    'xamp_html' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'user_id' => 'userId',
    'inbox_id' => 'inboxId',
    'domain_id' => 'domainId',
    'to' => 'to',
    'from' => 'from',
    'sender' => 'sender',
    'recipients' => 'recipients',
    'reply_to' => 'replyTo',
    'cc' => 'cc',
    'bcc' => 'bcc',
    'headers' => 'headers',
    'headers_map' => 'headersMap',
    'attachments' => 'attachments',
    'subject' => 'subject',
    'body' => 'body',
    'body_excerpt' => 'bodyExcerpt',
    'text_excerpt' => 'textExcerpt',
    'body_md5_hash' => 'bodyMD5Hash',
    'is_html' => 'isHTML',
    'charset' => 'charset',
    'analysis' => 'analysis',
    'created_at' => 'createdAt',
    'updated_at' => 'updatedAt',
    'read' => 'read',
    'team_access' => 'teamAccess',
    'is_x_amp_html' => 'isXAmpHtml',
    'body_part_content_types' => 'bodyPartContentTypes',
    'external_id' => 'externalId',
    'message_id' => 'messageId',
    'thread_id' => 'threadId',
    'in_reply_to' => 'inReplyTo',
    'favourite' => 'favourite',
    'size_bytes' => 'sizeBytes',
    'html' => 'html',
    'xamp_html' => 'xampHtml'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
