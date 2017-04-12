package G04;

import java.util.List;

import G04.ckeditor;

public interface ckeditorDao {
	ckeditor findByid(int id);
	List<ckeditor> findAllWebpages();
	void save(ckeditor webInfo);
	void deleteById(int id);
}
