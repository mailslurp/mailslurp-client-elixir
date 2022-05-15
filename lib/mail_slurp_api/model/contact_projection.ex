# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ContactProjection do
  @moduledoc """
  Email contact for address book
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"groupId",
    :"createdAt",
    :"firstName",
    :"lastName",
    :"company",
    :"emailAddresses",
    :"optOut"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"groupId" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"firstName" => String.t | nil,
    :"lastName" => String.t | nil,
    :"company" => String.t | nil,
    :"emailAddresses" => [String.t] | nil,
    :"optOut" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ContactProjection do
  def decode(value, _options) do
    value
  end
end

