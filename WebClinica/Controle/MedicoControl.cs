using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.ComponentModel;

namespace WebClinica.Controle
{
    [DataObject(true)]
    public class MedicoControl {

        
        DBClinicaEntities context = new DBClinicaEntities();

    
        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastrarMedico(MEDICO m)
        {
            context.Medicos.Add(m);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<MEDICO> ListarMedico()
        {
            List<MEDICO> lista =  new List<MEDICO>();
            lista = context.Medicos.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarMedico(MEDICO m )
        {
            context.Medicos.Attach(m);
            context.Entry(m).State = System.Data.Entity.EntityState.Modified;
            context.Medicos.Add(m);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<MEDICO> ObterMedico(int id)
        {
            List<MEDICO> lista = new List<MEDICO>();
            var result = context.Medicos.Where( p => p.id_med == id  );
            return result.ToList<MEDICO>();
            
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirMedico(MEDICO m)
        {
            context.Medicos.Attach(m);
            context.Entry(m).State = System.Data.Entity.EntityState.Deleted;
            context.Medicos.Remove(m);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<MEDICO> BuscarMedEsp(String nomeesp)
        {
            List<MEDICO> lista = new List<MEDICO>();
            var result = context.Medicos.Where(m => m.ESPECIALIDADE.nome_esp == nomeesp).ToList();
            return result.ToList<MEDICO>();

        }
    }
}