# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.WebhookNewContactPayload do
  @moduledoc """
  NEW_CONTACT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains a recipient that has not been saved as a contact.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"messageId",
    :"webhookId",
    :"webhookName",
    :"eventName",
    :"contactId",
    :"groupId",
    :"firstName",
    :"lastName",
    :"company",
    :"primaryEmailAddress",
    :"emailAddresses",
    :"tags",
    :"metaData",
    :"optOut",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"messageId" => String.t,
    :"webhookId" => String.t,
    :"webhookName" => String.t | nil,
    :"eventName" => String.t,
    :"contactId" => String.t,
    :"groupId" => String.t | nil,
    :"firstName" => String.t | nil,
    :"lastName" => String.t | nil,
    :"company" => String.t | nil,
    :"primaryEmailAddress" => String.t | nil,
    :"emailAddresses" => [String.t],
    :"tags" => [String.t],
    :"metaData" => Map | nil,
    :"optOut" => boolean() | nil,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.WebhookNewContactPayload do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metaData", :struct, MailSlurpAPI.Model.Map, options)
  end
end

