# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.TemplateVariable do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"variableType"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"variableType" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.TemplateVariable do
  def decode(value, _options) do
    value
  end
end

