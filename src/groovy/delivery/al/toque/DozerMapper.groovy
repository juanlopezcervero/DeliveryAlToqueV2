package delivery.al.toque

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;

class DozerMapper {

	private static DozerMapper instance
	
	private DozerBeanMapper mapper = new DozerBeanMapper();
	
	public static DozerMapper getInstance() {
		if (instance == null) {
			instance = new DozerMapper()
		}
		return instance
	}
	
	private DozerMapper() {
		List<String> myMappingFiles = new ArrayList<String>()
		myMappingFiles.add("dozerBeanMappings.xml")
		mapper.setMappingFiles(myMappingFiles)
	}
	
	public Object map(Object from, Class toClass) {
		return mapper.map(from, toClass)
	}
	
}
