Subscriber.delete_all
User.delete_all
Administrator.delete_all
Subscription.delete_all

['Free', 'Basic', 'Flirt'].each do |name|
  Subscription.create(plan: name)
end