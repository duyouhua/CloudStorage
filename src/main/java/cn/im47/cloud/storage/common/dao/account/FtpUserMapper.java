package cn.im47.cloud.storage.common.dao.account;

import cn.im47.cloud.storage.common.dao.GenericDao;
import cn.im47.cloud.storage.common.entity.account.FtpUser;

/**
 * Ftp用户 Dao 接口
 * User: pengfei.dongpf(pengfei.dongpf@gmail.com)
 * Date: 12-5-12
 * Time: 下午1:26
 */
public interface FtpUserMapper extends GenericDao<FtpUser, Long> {

    /**
     * 起任务删除标记用户
     *
     * @return
     */
    int deleteByTask();

    /**
     * 检验用户名是否可用
     *
     * @param name
     * @return
     */
    int isUsedName(String name);

}
