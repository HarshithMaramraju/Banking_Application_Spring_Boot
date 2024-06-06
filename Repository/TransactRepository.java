package BankingApplicationSpringBoot.Repository;

import java.time.LocalDateTime;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import BankingApplicationSpringBoot.Model.Transact;

@Repository
public interface TransactRepository extends CrudRepository<Transact, Integer> {

	@Modifying
	@Transactional
	@Query(value = "INSERT INTO transaction_history(account_id,transaction_type, amount, source, reason_code,created_at)"
			+ "VALUES(:account_id,:transact_type,:amount,:source,:status,::reason_code,:reason_code,:created_at)", nativeQuery = true)
	void logTransaction(@Param("account_id")int account_id,
			@Param("transact_type")String transact_type,
			@Param("amount")double amount,
			@Param("source") String source,
			@Param("status")String status,
			@Param("reason_coad")String reason_coad,
			@Param("created_at")LocalDateTime created_at);
}
