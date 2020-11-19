# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookDto do
  @moduledoc """
  Representation of a webhook for an inbox. The URL specified will be using by MailSlurp whenever an email is received by the attached inbox.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"basicAuth",
    :"createdAt",
    :"id",
    :"inboxId",
    :"method",
    :"name",
    :"payloadJsonSchema",
    :"updatedAt",
    :"url"
  ]

  @type t :: %__MODULE__{
    :"basicAuth" => boolean() | nil,
    :"createdAt" => DateTime.t | nil,
    :"id" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"method" => String.t | nil,
    :"name" => String.t | nil,
    :"payloadJsonSchema" => String.t | nil,
    :"updatedAt" => DateTime.t,
    :"url" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookDto do
  def decode(value, _options) do
    value
  end
end
