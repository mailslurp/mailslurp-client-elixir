# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InlineObject1 do
  @moduledoc """
  Byte array request body
  """

  @derive [Poison.Encoder]
  defstruct [
    :"short",
    :"char",
    :"int",
    :"long",
    :"float",
    :"double",
    :"direct",
    :"readOnly"
  ]

  @type t :: %__MODULE__{
    :"short" => integer() | nil,
    :"char" => String.t | nil,
    :"int" => integer() | nil,
    :"long" => integer() | nil,
    :"float" => float() | nil,
    :"double" => float() | nil,
    :"direct" => boolean() | nil,
    :"readOnly" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InlineObject1 do
  def decode(value, _options) do
    value
  end
end

