# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule MailSlurpAPI.Model.PageTemplateProjection do
  @moduledoc """
  Paginated email template results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"content",
    :"empty",
    :"first",
    :"last",
    :"number",
    :"numberOfElements",
    :"pageable",
    :"size",
    :"sort",
    :"totalElements",
    :"totalPages"
  ]

  @type t :: %__MODULE__{
    :"content" => [TemplateProjection] | nil,
    :"empty" => boolean() | nil,
    :"first" => boolean() | nil,
    :"last" => boolean() | nil,
    :"number" => integer() | nil,
    :"numberOfElements" => integer() | nil,
    :"pageable" => Pageable | nil,
    :"size" => integer() | nil,
    :"sort" => Sort | nil,
    :"totalElements" => integer() | nil,
    :"totalPages" => integer() | nil
  }
end

defimpl Poison.Decoder, for: MailSlurpAPI.Model.PageTemplateProjection do
  import MailSlurpAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"content", :list, MailSlurpAPI.Model.TemplateProjection, options)
    |> deserialize(:"pageable", :struct, MailSlurpAPI.Model.Pageable, options)
    |> deserialize(:"sort", :struct, MailSlurpAPI.Model.Sort, options)
  end
end

