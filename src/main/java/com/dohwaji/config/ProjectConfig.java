package com.dohwaji.config;

public class ProjectConfig {

	/**
	 * 서버의 상품이미지 업로드 경로( 나중에 서버 경로 여기에서 수정하면 됨 )
	 * 테스트시에는 자기 로컬 디렉토리가 있어야함
	 */
	public static String BBS_UPLOAD_LOCATION = "/home/ec2-user/app/uploads";
	public static String PRODUCT_UPLOAD_LOCATION = "/home/ec2-user/app/uploads";
	public static String USER_UPLOAD_LOCATION = "/home/ec2-user/app/uploads";
	public static String BTTIP_UPLOAD_LOCATION = "/home/ec2-user/app/uploads";
	//String saveFolder = request.getServletContext().getRealPath("");
}
