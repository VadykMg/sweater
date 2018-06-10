package com.exemple.sweater.repos;

import com.exemple.sweater.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepos extends CrudRepository<Message, Long> {
}
