# frozen_string_literal: true

module Api
  module V1
    # Helper class for the API V1 affiliation sections
    class OrgPresenter
      class << self
        def affiliation_id(identifiers:)
          ident = identifiers.select { |id| id.identifier_scheme&.name == 'ror' }.first
          return ident if ident.present?

          identifiers.select { |id| id.identifier_scheme&.name == 'fundref' }.first
        end
      end
    end
  end
end
