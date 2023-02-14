# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.EmailLinksResult do
  @moduledoc """
  Links found in HTML
  """

  @derive [Poison.Encoder]
  defstruct [
    :"links",
    :"body"
  ]

  @type t :: %__MODULE__{
    :"links" => [String.t],
    :"body" => String.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.EmailLinksResult do
  def decode(value, _options) do
    value
  end
end

