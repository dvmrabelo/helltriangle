class HellTriangle
  attr_accessor :triangle

  def intialize(triangle)
    @triangle = triangle
  end

  def calctriangle
    total = 0

    if @triangle.nil?
      p "Monte um triângulo corretamente!"
      exit
    else
      nline = 1
      @iposAnt = 0
      @triangle.each do |line|
        if (line.length != nline) 
          p "Triangulo com tamanho errado!"
          exit
        else
          @ipos = 0
          @aux = 0
          @auxPos = 0
          line.each do |value|
            if line.length == 1
              total += value
              @iposAnt = 1
            elsif @aux < value and (@ipos == @iposAnt or @ipos == @iposAnt+1) 
              @aux = value
              @auxPos = @ipos
            end
            @ipos += 1
        end
          @iposAnt = @auxPos
        total += @aux
      end
      nline += 1
  end
end
 p total
end
end

if __FILE__ == $0
  ht = HellTriangle.new
  ht.triangle = [[6], [3,5], [9,7,1], [4,6,8,4]]
  ht.calctriangle
  # total 26

  ht.triangle = [[1], [2,3], [4,5,6], [7,8,9,10]]
  ht.calctriangle
  # total 20

  ht.triangle = [[1], [2,3], [4,5,6], [7,8,9]]
  ht.calctriangle
  # Triangulo com tamanho errado!
end