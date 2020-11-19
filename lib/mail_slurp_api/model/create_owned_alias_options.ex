# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.CreateOwnedAliasOptions do
  @moduledoc """
  Create email alias options. Email aliases can be used to mask real email addresses behind an ID. You can also attach an inbox to an alias so that any email received by the inbox email address if forwarded to the alias email address.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"emailAddress",
    :"inboxId",
    :"name",
    :"proxied"
  ]

  @type t :: %__MODULE__{
    :"emailAddress" => String.t | nil,
    :"inboxId" => String.t | nil,
    :"name" => String.t | nil,
    :"proxied" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.CreateOwnedAliasOptions do
  def decode(value, _options) do
    value
  end
end
