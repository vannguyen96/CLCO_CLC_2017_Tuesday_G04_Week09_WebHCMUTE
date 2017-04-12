package G04;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import G04.ckeditor;
import G04.ckeditorDao;


@Service("webpageService")
@Transactional
public class ckeditorServiceImpl implements ckeditorService {
	@Autowired
	ckeditorDao dao;
	@Override
	public ckeditor findById(int id) {
	
		return dao.findByid(id);
	}

	@Override
	public void saveWebpage(ckeditor webInfo) {
		dao.save(webInfo);
		
	}

	@Override
	public void updateWebpage(ckeditor webInfo) {
		System.out.println(webInfo.getPage_id());
		String s=webInfo.getPage_id().toString();
		int id=Integer.parseInt(s);
		ckeditor entity=dao.findByid(id);
		if(entity!=null){
			entity.setDescription(webInfo.getDescription());
			entity.setContent(webInfo.getContent());
		}
	}

	@Override
	public void deleteUserById(int id) {
		dao.deleteById(id);
	}

	@Override
	public List<ckeditor> findAllWebPages() {
		return dao.findAllWebpages();
	}
}
