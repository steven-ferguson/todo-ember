class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_completed, :priority
end