# frozen_string_literal: true

class Attendee
  attr_reader :height, :pass_id

  def initialize(height) = @height = height

  def issue_pass!(pass_id) = @pass_id = pass_id

  def revoke_pass! = @pass_id = nil
end
