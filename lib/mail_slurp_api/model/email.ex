# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.Email do
  @moduledoc """
  Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The &#x60;body&#x60; contains the email content. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoints. The attachments can be fetched using the AttachmentController
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"inboxId",
    :"domainId",
    :"to",
    :"from",
    :"sender",
    :"recipients",
    :"replyTo",
    :"cc",
    :"bcc",
    :"headers",
    :"headersMap",
    :"attachments",
    :"subject",
    :"body",
    :"bodyExcerpt",
    :"bodyMD5Hash",
    :"isHTML",
    :"charset",
    :"analysis",
    :"createdAt",
    :"updatedAt",
    :"read",
    :"teamAccess",
    :"html"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"inboxId" => String.t,
    :"domainId" => String.t | nil,
    :"to" => [String.t],
    :"from" => String.t | nil,
    :"sender" => Sender | nil,
    :"recipients" => EmailRecipients | nil,
    :"replyTo" => String.t | nil,
    :"cc" => [String.t] | nil,
    :"bcc" => [String.t] | nil,
    :"headers" => %{optional(String.t) => String.t} | nil,
    :"headersMap" => %{optional(String.t) => [String.t]} | nil,
    :"attachments" => [String.t] | nil,
    :"subject" => String.t | nil,
    :"body" => String.t | nil,
    :"bodyExcerpt" => String.t | nil,
    :"bodyMD5Hash" => String.t | nil,
    :"isHTML" => boolean() | nil,
    :"charset" => String.t | nil,
    :"analysis" => EmailAnalysis | nil,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t,
    :"read" => boolean(),
    :"teamAccess" => boolean(),
    :"html" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.Email do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sender", :struct, MailSlurpAPI.Model.Sender, options)
    |> deserialize(:"recipients", :struct, MailSlurpAPI.Model.EmailRecipients, options)
    |> deserialize(:"analysis", :struct, MailSlurpAPI.Model.EmailAnalysis, options)
  end
end

