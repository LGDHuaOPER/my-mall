 
<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="GBK"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<% response.setContentType("text/html");
//   ͼƬ�ϴ�·��
   String uploadPath =request.getSession().getServletContext().getRealPath("/")+"images/";
//   ͼƬ��ʱ�ϴ�·��
   String tempPath = request.getSession().getServletContext().getRealPath("/")+"images/temp/";
//   ͼƬ�������·��
   String imagePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; 
//   �ļ��в����ھ��Զ�������
   if(!new File(uploadPath).isDirectory())
   new File(uploadPath).mkdirs();
   if(!new File(tempPath).isDirectory())
   new File(tempPath).mkdirs();
   try {
   DiskFileUpload fu = new DiskFileUpload();
//   ��������ļ��ߴ磬������4MB
   fu.setSizeMax(4194304);
//   ���û�������С��������4kb
   fu.setSizeThreshold(4096);
//   ������ʱĿ¼��
   fu.setRepositoryPath(tempPath);
//   �õ����е��ļ���
   List fileItems = fu.parseRequest(request);
   Iterator i = fileItems.iterator();
//   ���δ���ÿһ���ļ���
   while(i.hasNext()) {
   FileItem file = (FileItem)i.next();
//   ����ļ���������ļ������û��ϴ�ʱ�û��ľ���·����
   String sourcefileName = file.getName();
   if(sourcefileName!=null&&(sourcefileName.endsWith(".jpg")||sourcefileName.endsWith(".png"))) {
//   ��������Լ�¼�û����ļ���Ϣ,�����ϴ�����ļ���
   String destinationfileName=null;
   Random rd = new Random();
   Calendar time = Calendar.getInstance();
   if(sourcefileName.endsWith(".jpg")){
   destinationfileName=sourcefileName;
   }else if(sourcefileName.endsWith(".png")){
  destinationfileName=sourcefileName;
   }
   File f1=new File(uploadPath+ destinationfileName);
   file.write(f1);
   out.print("<script>window.onload=function(){alert('�ϴ��ɹ�');window.location.href='admin-goods.jsp';}</script>");
   }else{
   out.print("<script>window.onload=function(){alert('�ϴ�ʧ�ܣ�ֻ���ϴ� *.jpg , *.png�ļ�');window.location.href='admin-goods.jsp';}</script>");
   }
   }
//   ��ת���ϴ��ɹ���ʾҳ��
   }
   catch(Exception e) {
//   ������ת����ҳ��
   }
   out.flush();
   out.close();
%>