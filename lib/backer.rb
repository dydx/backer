require "backer/version"

module Backer
  class Repository
    def self.register(type, repo)
      repositories[type] = repo
    end

    def self.repositories
      @repositories ||= {}
    end

    def self.for(type)
      repsositories[type]
    end
  end
end