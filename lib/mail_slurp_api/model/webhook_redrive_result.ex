# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookRedriveResult do
  @moduledoc """
  Result of retrying webhook
  """

  @derive [Poison.Encoder]
  defstruct [
    :"webhookResultId",
    :"success",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"webhookResultId" => String.t,
    :"success" => boolean(),
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookRedriveResult do
  def decode(value, _options) do
    value
  end
end

