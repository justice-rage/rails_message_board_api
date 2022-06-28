class Seed

    def self.begin
      seed = Seed.new
      seed.generate_groups
    end
  
    def generate_groups
      20.times do |i|
        group = Group.create!(
          name: Faker::Hobby.activity
        )
        puts "Group #{i}: Name is #{group.name}."
      end
    end
  end
  
  Seed.begin