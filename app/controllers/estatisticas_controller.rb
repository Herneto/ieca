class EstatisticasController < ApplicationController
  def index
    @quantidade = Membro.count
    @homens = Membro.where("sexo").count
    @mulheres = @quantidade - @homens
    @crianças = Membro.where("sociedade like ?", "%Cria%").count
    @jovens = Membro.where("sociedade like ?", "%Jov%").count
    @casados = Membro.where("casado").count

  end
end