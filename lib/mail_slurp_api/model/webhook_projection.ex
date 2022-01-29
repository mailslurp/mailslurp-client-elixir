# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookProjection do
  @moduledoc """
  Representation of a webhook
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"id",
    :"eventName",
    :"url",
    :"inboxId",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t | nil,
    :"id" => String.t,
    :"eventName" => String.t | nil,
    :"url" => String.t,
    :"inboxId" => String.t,
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookProjection do
  def decode(value, _options) do
    value
  end
end

