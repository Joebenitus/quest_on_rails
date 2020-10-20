require 'rails_helper'

describe User do
  it {should belong_to (:location)}
  it {should have_many (:items)}
  it {should have_many (:quests)}
end