describe Location do
  it {should have_many (:users)}
  it {should have_many (:enemies)}
end