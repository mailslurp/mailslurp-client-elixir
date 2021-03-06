# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ContactProjection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"company",
    :"createdAt",
    :"emailAddresses",
    :"firstName",
    :"groupId",
    :"id",
    :"lastName",
    :"optOut"
  ]

  @type t :: %__MODULE__{
    :"company" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"emailAddresses" => [String.t] | nil,
    :"firstName" => String.t | nil,
    :"groupId" => String.t | nil,
    :"id" => String.t,
    :"lastName" => String.t | nil,
    :"optOut" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ContactProjection do
  def decode(value, _options) do
    value
  end
end

