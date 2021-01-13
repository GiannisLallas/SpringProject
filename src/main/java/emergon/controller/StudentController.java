
package emergon.controller;

import emergon.entity.Courses;
import emergon.service.CoursesService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
   public String showTeacherHomePage(Model model){
        List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
       return "student/studentHome";
   }
    
    
}
