# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.TemplateDto do
  @moduledoc """
  Email template
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"variables",
    :"content",
    :"createdAt"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"variables" => [TemplateVariable],
    :"content" => String.t,
    :"createdAt" => DateTime.t
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.TemplateDto do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"variables", :list, MailSlurpAPI.Model.TemplateVariable, options)
  end
end

