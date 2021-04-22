# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ValidationMessage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"lineNumber",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"lineNumber" => integer(),
    :"message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ValidationMessage do
  def decode(value, _options) do
    value
  end
end

