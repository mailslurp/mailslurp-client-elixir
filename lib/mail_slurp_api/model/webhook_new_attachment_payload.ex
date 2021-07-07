# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookNewAttachmentPayload do
  @moduledoc """
  NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"attachmentId",
    :"contentLength",
    :"contentType",
    :"eventName",
    :"messageId",
    :"name",
    :"webhookId",
    :"webhookName"
  ]

  @type t :: %__MODULE__{
    :"attachmentId" => String.t | nil,
    :"contentLength" => integer() | nil,
    :"contentType" => String.t | nil,
    :"eventName" => String.t | nil,
    :"messageId" => String.t | nil,
    :"name" => String.t | nil,
    :"webhookId" => String.t | nil,
    :"webhookName" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookNewAttachmentPayload do
  def decode(value, _options) do
    value
  end
end

