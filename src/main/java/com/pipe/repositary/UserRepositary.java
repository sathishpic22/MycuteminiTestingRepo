package com.pipe.repositary;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;


import com.pipe.model.UserTable;

@Repository
public interface UserRepositary extends CrudRepository<UserTable,String>  {



}
