//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class PACIENTE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PACIENTE()
        {
            this.CONSULTAs = new HashSet<CONSULTA>();
            this.EXAMEREQUISICAOs = new HashSet<EXAMEREQUISICAO>();
        }
    
        public int id_pac { get; set; }
        public string nome_pac { get; set; }
        public string end_pac { get; set; }
        public string cpf_pac { get; set; }
        public string tel_pac { get; set; }
        public Nullable<System.DateTime> data_pac { get; set; }
        public string cidade_pac { get; set; }
        public string estado_pac { get; set; }
        public string sexo_pac { get; set; }
        public string plano_pac { get; set; }
        public Nullable<int> id_conv { get; set; }
    
        public virtual CONVENIO CONVENIO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CONSULTA> CONSULTAs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EXAMEREQUISICAO> EXAMEREQUISICAOs { get; set; }
    }
}