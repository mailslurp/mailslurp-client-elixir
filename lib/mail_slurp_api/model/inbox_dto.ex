# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxDto do
  @moduledoc """
  Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; mailboxes. The default, &#x60;HTTP&#x60; inboxes, use AWS SES to process emails and are best suited as test email accounts and do not support IMAP or POP3. &#x60;SMTP&#x60; inboxes use a custom mail server at &#x60;mx.mailslurp.com&#x60; and support SMTP login, IMAP and POP3. Use the &#x60;EmailController&#x60; or the &#x60;InboxController&#x60; methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"createdAt",
    :"name",
    :"description",
    :"emailAddress",
    :"expiresAt",
    :"favourite",
    :"tags",
    :"inboxType",
    :"readOnly",
    :"virtualInbox"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"name" => String.t | nil,
    :"description" => String.t | nil,
    :"emailAddress" => String.t,
    :"expiresAt" => String.t | nil,
    :"favourite" => boolean(),
    :"tags" => [String.t] | nil,
    :"inboxType" => String.t | nil,
    :"readOnly" => boolean(),
    :"virtualInbox" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxDto do
  def decode(value, _options) do
    value
  end
end

