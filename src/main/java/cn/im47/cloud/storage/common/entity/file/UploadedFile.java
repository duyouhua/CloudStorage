package cn.im47.cloud.storage.common.entity.file;

import cn.im47.cloud.storage.common.entity.node.Node;
import cn.im47.commons.entity.PersistableEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.io.Serializable;

/**
 * 文件
 * <p/>
 * User: baitao.jibt@gmail.com
 * Date: 12-7-16
 * Time: 上午7:56
 */
public class UploadedFile extends PersistableEntity implements Serializable {

    private static final long serialVersionUID = -38331060124340964L;

    private Node node;
    private String fileKey;    // 物理硬盘上实际存储的文件名
    private String customName;     // 用户自定义文件名（用于前端显示）
    private String realName;       // 上传时的文件名（用于下载）
    private String suffix;
    private long size;
    private String md5;
    private String CRC;
    private int downloadCount;      //下载次数
    private boolean shared;
    private boolean status;        // 是否可下载
    private boolean deleted;

    public UploadedFile() {
    }

    public UploadedFile(String customName, int size, String realName) {
        this.customName = customName;
        this.realName = realName;
        this.size = size;
    }

    public Node getNode() {
        return node;
    }

    public void setNode(Node node) {
        this.node = node;
    }

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public String getFileKey() {
        return fileKey;
    }

    public void setFileKey(String fileKey) {
        this.fileKey = fileKey;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5;
    }

    public String getCRC() {
        return CRC;
    }

    public void setCRC(String CRC) {
        this.CRC = CRC;
    }

    public int getDownloadCount() {
        return downloadCount;
    }

    public void setDownloadCount(int downloadCount) {
        this.downloadCount = downloadCount;
    }

    public boolean isShared() {
        return shared;
    }

    public void setShared(boolean shared) {
        this.shared = shared;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }

}
