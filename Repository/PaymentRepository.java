package BankingApplicationSpringBoot.Repository;

import java.time.LocalDateTime;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import BankingApplicationSpringBoot.Model.Payments;

@Repository
public interface PaymentRepository extends CrudRepository<Payments, Integer> {

	@Modifying
	@Query("INSERT INTO payments(account_id, beneficiary, beneficiary_acc_no, amount, reference_no, status, reason_code, created_at) " +
	       "VALUES(:account_id, :beneficiary, :beneficiary_acc_no, :amount, :reference_no, :status, :reason_code, :created_at)")
	
	@org.springframework.transaction.annotation.Transactional
	public void makePayment(@Param("account_id") int accountId, 
            @Param("beneficiary") String beneficiary, 
            @Param("beneficiary_acc_no") String beneficiaryAccNo, 
            @Param("amount") double amount, 
            @Param("reference_no") String referenceNo, 
            @Param("status") String status, 
            @Param("reason_code") String reasonCode, 
            @Param("created_at") LocalDateTime createdAt);
	
//	void makePayment(@Param("account_id") int accountId, 
//	                 @Param("beneficiary") String beneficiary, 
//	                 @Param("beneficiary_acc_no") String beneficiary_acc_no, 
//	                 @Param("amount") double amount, 
//	                 @Param("reference_no") String referenceNo, 
//	                 @Param("status") String status, 
//	                 @Param("reason_code") String reasonCode, 
//	                 @Param("created_at") LocalDateTime createdAt);

}
