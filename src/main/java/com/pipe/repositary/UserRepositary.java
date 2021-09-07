package com.pipe.repositary;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pipe.model.User;

@Repository
public interface UserRepositary extends CrudRepository<User,String>  {



}
