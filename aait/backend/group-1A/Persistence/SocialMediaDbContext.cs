﻿using Domain.Entities;
using Microsoft.EntityFrameworkCore;

using SocialSync.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistence
{
    public class SocialMediaDbContext : DbContext
    {
        public virtual DbSet<Post> Posts { get; set; }
        public virtual DbSet<Comment> Comments { get; set; }
        public virtual DbSet<PostReaction> PostReactions { get; set; }

        public virtual DbSet<CommentReaction> CommentReaction { get; set; }


        public SocialMediaDbContext(DbContextOptions<SocialMediaDbContext> options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfigurationsFromAssembly(typeof(SocialMediaDbContext).Assembly);

        }
    }
}
