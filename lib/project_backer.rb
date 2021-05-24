class ProjectBacker
    attr_reader :name, :project, :backer

    @@all = []

    def initialize(project, backer)
        @@all << self
        @project = project
        @backer = backer
    end

    def self.all
        @@all
    end
end