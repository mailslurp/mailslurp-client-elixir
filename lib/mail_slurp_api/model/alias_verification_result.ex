# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.AliasVerificationResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"aliasId",
    :"isVerified",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"aliasId" => String.t,
    :"isVerified" => boolean(),
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.AliasVerificationResult do
  def decode(value, _options) do
    value
  end
end

