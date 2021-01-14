
package emergon.controller;

import emergon.entity.Courses;
import emergon.service.CoursesService;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/student")
public class StudentController {
    
     @Autowired
    private CoursesService coursesService;
//    
//    @GetMapping()
//    public String showStudentHomePage(){
//        return "student/studentHome";
//    }
    
      @GetMapping
   public String showStudentHomePage(Model model){
        List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
       return "student/studentHome";
   }
   
   
   @GetMapping("/testPage")
     public String showStudentTestPage(Model model){
         List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
          return "student/testPage";
     }
     
     @GetMapping("/loginPage")
        public String logoReturnEkpaideusi(){
            return "login";
        }
        
         @GetMapping("/logout/loginPage")
        public String logoutStudent(){
            return "login";
        }
        
        
         @GetMapping("/find")
   public String showEditCoursePage(@RequestParam("id") int id, Model model){
        Optional<Courses> findById = coursesService.findById(id);
        model.addAttribute("course", findById);
//        model.addAttribute("users", findById.get().getUsers());
        model.addAttribute("videos", findById.get().getVideosList());
        return "student/find";
       
   }
}
