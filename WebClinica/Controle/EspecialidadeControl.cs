using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace WebClinica.Controle
{
    [DataObject(true)]
    public class EspecialidadeControl
    {
        DBClinicaEntities context = new DBClinicaEntities();

        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastrarEspecialidade(ESPECIALIDADE e)

        {
            context.ESPECIALIDADEs.Add(e);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<ESPECIALIDADE> ListarEspecialidade()
        {
            List<ESPECIALIDADE> lista = new List<ESPECIALIDADE>();
            lista = context.ESPECIALIDADEs.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarEspecialidade(ESPECIALIDADE e)
        {
            context.ESPECIALIDADEs.Attach(e);
            context.Entry(e).State = System.Data.Entity.EntityState.Modified;
            context.ESPECIALIDADEs.Add(e);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ESPECIALIDADE> ObterEspecialidade(int id)
        {
            List<ESPECIALIDADE> lista = new List<ESPECIALIDADE>();
            var result = context.ESPECIALIDADEs.Where(p => p.id_esp == id);
            return result.ToList<ESPECIALIDADE>();

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirEspecialidade(ESPECIALIDADE e)
        {

            context.ESPECIALIDADEs.Attach(e);
            context.Entry(e).State = System.Data.Entity.EntityState.Deleted;
            context.ESPECIALIDADEs.Remove(e);
            context.SaveChanges();


        }


        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ESPECIALIDADE> BuscarEspecialidadeOU(String nome, String descricao)
        {
            List<ESPECIALIDADE> lista = new List<ESPECIALIDADE>();
            var result = context.ESPECIALIDADEs.Where(e => e.nome_esp == nome || e.des_esp == descricao).ToList();
            return result.ToList<ESPECIALIDADE>();

        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public string ExcluirEsp2(ESPECIALIDADE e)
        {
            string erro;
            if (e.id_med == null)
            {
                context.ESPECIALIDADEs.Attach(e);
                context.Entry(e).State = System.Data.Entity.EntityState.Deleted;
                context.ESPECIALIDADEs.Remove(e);
                context.SaveChanges();
            }
            else
            {
                erro = "possui medico cadastrado";
                return erro;

            }
            return null;
        }
    }
}
        
