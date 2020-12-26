package bitcamp.sodam.service;

import java.io.File;
import java.security.MessageDigest;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bitcamp.sodam.beans.Store;
import bitcamp.sodam.beans.User;
import bitcamp.sodam.dao.StoreDao;
import bitcamp.sodam.dao.UserDao;

@Service
@PropertySource("/WEB-INF/properties/config.properties")
public class UploadStoreService {

	@Value("${path.img.store}")
	private String path;

	@Autowired
	private StoreDao storeDao;

	// 파일객체와 user 객체를 넘겨주면 파일을 저장하고 저장된 파일 path를 리턴한다.
	private String saveUploadFile(MultipartFile upload_file, Store store) throws Exception {

		String file_name = sha256(store.getSname()) + ".jpg";
		String full_path = path + "/" + file_name;

		try {
			upload_file.transferTo(new File(full_path));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return file_name;
	}

	public void addStoreInfo(Store store) throws Exception {

		MultipartFile upload_file = store.getUpload_image();

		if (upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file, store);
			store.setSphoto(file_name);
			storeDao.insertStore(store);
		}
		
		
        
        
	}

	public void editStoreInfo(Store store) throws Exception {

		MultipartFile upload_file = store.getUpload_image();

		if (upload_file.getSize() > 0) {
			String file_name = saveUploadFile(upload_file, store);
			store.setSphoto(file_name);
			storeDao.updateStore(store);
		} else {
			storeDao.updateStore(store);
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
