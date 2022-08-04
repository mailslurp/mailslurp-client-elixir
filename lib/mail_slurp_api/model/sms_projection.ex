# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SmsProjection do
  @moduledoc """
  SMS projection
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"body",
    :"userId",
    :"phoneNumber",
    :"createdAt",
    :"fromNumber",
    :"read"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"body" => String.t,
    :"userId" => String.t,
    :"phoneNumber" => String.t,
    :"createdAt" => DateTime.t,
    :"fromNumber" => String.t,
    :"read" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SmsProjection do
  def decode(value, _options) do
    value
  end
end
