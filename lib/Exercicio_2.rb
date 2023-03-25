=begin
3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, faça um programa,
na linguagem que desejar, que calcule e retorne:
                                                                                                                                            • O menor valor de faturamento ocorrido em um dia do mês;
• O maior valor de faturamento ocorrido em um dia do mês;
• Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.

  IMPORTANTE:
  a) Usar o json ou xml disponível como fonte dos dados do faturamento mensal;
  b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem
  ser ignorados no cálculo da média;
=end
class FaturamentoController < ApplicationController
  require 'json'

  def calcular_faturamento(json_file)
    faturamento_diario = JSON.parse(File.read(json_file))
    faturamento_diario.reject!(&:zero?)
    media_mensal = faturamento_diario.sum / faturamento_diario.size.to_f
    menor_faturamento = faturamento_diario.min
    maior_faturamento = faturamento_diario.max
    dias_acima_da_media = faturamento_diario.count { |faturamento| faturamento > media_mensal }

    return {
      menor_faturamento: menor_faturamento,
      maior_faturamento: maior_faturamento,
      dias_acima_da_media: dias_acima_da_media
    }
  end
end