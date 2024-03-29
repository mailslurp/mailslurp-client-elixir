# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCause do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"stackTrace",
    :"message",
    :"suppressed",
    :"localizedMessage"
  ]

  @type t :: %__MODULE__{
    :"stackTrace" => [ConnectorSyncRequestResultExceptionCauseStackTrace] | nil,
    :"message" => String.t | nil,
    :"suppressed" => [ConnectorSyncRequestResultExceptionCauseSuppressed] | nil,
    :"localizedMessage" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCause do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"stackTrace", :list, MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCauseStackTrace, options)
    |> deserialize(:"suppressed", :list, MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCauseSuppressed, options)
  end
end

