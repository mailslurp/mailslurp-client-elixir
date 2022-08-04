# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SmsPreview do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"body",
    :"phoneNumber",
    :"fromNumber",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"body" => String.t,
    :"phoneNumber" => String.t,
    :"fromNumber" => String.t,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SmsPreview do
  def decode(value, _options) do
    value
  end
end
