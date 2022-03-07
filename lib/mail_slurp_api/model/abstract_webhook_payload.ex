# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AbstractWebhookPayload do
  @moduledoc """
  Abstract webhook payload. Use the correct payload type for your webhook event type in order to access all the specific properties for that event. See the &#x60;NEW_EMAIL&#x60;,&#x60;NEW_CONTACT&#x60;, &#x60;NEW_ATTACHMENT&#x60; and &#x60;EMAIL_OPENED&#x60; payloads for the properties available for those events.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"eventName",
    :"webhookId",
    :"messageId",
    :"webhookName"
  ]

  @type t :: %__MODULE__{
    :"eventName" => String.t,
    :"webhookId" => String.t,
    :"messageId" => String.t,
    :"webhookName" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AbstractWebhookPayload do
  def decode(value, _options) do
    value
  end
end

