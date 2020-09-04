
/**
*  ${classInfo.classComment}
*
*  Created by chenxiaojun on '${.now?string('yyyy-MM-dd')}'.
*/
@Service
public class ${classInfo.className}ServiceImpl extends ServiceImpl<${classInfo.className}Mapper, ${classInfo.className}> implements ${classInfo.className}Service {

	@Autowired
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

}
