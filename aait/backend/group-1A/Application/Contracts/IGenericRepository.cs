﻿using Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Application.Contracts
{
    public interface IGenericRepository<T>
    {
        public Task<List<T>> GetAll(Expression<Func<T, bool>> predicate);

        public Task<T> Add(T entity);

        public Task<bool> Delete(T entity);

        public Task<bool> Exists(int id);

        public Task<T> Update(T entity);

        
    }
}
