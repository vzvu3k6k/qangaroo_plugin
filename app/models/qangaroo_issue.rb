class QangarooIssue < ActiveRecord::Base
  belongs_to :issue
  belongs_to :project
  belongs_to :qangaroo_service
  validates :project_id, :issue_id, :qangaroo_project_id, :qangaroo_service_id, presence: true

  alias_attribute :bugId, :qangaroo_bug_id
  alias_attribute :qangarooProjectId, :qangaroo_project_id
end
