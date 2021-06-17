# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookNewContactPayload do
  @moduledoc """
  NEW_CONTACT webhook payload
  """

  @derive [Poison.Encoder]
  defstruct [
    :"company",
    :"contactId",
    :"createdAt",
    :"emailAddresses",
    :"eventName",
    :"firstName",
    :"groupId",
    :"lastName",
    :"messageId",
    :"metaData",
    :"optOut",
    :"primaryEmailAddress",
    :"tags",
    :"webhookId",
    :"webhookName"
  ]

  @type t :: %__MODULE__{
    :"company" => String.t | nil,
    :"contactId" => String.t,
    :"createdAt" => DateTime.t,
    :"emailAddresses" => [String.t],
    :"eventName" => String.t | nil,
    :"firstName" => String.t | nil,
    :"groupId" => String.t | nil,
    :"lastName" => String.t | nil,
    :"messageId" => String.t | nil,
    :"metaData" => Map | nil,
    :"optOut" => boolean() | nil,
    :"primaryEmailAddress" => String.t | nil,
    :"tags" => [String.t],
    :"webhookId" => String.t | nil,
    :"webhookName" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookNewContactPayload do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metaData", :struct, MailSlurpAPI.Model.Map, options)
  end
end
