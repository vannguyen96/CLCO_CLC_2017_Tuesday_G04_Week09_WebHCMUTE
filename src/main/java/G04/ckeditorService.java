package G04;

import java.util.List;

import G04.ckeditor;

public interface ckeditorService {
	ckeditor findById(int id);
	void saveWebpage(ckeditor webInfo);
	void updateWebpage(ckeditor webInfo);
	void deleteUserById(int id);
	List<ckeditor> findAllWebPages();
}
