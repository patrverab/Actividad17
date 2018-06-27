## Ejercicio 7: Objetos y archivos.
#
# Utilizando el mismo archivo del ejercicio anterior:
#
# La tienda desea generar un nuevo catálogo que **no incluya** el último precio correspondiente a cada producto debido a que ya no comercializa productos de talla *XS*.
#
# Se pide **generar un método** que reciba como argumento los datos del archivo *catalogo.txt* y luego imprima el nuevo catálogo solicitado en un archivo llamado *nuevo_catalogo.txt*
class Product
  attr_reader :name
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |prod|

end
