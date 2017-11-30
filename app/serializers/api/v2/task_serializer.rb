class Api::V2::TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :deadline, :done, 
             :user_id, :created_at, :updated_at,
             :short_description, :is_late, :deadline_formatted

  def short_description
    object.short_description
  end

  def is_late
    object.late?
  end

  def deadline_formatted
    I18n.l(object.deadline, format: :datetime) if object.deadline.present?
  end

  belongs_to :user

end
