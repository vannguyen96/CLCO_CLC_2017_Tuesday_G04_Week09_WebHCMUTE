package G04;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import G04.ckeditor;


@Repository("ckeditorDao")
public class ckeditorDaoimpl extends AbstractDAO<Integer, ckeditor> implements ckeditorDao {
	@Override
	public ckeditor findByid(int id) {
		ckeditor webInfo=getByKey(id);
		return webInfo;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ckeditor> findAllWebpages() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("page_id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<ckeditor> webInfos = (List<ckeditor>) criteria.list();
		return webInfos;
	}

	@Override
	public void save(ckeditor webInfo) {
		persist(webInfo);
	}
	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("page_id", id));
		ckeditor webInfo = (ckeditor)crit.uniqueResult();
		delete(webInfo);
		
	}
}
