using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace WebClinica.Controle
{
    [DataObject(true)]
    public class ExameControl
    {
        DBClinicaEntities context = new DBClinicaEntities();

        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastarExame(EXAME e)
        {
            context.EXAMEs.Add(e);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<EXAME> ListarExame()
        {
            List<EXAME> lista = new List<EXAME>();
            lista = context.EXAMEs.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarExame(EXAME e)
        {
            context.EXAMEs.Attach(e);
            context.Entry(e).State = System.Data.Entity.EntityState.Modified;
            context.EXAMEs.Add(e);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<EXAME> ObterExame(int id)
        {
            List<EXAME> lista = new List<EXAME>();
            var result = context.EXAMEs.Where(p => p.id_exa == id);
            return result.ToList<EXAME>();

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirExame(EXAME e)
        {
            context.EXAMEs.Attach(e);
            context.Entry(e).State = System.Data.Entity.EntityState.Deleted;
            context.EXAMEs.Remove(e);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<CONVENIO> ObterConvenioExa()
        {
            List<CONVENIO> lista = new List<CONVENIO>();
            lista = context.EXAMEs.Select(p => p.CONVENIO).ToList();
            return lista;

        }
    }

}
