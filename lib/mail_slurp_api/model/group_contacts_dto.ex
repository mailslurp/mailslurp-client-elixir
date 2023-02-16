# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.GroupContactsDto do
  @moduledoc """
  Describes contacts attached to a contact group
  """

  @derive [Poison.Encoder]
  defstruct [
    :"group",
    :"contacts"
  ]

  @type t :: %__MODULE__{
    :"group" => GroupDto,
    :"contacts" => [ContactDto]
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.GroupContactsDto do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"group", :struct, MailSlurpAPI.Model.GroupDto, options)
    |> deserialize(:"contacts", :list, MailSlurpAPI.Model.ContactDto, options)
  end
end

