class Contrato < ApplicationRecord
  belongs_to :cliente
  belongs_to :veiculo
end
