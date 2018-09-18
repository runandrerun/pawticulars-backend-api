class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :breed, :size, :temperament, :energy, :sex, :age, :weight
end
