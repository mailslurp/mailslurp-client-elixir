# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ExpiredInboxDto do
  @moduledoc """
  Expired inbox
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"inboxId",
    :"emailAddress"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"inboxId" => String.t,
    :"emailAddress" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ExpiredInboxDto do
  def decode(value, _options) do
    value
  end
end

