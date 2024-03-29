# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxByEmailAddressResult do
  @moduledoc """
  Result of search for inbox by email address
  """

  @derive [Poison.Encoder]
  defstruct [
    :"inboxId",
    :"exists"
  ]

  @type t :: %__MODULE__{
    :"inboxId" => String.t | nil,
    :"exists" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxByEmailAddressResult do
  def decode(value, _options) do
    value
  end
end

