class ProductPrice < ApplicationRecord
  def self.to_csv
    attributes = %w{id name orignalsku barcode searched eur}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
