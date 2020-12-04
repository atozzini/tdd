class SequenciaFibonacci
  def soma_fibonacci(val1, val2, limit)
    soma_pares = 0
    seq_fibonacci = gera_fibonacci(val1, val2, limit)

    seq_fibonacci.each do |value|
      soma_pares += value if value % 2 == 0
    end

    soma_pares
  end

  def gera_fibonacci(val1, val2, limit)
    return 'O limite é 4.000.000' if limit > 4_000_000

    seq_fibonacci = [val1, val2]

    (limit - 2).times do
      valor_adicionar = seq_fibonacci.last(2).first + seq_fibonacci.last(2).last
      seq_fibonacci.push(valor_adicionar)
    end

    seq_fibonacci
  end
end
