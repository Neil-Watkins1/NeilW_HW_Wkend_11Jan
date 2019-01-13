def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, new_money)

  pet_shop[:admin][:total_cash] += new_money
  #  or pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + new_money

end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, check_breed)
  total_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == check_breed
      total_of_breed << pet
    end
  end
  return total_of_breed
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete pet
    end
  end
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_reduction)
  customer[:cash] -= cash_reduction
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] += [1]
  customer[1] = new_pet
  return customer[1]

end

def customer_can_afford_pet(customer, new_pet)

  # check customers amount of new_money
  can_buy_pet = (customer[:cash] > new_pet[:price])
  return can_buy_pet

end

def sell_pet_to_customer(pet_shop, pet, customer)
  # add a new customer_pet hash to the relevent customer array

  # increase customer pet count
  customer[:pets] += [1]
  # increase pet shop pet sold count
  pet_shop[:admin][:pets_sold] += 1
  # reduce customer cash by cost of pet
  customer[:cash] -= pet_shop[:pets][3][:price]
  # increase pet shop cash by cost of pet
  pet_shop[:admin][:total_cash] += pet_shop[:pets][3][:price]

  # remove relevent pet from pet shop array

end
