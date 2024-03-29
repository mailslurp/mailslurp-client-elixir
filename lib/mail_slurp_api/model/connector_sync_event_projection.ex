# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ConnectorSyncEventProjection do
  @moduledoc """
  ConnectorSyncEventProjection
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message",
    :"id",
    :"createdAt",
    :"connectorId",
    :"syncCount",
    :"syncStatus"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t | nil,
    :"id" => String.t | nil,
    :"createdAt" => DateTime.t,
    :"connectorId" => String.t,
    :"syncCount" => integer(),
    :"syncStatus" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ConnectorSyncEventProjection do
  def decode(value, _options) do
    value
  end
end

