package com.example.common;

import com.example.bean.TFVO;
import com.example.dao.TFDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class FileUpload {
    public TFVO uploadPhoto(HttpServletRequest request) {
        String filename = "";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getServletContext().getRealPath("upload");

        File dir = new File(realPath);
        if (!dir.exists()) dir.mkdirs();

        TFVO one = null;
        MultipartRequest multipartRequest = null;
        try {
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

            filename = multipartRequest.getFilesystemName("tfmotifimage");

            one = new TFVO();
            String tfid = multipartRequest.getParameter("tfid");
            if(tfid!=null&&!tfid.equals("")) one.setTfid(Integer.parseInt(tfid));
            one.setTfname(multipartRequest.getParameter("tfname"));
            one.setTffullname(multipartRequest.getParameter("tffullname"));
            one.setGeneralinformation(multipartRequest.getParameter("generalinformation"));
            one.setFeedbackregulation(multipartRequest.getParameter("feedbackregulation"));
            one.setReference(multipartRequest.getParameter("reference"));

            if (tfid!=null&&!tfid.equals("")) {
                TFDAO tfdao = new TFDAO();
                String oldfilename = tfdao.getPhotoFilename(Integer.parseInt(tfid));
                if(filename!=null && oldfilename!=null)
                    FileUpload.deleteFile(request, oldfilename);
                else if(filename==null && oldfilename!=null)
                    filename = oldfilename;
            }
            one.setTfmotifimage(filename);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return one;
    }

    public static void deleteFile(HttpServletRequest request, String filename) {
        String filePath = request.getServletContext().getRealPath("upload");

        File f = new File(filePath + "/" + filename);
        if(f.exists()) f.delete();
    }
}
