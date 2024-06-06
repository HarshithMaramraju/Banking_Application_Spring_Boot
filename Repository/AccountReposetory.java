package BankingApplicationSpringBoot.Repository;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import BankingApplicationSpringBoot.Model.Account;
import jakarta.transaction.Transactional;

@Repository
public interface AccountReposetory extends CrudRepository<Account, Integer> {

	@Query(value = "SEKECT * FROM account WHERE user_id=:user_id",nativeQuery = true)
	 List<Account> getUserAccountById(@Param("user_id")int user_id);
	
	@Query(value = "SEKECT sum(balance) FROM account WHERE user_id=:user_id",nativeQuery = true)
	BigDecimal getTotalBalance(@Param("user_id")int user_id);

	@Query(value = "SELECT balance FROM account WHERE user_id = : user_id AND account_id = : account_id",nativeQuery = true)
	double getAccountBalance(@Param("user_id")int user_id, @Param("account_id")int acc_id);
	
	@Modifying
	@Query(value = "UPDATE account SET balance = :new_balance WHERE account_id=:account_id",nativeQuery = true)
	void changeAccontBalance(@Param("new_balance")double new_balance,@Param("account_id")int account_id);
	@Modifying
	@Query(value = "INSERT INTO account(user_id,account_number,account_name,account_type) VALUES "
			+ "(:user_id,:account_number,:account_name,:account_type)", nativeQuery = true)
 
	@org.springframework.transaction.annotation.Transactional
	void createBankAccount(@Param("user_id")int user_id,@Param("account_number")String account_number,
							@Param("account_name")String account_name, @Param("account_type")String account_type);
	
}
