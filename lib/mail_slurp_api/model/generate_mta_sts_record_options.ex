# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.GenerateMtaStsRecordOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"host",
    :"version",
    :"mode",
    :"ttl",
    :"maxAgeSeconds",
    :"mxRecords"
  ]

  @type t :: %__MODULE__{
    :"host" => String.t,
    :"version" => String.t,
    :"mode" => String.t,
    :"ttl" => integer(),
    :"maxAgeSeconds" => integer(),
    :"mxRecords" => [String.t]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.GenerateMtaStsRecordOptions do
  def decode(value, _options) do
    value
  end
end

