# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.Email do
  @moduledoc """
  Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The &#x60;body&#x60; contains the email content. If you want the original SMTP message see the &#x60;getRawEmail&#x60; endpoints. The attachments can be fetched using the AttachmentController
  """

  @derive [Poison.Encoder]
  defstruct [
    :"analysis",
    :"attachments",
    :"bcc",
    :"body",
    :"bodyExcerpt",
    :"bodyMD5Hash",
    :"cc",
    :"charset",
    :"createdAt",
    :"from",
    :"headers",
    :"id",
    :"inboxId",
    :"isHTML",
    :"read",
    :"replyTo",
    :"subject",
    :"teamAccess",
    :"to",
    :"updatedAt",
    :"userId"
  ]

  @type t :: %__MODULE__{
    :"analysis" => EmailAnalysis | nil,
    :"attachments" => [String.t] | nil,
    :"bcc" => [String.t] | nil,
    :"body" => String.t | nil,
    :"bodyExcerpt" => String.t | nil,
    :"bodyMD5Hash" => String.t | nil,
    :"cc" => [String.t] | nil,
    :"charset" => String.t | nil,
    :"createdAt" => DateTime.t | nil,
    :"from" => String.t | nil,
    :"headers" => %{optional(String.t) => String.t} | nil,
    :"id" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"isHTML" => boolean() | nil,
    :"read" => boolean() | nil,
    :"replyTo" => String.t | nil,
    :"subject" => String.t | nil,
    :"teamAccess" => boolean() | nil,
    :"to" => [String.t] | nil,
    :"updatedAt" => DateTime.t | nil,
    :"userId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.Email do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"analysis", :struct, MailSlurpAPI.Model.EmailAnalysis, options)
  end
end

