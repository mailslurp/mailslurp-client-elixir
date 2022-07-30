# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ExpiredInboxRecordProjection do
  @moduledoc """
  Record of inbox expiration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"emailAddress",
    :"userId",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"emailAddress" => String.t,
    :"userId" => String.t,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ExpiredInboxRecordProjection do
  def decode(value, _options) do
    value
  end
end

