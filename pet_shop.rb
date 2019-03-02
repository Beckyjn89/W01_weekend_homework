def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_added_or_removed)
  return pet_shop[:admin][:total_cash] += cash_added_or_removed
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num_sold)
  return pet_shop[:admin][:pets_sold] += num_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_name)
  breed_array = []
  index_num = 0
  for pet in pet_shop
    if pet_shop[:pets][index_num][:breed] == breed_name
      breed_array.push(pet_shop[:pets][index_num][:breed])
    end
    index_num += 1
  end
  return breed_array
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash_removed)
  return customer[:cash] -= cash_removed 
end
