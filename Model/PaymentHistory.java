package BankingApplicationSpringBoot.Model;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "v_payments")
public class PaymentHistory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int payment_id;
	private int account_id;
	private int user_id;
	private String beneficiary;
	private String beneficiaryy_acc_no;
	private double amount;
	private String status;
	private String reference_no;
	private String reason_code;
	private LocalDateTime crated_at;
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getBeneficiary() {
		return beneficiary;
	}
	public void setBeneficiary(String beneficiary) {
		this.beneficiary = beneficiary;
	}
	public String getBeneficiaryy_acc_no() {
		return beneficiaryy_acc_no;
	}
	public void setBeneficiaryy_acc_no(String beneficiaryy_acc_no) {
		this.beneficiaryy_acc_no = beneficiaryy_acc_no;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getReference_no() {
		return reference_no;
	}
	public void setReference_no(String reference_no) {
		this.reference_no = reference_no;
	}
	public String getReason_code() {
		return reason_code;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setReason_code(String reason_code) {
		this.reason_code = reason_code;
	}
	public LocalDateTime getCrated_at() {
		return crated_at;
	}
	public void setCrated_at(LocalDateTime crated_at) {
		this.crated_at = crated_at;
	}
	
	
}
