class Response < ActiveRecord::Base
  require 'csv'
  belongs_to :user
  validates_presence_of :user_id
  scope :incorrect, where(correct: false)
  scope :correct, where(correct: true)

  def self.raw_csv(responses)
    CSV.generate do |csv|
      # header row
      csv << [
        'id',
        'group',
        'participant_id',
        'error',
        'essay',
        'Correct?',
        'Field Before Correction',
        'Seconds to Complete',
        'Round',
        'Treatment',
        'Time Corrected'
      ]

      # data rows
      responses.each do |response|
        csv << [
          response.id,
          response.user_id,
          response.user.group,
          response.error,
          response.essay,
          response.correct,
          response.uncorrected,
          response.round_number,
          response.user.time_to_complete,
          response.controller,
          response.created_at
        ]
      end
    end
  end

  private
end
