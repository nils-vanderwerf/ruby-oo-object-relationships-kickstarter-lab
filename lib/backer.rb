require_relative 'project_backer'

class Backer
    attr_reader :name
    
    @@projects = []

    def initialize(name)
        @name = name
        @@projects << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        project_backers.map do |pb|
            pb.project
        end
    end
    
end

george = Backer.new("George")
george.backed_projects