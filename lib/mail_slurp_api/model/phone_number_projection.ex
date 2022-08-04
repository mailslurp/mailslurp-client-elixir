# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PhoneNumberProjection do
  @moduledoc """
  Phone number projection
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"phoneNumber",
    :"phoneCountry",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"phoneNumber" => String.t,
    :"phoneCountry" => String.t,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PhoneNumberProjection do
  def decode(value, _options) do
    value
  end
end
