# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailValidationRequestDto do
  @moduledoc """
  Email validation request
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"userId",
    :"emailAddress",
    :"isValid",
    :"createdAt",
    :"updatedAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"userId" => String.t,
    :"emailAddress" => String.t,
    :"isValid" => boolean(),
    :"createdAt" => DateTime.t,
    :"updatedAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailValidationRequestDto do
  def decode(value, _options) do
    value
  end
end
