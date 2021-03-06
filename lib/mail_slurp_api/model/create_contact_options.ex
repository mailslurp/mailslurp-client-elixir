# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateContactOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"emailAddresses",
    :"firstName",
    :"groupId",
    :"metaData",
    :"optOut",
    :"tags",
    :"lastName",
    :"company"
  ]

  @type t :: %__MODULE__{
    :"emailAddresses" => [String.t] | nil,
    :"firstName" => String.t | nil,
    :"groupId" => String.t | nil,
    :"metaData" => Map | nil,
    :"optOut" => boolean() | nil,
    :"tags" => [String.t] | nil,
    :"lastName" => String.t | nil,
    :"company" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateContactOptions do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metaData", :struct, MailSlurpAPI.Model.Map, options)
  end
end

