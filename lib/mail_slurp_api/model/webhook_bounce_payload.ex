# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookBouncePayload do
  @moduledoc """
  BOUNCE webhook payload. Sent to your webhook url endpoint via HTTP POST when an email bounced or was rejected by a recipient. Save the recipients to a ban list on your server and avoid emailing them again. It is recommended you also listen to the BOUNCE_RECIPIENT payload.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"messageId",
    :"webhookId",
    :"eventName",
    :"webhookName",
    :"bounceId",
    :"sentToRecipients",
    :"sender",
    :"bounceRecipients"
  ]

  @type t :: %__MODULE__{
    :"messageId" => String.t,
    :"webhookId" => String.t,
    :"eventName" => String.t,
    :"webhookName" => String.t | nil,
    :"bounceId" => String.t,
    :"sentToRecipients" => [String.t] | nil,
    :"sender" => String.t,
    :"bounceRecipients" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookBouncePayload do
  def decode(value, _options) do
    value
  end
end
