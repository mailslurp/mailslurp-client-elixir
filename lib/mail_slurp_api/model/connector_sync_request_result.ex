# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ConnectorSyncRequestResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"syncResult",
    :"exception",
    :"eventId"
  ]

  @type t :: %__MODULE__{
    :"syncResult" => ConnectorSyncResult | nil,
    :"exception" => ConnectorSyncRequestResultException | nil,
    :"eventId" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ConnectorSyncRequestResult do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"syncResult", :struct, MailSlurpAPI.Model.ConnectorSyncResult, options)
    |> deserialize(:"exception", :struct, MailSlurpAPI.Model.ConnectorSyncRequestResultException, options)
  end
end

