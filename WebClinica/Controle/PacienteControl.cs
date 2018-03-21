using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;


namespace WebClinica.Controle
{
    [DataObject(true)]
    public class PacienteControl
    {
        DBClinicaEntities context = new DBClinicaEntities();

        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastrarPaciente(PACIENTE p)
        {
            context.PACIENTEs.Add(p);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<PACIENTE> ListarPaciente()
        {
            List<PACIENTE> lista = new List<PACIENTE>();
            lista = context.PACIENTEs.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarPaciente(PACIENTE p)
        {
            context.PACIENTEs.Attach(p);
            context.Entry(p).State = System.Data.Entity.EntityState.Modified;
            context.PACIENTEs.Add(p);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<PACIENTE> ObterPaciente(int id)
        {
            List<PACIENTE> lista = new List<PACIENTE>();
            var result = context.PACIENTEs.Where(p => p.id_pac == id);
            return result.ToList<PACIENTE>();

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirPaciente(PACIENTE p)
        {
            context.PACIENTEs.Attach(p);
            context.Entry(p).State = System.Data.Entity.EntityState.Deleted;
            context.PACIENTEs.Remove(p);
            context.SaveChanges();
        }
    }
}
