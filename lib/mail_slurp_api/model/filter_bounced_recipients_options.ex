# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.FilterBouncedRecipientsOptions do
  @moduledoc """
  Options for filtering bounced email recipients
  """

  @derive [Poison.Encoder]
  defstruct [
    :"emailRecipients"
  ]

  @type t :: %__MODULE__{
    :"emailRecipients" => [String.t]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.FilterBouncedRecipientsOptions do
  def decode(value, _options) do
    value
  end
end

