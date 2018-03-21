using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace WebClinica.Controle
{
    [DataObject(true)]
    public class ExameRequisicaoControl
    {
        DBClinicaEntities context = new DBClinicaEntities();

        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastarExaRequisicao(EXAMEREQUISICAO er)
        {
            context.EXAMEREQUISICAOs.Add(er);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<EXAMEREQUISICAO> ListarExaRequisicao()
        {
            List<EXAMEREQUISICAO> lista = new List<EXAMEREQUISICAO>();
            lista = context.EXAMEREQUISICAOs.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarExaRequisicao(EXAMEREQUISICAO er)
        {
            context.EXAMEREQUISICAOs.Attach(er);
            context.Entry(er).State = System.Data.Entity.EntityState.Modified;
            context.EXAMEREQUISICAOs.Add(er);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<EXAMEREQUISICAO> ObterExaRequisicao(int id)
        {
            List<EXAMEREQUISICAO> lista = new List<EXAMEREQUISICAO>();
            var result = context.EXAMEREQUISICAOs.Where(p => p.id_exar == id);
            return result.ToList<EXAMEREQUISICAO>();

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirExaRequisicao(EXAMEREQUISICAO er)
        {
            context.EXAMEREQUISICAOs.Attach(er);
            context.Entry(er).State = System.Data.Entity.EntityState.Deleted;
            context.EXAMEREQUISICAOs.Remove(er);
            context.SaveChanges();
        }
    }
}
