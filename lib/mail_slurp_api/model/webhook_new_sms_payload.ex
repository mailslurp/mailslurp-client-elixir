# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookNewSmsPayload do
  @moduledoc """
  NEW_SMS webhook payload. Sent to your webhook url endpoint via HTTP POST when an sms is received by the phone number that your webhook is attached to. Use the SMS ID to fetch the full SMS details.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"messageId",
    :"webhookId",
    :"eventName",
    :"webhookName",
    :"smsId",
    :"userId",
    :"phoneNumber",
    :"toNumber",
    :"fromNumber",
    :"body",
    :"read"
  ]

  @type t :: %__MODULE__{
    :"messageId" => String.t,
    :"webhookId" => String.t,
    :"eventName" => String.t,
    :"webhookName" => String.t | nil,
    :"smsId" => String.t,
    :"userId" => String.t,
    :"phoneNumber" => String.t,
    :"toNumber" => String.t,
    :"fromNumber" => String.t,
    :"body" => String.t,
    :"read" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookNewSmsPayload do
  def decode(value, _options) do
    value
  end
end

