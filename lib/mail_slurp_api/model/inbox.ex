# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.Inbox do
  @moduledoc """
  Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; mailboxes. The default, &#x60;HTTP&#x60; inboxes, use AWS SES to process emails and are best suited as test email accounts. &#x60;SMTP&#x60; inboxes use a custom mail server at &#x60;mx.mailslurp.com&#x60; and are best used for public facing email addresses. Use the &#x60;EmailController&#x60; or the &#x60;InboxController&#x60; methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching. Inboxes can be private or allow team access. Team access enabled inboxes can be seen by other members of an organization. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdAt",
    :"description",
    :"emailAddress",
    :"expiresAt",
    :"favourite",
    :"id",
    :"inboxType",
    :"name",
    :"readOnly",
    :"tags",
    :"teamAccess",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"createdAt" => DateTime.t | nil,
    :"description" => String.t | nil,
    :"emailAddress" => String.t | nil,
    :"expiresAt" => String.t | nil,
    :"favourite" => boolean() | nil,
    :"id" => String.t | nil,
    :"inboxType" => String.t | nil,
    :"name" => String.t | nil,
    :"readOnly" => boolean() | nil,
    :"tags" => [String.t] | nil,
    :"teamAccess" => boolean() | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.Inbox do
  def decode(value, _options) do
    value
  end
end

