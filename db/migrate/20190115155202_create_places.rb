class CreatePlaces < ActiveRecord::Migration[5.2]
  def up
    if table_exists?(:places)
      # update or modify columns of users table here accordingly.
    else
      # create table and dump the schema here
    end
  end

  def down
    # same approach goes here but in the reverse logic
  end
end
