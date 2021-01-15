
package emergon.controller;

import emergon.entity.Courses;
import emergon.entity.Videos;
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
   public String showTeacherHomePage(Model model){
        List<Courses> courses = coursesService.findAll();
        model.addAttribute("courses", courses);
       return "student/studentHome";
   }
    
   @GetMapping("/videos")
   public String showVideoPage(){
//       Optional<Courses> course = coursesService.findById(courseId);
//       List<Videos> videoList = course.get().getVideosList();
//       model.addAttribute("videoList", videoList);
       return "student/videos";
   }
    
}
