package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.File;

@WebServlet(name = "ListFilesServlet")
public class ListFilesServlet extends HttpServlet {
    private static final String UPLOAD_DIRECTORY = "upload";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String s = request.getParameter("lUserName");
        System.out.println("ListFile里面的lUserName"+s);

        //String user = request.getParameter("user");
        HttpSession hs = request.getSession();
        String user = (String) hs.getAttribute("lUserName");
        String act = (String) hs.getAttribute("btnId");


        String relativePath = "upload/"+user;
        String absolutePath = request.getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY + File.separator + user;
        String newPath0 = absolutePath + File.separator + "festival";
        String newPath1 = absolutePath + File.separator + "scene";
        String newPath2 = absolutePath + File.separator + "design";
        String newPath3 = absolutePath + File.separator + "beauty";
        String newPath4 = absolutePath + File.separator + "anime";
        String newPath5 = absolutePath + File.separator + "food";



        File file=new File(absolutePath);
        File file0=new File(newPath0);
        File file1=new File(newPath1);
        File file2=new File(newPath2);
        File file3=new File(newPath3);
        File file4=new File(newPath4);
        File file5=new File(newPath5);




        String[] fileNames=file.list();
        String[] fileNames0=file0.list();
        String[] fileNames1=file1.list();
        String[] fileNames2=file2.list();
        String[] fileNames3=file3.list();
        String[] fileNames4=file4.list();
        String[] fileNames5=file5.list();





        if(fileNames==null)
        {
            System.out.println("没有文件");

            String[] tmp = {"0","0","0"};
            hs.setAttribute("paths", tmp);
            hs.setAttribute("flag","0");
            request.getServletContext().getRequestDispatcher("/test.jsp").forward(
                    request, response);
        }
        else {
            String[] truePaths = new String[fileNames.length];
            for (int i = 0; i < fileNames.length; i++) {
                truePaths[i] = relativePath + File.separator + fileNames[i];
            }

            String[] truePaths0 = new String[fileNames0.length];
            for (int i = 0; i < fileNames0.length; i++) {
                truePaths0[i] = relativePath + File.separator + "festival" + File.separator + fileNames0[i];
            }

            String[] truePaths1 = new String[fileNames1.length];
            for (int i = 0; i < fileNames1.length; i++) {
                truePaths1[i] = relativePath + File.separator + "scene" +  File.separator + fileNames1[i];
            }

            String[] truePaths2 = new String[fileNames2.length];
            for (int i = 0; i < fileNames2.length; i++) {
                truePaths2[i] = relativePath + File.separator + "design" + File.separator + fileNames2[i];
            }

            String[] truePaths3 = new String[fileNames3.length];
            for (int i = 0; i < fileNames3.length; i++) {
                truePaths3[i] = relativePath + File.separator + "beauty" + File.separator + fileNames3[i];
            }

            String[] truePaths4 = new String[fileNames4.length];
            for (int i = 0; i < fileNames4.length; i++) {
                truePaths4[i] = relativePath + File.separator + "anime" + File.separator + fileNames4[i];
            }

            String[] truePaths5 = new String[fileNames5.length];
            for (int i = 0; i < fileNames5.length; i++) {
                truePaths5[i] = relativePath + File.separator + "food" + File.separator + fileNames5[i];
            }





            //发送给照片墙
            hs.setAttribute("flag","1");
            hs.setAttribute("paths", truePaths);
            hs.setAttribute("paths0", truePaths0);
            hs.setAttribute("paths1", truePaths1);
            hs.setAttribute("paths2", truePaths2);
            hs.setAttribute("paths3", truePaths3);
            hs.setAttribute("paths4", truePaths4);
            hs.setAttribute("paths5", truePaths5);
            request.getServletContext().getRequestDispatcher("/test.jsp").forward(
                    request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
