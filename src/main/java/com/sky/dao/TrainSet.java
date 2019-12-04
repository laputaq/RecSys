package com.sky.dao;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.sky.utils.serializer.Date2LongSerializer;
import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * 训练表
 */
@Entity
@Data
@DynamicUpdate
public class TrainSet {
    @Id
    private int id;

    private int groupId;

    private int eventId;

    @JsonSerialize(using = Date2LongSerializer.class)
    private Date createTime;

    @JsonSerialize(using = Date2LongSerializer.class)
    private Date updateTime;

    public TrainSet() {
    }

    public TrainSet(int groupId, int eventId) {
        this.groupId = groupId;
        this.eventId = eventId;
    }
}
