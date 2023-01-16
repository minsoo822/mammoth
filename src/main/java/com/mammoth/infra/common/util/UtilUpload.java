package com.mammoth.infra.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.mammoth.infra.modules.member.Member;
import com.mammoth.infra.modules.product.Product;
import com.mammoth.infra.modules.review.Review;

public class UtilUpload {
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
	
	public static void uploadMemberImg (MultipartFile multipartFile, String className, Member dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
//		컴퓨터에 저장되어있는 파일 이름 담아주기 보리.png
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
//		파일 이름에서 .뒤 부분을 잘라서 저장 확장자 명
		String uuid = UUID.randomUUID().toString();
//		16진수의 중복되지 않는 이름을 랜덤하게 만든다.
		String uuidFileName = uuid + "." + ext;
//		uuid에 확장자를 붙여서 저장 디비에도 저장되고 폴더에도 이 이름으로 저장되고 불러올떄도 이 이름으로 불러온다
		String pathModule = className;
//		module name 나는 community
		String nowString = UtilDateTime.nowString();
//		시분초 년월일
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
//		0부터 4까지 ->123, 5부터 7 ->5,6 8부터 10까지 -> 8,9   시분초까지 나눌수 있음 위에 nowString 추가해서하면 된다.
//		1995/10/27 보리.png
		
//		local 이미지 업로드 경로
//		우경이 경로
		String path = "C://factory/WS_STS_4151/propolis/src/main/webapp/resources/uploaded" + "/" + pathModule + "/" + pathDate + "/";
		
//		EC2 이미지 업로드 경로
//		String path = "/factory/workspace/propolis/resources/uploaded" + "/" + pathModule +  "/" + pathDate + "/";
		
//		절대경로! 년폴더 월폴더 일폴더 여기에 이미지 파일들이 uuid로 저장된다.
		String pathForView = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
//		보여줄때 경로!
		
		createPath(path);
//		위에서 정의해준 경로를 생성해주는 메서드
		  
		multipartFile.transferTo(new File(path + uuidFileName));
//		uuid이름으로 경로에 옮기겠다
//		여기까지가 실제로 이미지를 물리적으로 저장하는 코드 (메서드)
		
		dto.setUpPath(pathForView);
		dto.setUpOriginalName(fileName);
		dto.setUpUuidName(uuidFileName);
		dto.setUpExt(ext);
		String size = ""+ multipartFile.getSize();
		dto.setUpSize(size); 
	}
	
	public static void uploadProductImg (MultipartFile multipartFile, String className, Product dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
//		컴퓨터에 저장되어있는 파일 이름 담아주기 보리.png
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
//		파일 이름에서 .뒤 부분을 잘라서 저장 확장자 명
		String uuid = UUID.randomUUID().toString();
//		16진수의 중복되지 않는 이름을 랜덤하게 만든다.
		String uuidFileName = uuid + "." + ext;
//		uuid에 확장자를 붙여서 저장 디비에도 저장되고 폴더에도 이 이름으로 저장되고 불러올떄도 이 이름으로 불러온다
		String pathModule = className;
//		module name 나는 community
		String nowString = UtilDateTime.nowString();
//		시분초 년월일
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
//		0부터 4까지 ->123, 5부터 7 ->5,6 8부터 10까지 -> 8,9   시분초까지 나눌수 있음 위에 nowString 추가해서하면 된다.
//		1995/10/27 보리.png
		
//		local 이미지 업로드 경로
//		우경이 경로
		String path = "C://factory/WS_STS_4151/mammoth/src/main/webapp/resources/uploaded" + "/" + pathModule + "/" + pathDate + "/";
		
//		EC2 이미지 업로드 경로
//		String path = "/factory/workspace/propolis/resources/uploaded" + "/" + pathModule +  "/" + pathDate + "/";
		
//		절대경로! 년폴더 월폴더 일폴더 여기에 이미지 파일들이 uuid로 저장된다.
		String pathForView = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
//		보여줄때 경로!
		
		createPath(path);
//		위에서 정의해준 경로를 생성해주는 메서드
		  
		multipartFile.transferTo(new File(path + uuidFileName));
//		uuid이름으로 경로에 옮기겠다
//		여기까지가 실제로 이미지를 물리적으로 저장하는 코드 (메서드)
		
		dto.setUpPath(pathForView);
		dto.setUpOriginalName(fileName);
		dto.setUpUuidName(uuidFileName);
		dto.setUpExt(ext);
		String size = ""+ multipartFile.getSize();
		dto.setUpSize(size); 
		
	}
	
	public static void uploadReviewImg (MultipartFile multipartFile, String className, Review dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
//		컴퓨터에 저장되어있는 파일 이름 담아주기 보리.png
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
//		파일 이름에서 .뒤 부분을 잘라서 저장 확장자 명
		String uuid = UUID.randomUUID().toString();
//		16진수의 중복되지 않는 이름을 랜덤하게 만든다.
		String uuidFileName = uuid + "." + ext;
//		uuid에 확장자를 붙여서 저장 디비에도 저장되고 폴더에도 이 이름으로 저장되고 불러올떄도 이 이름으로 불러온다
		String pathModule = className;
//		module name 나는 community
		String nowString = UtilDateTime.nowString();
//		시분초 년월일
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
//		0부터 4까지 ->123, 5부터 7 ->5,6 8부터 10까지 -> 8,9   시분초까지 나눌수 있음 위에 nowString 추가해서하면 된다.
//		1995/10/27 보리.png
		
//		local 이미지 업로드 경로
//		우경이 경로
		String path = "C://factory/WS_STS_4151/mammoth/src/main/webapp/resources/uploaded" + "/" + pathModule + "/" + pathDate + "/";
		
//		EC2 이미지 업로드 경로
//		String path = "/factory/workspace/propolis/resources/uploaded" + "/" + pathModule +  "/" + pathDate + "/";
		
//		절대경로! 년폴더 월폴더 일폴더 여기에 이미지 파일들이 uuid로 저장된다.
		String pathForView = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
//		보여줄때 경로!
		
		createPath(path);
//		위에서 정의해준 경로를 생성해주는 메서드
		  
		multipartFile.transferTo(new File(path + uuidFileName));
//		uuid이름으로 경로에 옮기겠다
//		여기까지가 실제로 이미지를 물리적으로 저장하는 코드 (메서드)
		
		dto.setUpPath(pathForView);
		dto.setUpOriginalName(fileName);
		dto.setUpUuidName(uuidFileName);
		dto.setUpExt(ext);
		String size = ""+ multipartFile.getSize();
		dto.setUpSize(size); 
		
	}


}