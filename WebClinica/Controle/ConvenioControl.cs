using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;



namespace WebClinica.Controle
{
    [DataObject(true)]
    public class ConvenioControl
    {
        DBClinicaEntities context = new DBClinicaEntities();

        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void CadastrarConvenio(CONVENIO con)
        {
            context.CONVENIOs.Add(con);
            context.SaveChanges();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<CONVENIO> ListarConvenio()
        {
            List<CONVENIO> lista = new List<CONVENIO>();
            lista = context.CONVENIOs.ToList();
            return lista;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]

        public void AtualizarConvenio(CONVENIO con)
        {
            context.CONVENIOs.Attach(con);
            context.Entry(con).State = System.Data.Entity.EntityState.Modified;
            context.CONVENIOs.Add(con);
            context.SaveChanges();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<CONVENIO> ObterConvenio(int id)
        {
            List<CONVENIO> lista = new List<CONVENIO>();
            var result = context.CONVENIOs.Where(p => p.id_conv == id);
            return result.ToList<CONVENIO>();

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void ExcluirConvenio(CONVENIO con)
        {
            context.CONVENIOs.Attach(con);
            context.Entry(con).State = System.Data.Entity.EntityState.Deleted;
            context.CONVENIOs.Remove(con);
            context.SaveChanges();
        }
    }
}
