package cn.im47.cloud.storage.common.service.account;

import cn.im47.cloud.storage.common.entity.account.FtpUser;
import cn.im47.cloud.storage.common.service.GenericManager;

import java.util.List;
import java.util.Map;

/**
 * ftp用户 业务逻辑 接口
 * User: pengfei.dongpf(pengfei.dong@gmail.com)
 * Date: 12-9-1
 * Time: 下午8:58
 */
public interface FtpUserManager extends GenericManager<FtpUser, Long> {

    /**
     * 更新用户bool字段
     *
     * @param id
     * @param column
     * @return
     */
    int updateBool(Long id, String column);

    /**
     * 起任务删除标记用户
     *
     * @return
     */
    int deleteByTask();

    /**
     * 批量改变用户的删除标志
     *
     * @param ids
     */
    void deleteInBatch(String[] ids);

    /**
     * 启用或者停用 ftp用户
     *
     * @param id
     * @return
     */
    int start(Long id);

    /**
     * 重置密码
     *
     * @param ftpUser
     */
    void repass(FtpUser ftpUser);

    /**
     * 获取用户数量
     *
     * @return
     */
    Long count();

    /**
     * 修改密码
     */
    int changePassword(Long id, String plainPassword);

    /**
     * Generic method used to get all objects of a particular type. This
     * is the same as lookup up all rows in a table.
     *
     * @return List of populated objects
     */
    List<FtpUser> search(Map<String, Object> parameters);

    /**
     * Generic method used to get all objects of a particular type. This
     * is the same as lookup up all rows in a table.
     *
     * @return List of populated objects
     */
    List<FtpUser> search(Map<String, Object> parameters, int offset, int limit);

}
