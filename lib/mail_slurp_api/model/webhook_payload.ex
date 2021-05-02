# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookPayload do
  @moduledoc """
  MailSlurp webhook payload schema. This schema describes the JSON object that is sent via HTTP POST to webhook urls when an email is received by an inbox that a webhook is attached to. Payloads may be delivered multiple times so use the ID as a key for event uniqueness. The payload contains IDs for the email and inbox affected. Use these to fetch more data related to the event using appropriate inbox and email endpoints. See https://www.mailslurp.com/guides/email-webhooks/ for more information. Your webhook endpoint should accept POST HTTP request and return a 200 in under 30 seconds. Process the webhook asynchronously if you need to.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"attachmentMetaDatas",
    :"bcc",
    :"cc",
    :"createdAt",
    :"emailId",
    :"eventName",
    :"from",
    :"inboxId",
    :"messageId",
    :"subject",
    :"to",
    :"webhookId",
    :"webhookName"
  ]

  @type t :: %__MODULE__{
    :"attachmentMetaDatas" => [AttachmentMetaData] | nil,
    :"bcc" => [String.t] | nil,
    :"cc" => [String.t] | nil,
    :"createdAt" => DateTime.t | nil,
    :"emailId" => String.t | nil,
    :"eventName" => String.t | nil,
    :"from" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"messageId" => String.t | nil,
    :"subject" => String.t | nil,
    :"to" => [String.t] | nil,
    :"webhookId" => String.t | nil,
    :"webhookName" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookPayload do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"attachmentMetaDatas", :list, MailSlurpAPI.Model.AttachmentMetaData, options)
  end
end

