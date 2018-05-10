desc 'deletar membros'
task deletar_membros: :environment do
  Membro.cron_delete
end