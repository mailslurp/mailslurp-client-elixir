# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.InboxProjection do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"createdAt",
    :"emailAddress",
    :"favourite",
    :"id",
    :"inboxType",
    :"name",
    :"tags",
    :"teamAccess"
  ]

  @type t :: %__MODULE__{
    :"createdAt" => DateTime.t,
    :"emailAddress" => String.t | nil,
    :"favourite" => boolean(),
    :"id" => String.t,
    :"inboxType" => String.t | nil,
    :"name" => String.t | nil,
    :"tags" => [String.t] | nil,
    :"teamAccess" => boolean()
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.InboxProjection do
  def decode(value, _options) do
    value
  end
end

