# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.SimpleSendEmailOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"body",
    :"senderId",
    :"subject",
    :"to"
  ]

  @type t :: %__MODULE__{
    :"body" => String.t | nil,
    :"senderId" => String.t | nil,
    :"subject" => String.t | nil,
    :"to" => String.t | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.SimpleSendEmailOptions do
  def decode(value, _options) do
    value
  end
end
