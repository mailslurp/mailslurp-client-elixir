# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxIdsResult do
  @moduledoc """
  List of inbox IDs and email addresses
  """

  @derive [Poison.Encoder]
  defstruct [
    :"inboxIds"
  ]

  @type t :: %__MODULE__{
    :"inboxIds" => [InboxIdItem]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxIdsResult do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"inboxIds", :list, MailSlurpAPI.Model.InboxIdItem, options)
  end
end

