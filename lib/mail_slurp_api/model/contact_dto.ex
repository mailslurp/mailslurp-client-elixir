# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ContactDto do
  @moduledoc """
  Contact object. For saving a user in contact book.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"groupId",
    :"firstName",
    :"lastName",
    :"company",
    :"emailAddresses",
    :"primaryEmailAddress",
    :"tags",
    :"metaData",
    :"optOut",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"groupId" => String.t | nil,
    :"firstName" => String.t | nil,
    :"lastName" => String.t | nil,
    :"company" => String.t | nil,
    :"emailAddresses" => [String.t],
    :"primaryEmailAddress" => String.t | nil,
    :"tags" => [String.t],
    :"metaData" => Map | nil,
    :"optOut" => boolean() | nil,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ContactDto do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metaData", :struct, MailSlurpAPI.Model.Map, options)
  end
end

