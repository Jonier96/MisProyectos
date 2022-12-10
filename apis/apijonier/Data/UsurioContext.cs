using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using UsuariosApi.Models;

    public class UsurioContext : DbContext
    {
        public UsurioContext (DbContextOptions<UsurioContext> options)
            : base(options)
        {
        }

        public DbSet<UsuariosApi.Models.Usuario> Usuario { get; set; } = default!;
    }
