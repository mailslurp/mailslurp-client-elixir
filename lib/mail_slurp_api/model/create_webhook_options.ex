# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateWebhookOptions do
  @moduledoc """
  Options for creating a webhook. Webhooks can be attached to inboxes and MailSlurp will POST a webhook payload to the URL specified whenever the webhook&#39;s event is triggered. Webhooks are great for processing many inbound emails and responding to other events at scale. Customize the payload sent to your endpoint by setting the &#x60;requestBodyTemplate&#x60; property to a string with moustache style variables. Property names from the standard payload model for the given event are available as variables.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"url",
    :"basicAuth",
    :"name",
    :"eventName",
    :"includeHeaders",
    :"requestBodyTemplate",
    :"useStaticIpRange",
    :"ignoreInsecureSslCertificates"
  ]

  @type t :: %__MODULE__{
    :"url" => String.t,
    :"basicAuth" => BasicAuthOptions | nil,
    :"name" => String.t | nil,
    :"eventName" => String.t | nil,
    :"includeHeaders" => WebhookHeaders | nil,
    :"requestBodyTemplate" => String.t | nil,
    :"useStaticIpRange" => boolean() | nil,
    :"ignoreInsecureSslCertificates" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateWebhookOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"basicAuth", :struct, MailSlurpAPI.Model.BasicAuthOptions, options)
    |> deserialize(:"includeHeaders", :struct, MailSlurpAPI.Model.WebhookHeaders, options)
  end
end

