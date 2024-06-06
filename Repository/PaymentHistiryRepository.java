package BankingApplicationSpringBoot.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import BankingApplicationSpringBoot.Model.PaymentHistory;

@Repository
public interface PaymentHistiryRepository extends CrudRepository<PaymentHistory, Integer> {

	@Query(value = "SELECT * FROM v_payments WHERE user_id", nativeQuery = true)
	List<PaymentHistory> gettPaymentRecordsById(@Param("user_id")int user_Id);
}
