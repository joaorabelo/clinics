using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;

namespace WebClinica.Controle
{
    [DataObject(true)]
    public class ConsultaControl
    {
            DBClinicaEntities context = new DBClinicaEntities();

            [DataObjectMethod(DataObjectMethodType.Insert)]

            public void AgendarConsulta(CONSULTA c)
            {
                context.CONSULTAs.Add(c);
                context.SaveChanges();
            }

            [DataObjectMethod(DataObjectMethodType.Select)]

            public List<CONSULTA> ListarConsulta()
            {
                List<CONSULTA> lista = new List<CONSULTA>();
                lista = context.CONSULTAs.ToList();
                return lista;
            }

            [DataObjectMethod(DataObjectMethodType.Update)]

            public void AtualizarConsulta(CONSULTA c)
            {
            context.CONSULTAs.Attach(c);
            context.Entry(c).State = System.Data.Entity.EntityState.Modified;
            context.CONSULTAs.Add(c);
                context.SaveChanges();
            }
            [DataObjectMethod(DataObjectMethodType.Select)]
            public List<CONSULTA> ObterConsulta(int id)
            {
                List<CONSULTA> lista = new List<CONSULTA>();
                var result = context.CONSULTAs.Where(p => p.id_con == id);
                return result.ToList<CONSULTA>();

            }
            [DataObjectMethod(DataObjectMethodType.Delete)]
            public void ExcluirConsulta(CONSULTA c)
            {
            context.CONSULTAs.Attach(c);
            context.Entry(c).State = System.Data.Entity.EntityState.Deleted;
                context.CONSULTAs.Remove(c);
            context.SaveChanges();
            }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<CONSULTA> BuscarConsulta(String  turno, String nomep, String nomem, DateTime data, String nomec)
        {
            List<CONSULTA> lista = new List<CONSULTA>();
            var result = context.CONSULTAs.Where(c => c.turno_con == turno || c.PACIENTE.nome_pac == nomep || c.MEDICO.nome_med == nomem || c.data_con == data || c.CONVENIO.nome_conv == nomec).ToList();
            return result.ToList<CONSULTA>();

        }


    }
    }
