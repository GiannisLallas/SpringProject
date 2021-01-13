
package emergon.service;

import emergon.entity.Users;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface UsersService extends UserDetailsService {

    public void create(Users user);

 

    public List<Users> allUsers();
    
  
    public List<Users> allStudents();
}
