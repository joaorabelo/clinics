﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebClinica
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBClinicaEntities : DbContext
    {
        public DBClinicaEntities()
            : base("name=DBClinicaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CONVENIO> CONVENIOs { get; set; }
        public virtual DbSet<PACIENTE> PACIENTEs { get; set; }
        public virtual DbSet<CONSULTA> CONSULTAs { get; set; }
        public virtual DbSet<EXAMEREQUISICAO> EXAMEREQUISICAOs { get; set; }
        public virtual DbSet<ESPECIALIDADE> ESPECIALIDADEs { get; set; }
        public virtual DbSet<MEDICO> Medicos { get; set; }
        public virtual DbSet<EXAME> EXAMEs { get; set; }
    }
}
