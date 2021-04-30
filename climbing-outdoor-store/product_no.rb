# require 'securerandom'

module ProductNo
  # @product_no = securerandom.alphanumeric
  def generate_product_no
    @product_no = Array.new(8){[*'0'..'9', *'a'..'z', *'A'..'Z'].sample}.join
  end
end