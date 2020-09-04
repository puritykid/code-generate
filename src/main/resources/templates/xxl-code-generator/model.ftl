<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
        <#if fieldItem.fieldClass == "Date">
            <#assign importDdate = true />
        </#if>
    </#list>
</#if>
import java.io.Serializable;
<#if importDdate?? && importDdate>
    import java.util.Date;
</#if>

/**
*  ${classInfo.classComment}
*
*  Created by chenxiaojun on '${.now?string('yyyy-MM-dd')}'.
*/
@Data
public class ${classInfo.className} implements Serializable {

    private static final long serialVersionUID = 42L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
    /**
    * ${fieldItem.fieldComment}
    */
        <#if fieldItem.fieldName == "deleted">
    @TableLogic(value = "0", delval = "1")
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};
        <#else>
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};
        </#if>

    </#list>
</#if>

}