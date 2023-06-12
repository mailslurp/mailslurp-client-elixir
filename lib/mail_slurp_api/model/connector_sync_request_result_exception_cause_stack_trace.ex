# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCauseStackTrace do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"classLoaderName",
    :"moduleName",
    :"moduleVersion",
    :"methodName",
    :"fileName",
    :"lineNumber",
    :"nativeMethod",
    :"className"
  ]

  @type t :: %__MODULE__{
    :"classLoaderName" => String.t | nil,
    :"moduleName" => String.t | nil,
    :"moduleVersion" => String.t | nil,
    :"methodName" => String.t | nil,
    :"fileName" => String.t | nil,
    :"lineNumber" => integer() | nil,
    :"nativeMethod" => boolean() | nil,
    :"className" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.ConnectorSyncRequestResultExceptionCauseStackTrace do
  def decode(value, _options) do
    value
  end
end
