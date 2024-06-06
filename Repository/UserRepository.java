package BankingApplicationSpringBoot.Repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import BankingApplicationSpringBoot.Model.User;
import jakarta.transaction.Transactional;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	
	@Query(value = "SELECT email FROM user WHERE email = :email",nativeQuery = true)
	String getUserEmail(@Param("email")String email);

	 @Query("SELECT u.password FROM User u WHERE u.password = :password")
	    String getUserPassword(@Param("password") String password);

	 @Query(value = "SELECT verified FROM users WHERE email= :email",nativeQuery = true)
	int varifide(@Param("email")String email);
	 
	 @Query(value = "SELECT verified FROM users WHERE email= :email",nativeQuery = true)
	 User getUserDetails(@Param("email")String email);

	@Modifying
	@Query(value = "INSERT INTO users(first-name,last_name,email,password,conform_password,token,code)"
			+ " VALUES(:first_name, :last_name, :email, :password, :conform_password ,:token, :code)", nativeQuery = true)
	@Transactional
	void registerUser(@Param("first_name") String first_name, @Param("last_name") String last_name,
			@Param("email") String email, @Param("password") String password,
			@Param("conform_password") String conform_password, @Param("token") String token, @Param("code") int code);

	/*
	 * void registerUser(String first_name, String last_name, String emailBody,
	 * String password, String conform_password, String token, String
	 * hashed_password, int code);
	 */

	
	 @Modifying
	 @Query(value ="Update users SET token = null,code=null, verrified=1,verified_at=Now(),updated_at=Now() WHERE token=:token, AND code=:code", nativeQuery = true )
	 @Transactional void VeifyAccount(@Param("token")String token,
			 						  @Param("code") String code);
	 
	 @Query(value = "SELECT u.token FROM user u WHERE token = :token", nativeQuery = true)
	 String checkToken(@Param("token")String token);
}
