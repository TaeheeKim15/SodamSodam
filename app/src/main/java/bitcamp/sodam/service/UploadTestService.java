package bitcamp.sodam.service;

import java.io.File;
import java.security.MessageDigest;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.UserDao;

@Service
@PropertySource("/WEB-INF/properties/config.properties")
public class UploadTestService {

	@Value("${path.img}")
	private String path;

	@Autowired
	private UserDao userDao;

	// 파일객체와 user 객체를 넘겨주면 파일을 저장하고 저장된 파일 path를 리턴한다.
	private String saveUploadFile(MultipartFile upload_file, User user) throws Exception {

		String file_name = sha256(user.getEmail()) + ".jpg";
		String full_path = path + "/" + file_name;

		try {
			upload_file.transferTo(new File(full_path));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return file_name;
	}

	// 파일 업로드 및 유저 등록 담당
	public void addUserInfo(User user) throws Exception {

		MultipartFile upload_file = user.getUpload_image();

		if (upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file, user);
			user.setUphoto(file_name);
			userDao.addUser(user);
		}
	}

	// 유저 업데이트
	public void editUserInfo(User user) throws Exception {

		MultipartFile upload_file = user.getUpload_image();

		if (upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file, user);
			user.setUphoto(file_name);
			userDao.editUser(user);
		} else {
			userDao.editUser(user);
		}
	}

	// 문자열 넘겨주면 sha256 암호화하여 리턴
	public static String sha256(String msg) throws Exception {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(msg.getBytes());
		StringBuilder builder = new StringBuilder();
		for (byte b : md.digest()) {
			builder.append(String.format("%02x", b));
		}
		return builder.toString();
	}
}
