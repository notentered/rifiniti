module Types
  class QueryType < Types::BaseObject
    description "root query"

    field :users, [UserType], null: true do
      description "gets all users"
    end

    def users
      User.all
    end
  end
end
