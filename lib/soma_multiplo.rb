class SomaMultiplo
  def soma_multiplos(val1, val2, limite)
    (1...limite).inject(0) do |sum, numero|
      sum + ((numero % val1 == 0) || (numero % val2 == 0) ? numero : 0)
    end
  end
end
