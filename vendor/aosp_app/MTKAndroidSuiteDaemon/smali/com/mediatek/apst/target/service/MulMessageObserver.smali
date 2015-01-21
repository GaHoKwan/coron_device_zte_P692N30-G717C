.class public Lcom/mediatek/apst/target/service/MulMessageObserver;
.super Landroid/database/ContentObserver;
.source "MulMessageObserver.java"

# interfaces
.implements Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;


# instance fields
.field private mMaxMmsId:J

.field private mObservering:Z

.field mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

.field private mSelfChangingContent:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 2
    .parameter "handler"
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 69
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mSelfChangingContent:Z

    .line 71
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mObservering:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 77
    iput-object p2, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 78
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxMmsId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    return-wide v0
.end method

.method public isSelfChangingContent()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mSelfChangingContent:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 14
    .parameter "selfChange"

    .prologue
    const-wide/16 v12, 0x1

    .line 106
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 107
    iget-boolean v6, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mObservering:Z

    if-eqz v6, :cond_4

    .line 108
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v6}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsId()J

    move-result-wide v3

    .line 109
    .local v3, maxMmsId:J
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MulMessageObserver;->isSelfChangingContent()Z

    move-result v6

    if-nez v6, :cond_5

    .line 111
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Provide this change to PC side.."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-wide v6, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    sub-long v0, v3, v6

    .line 114
    .local v0, count:J
    const-wide/16 v6, 0xc8

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 117
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "so many mms are inserted,get latest mms to PC side"

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sub-long v6, v3, v12

    iput-wide v6, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 119
    const-wide/16 v0, 0x1

    .line 121
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 122
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    int-to-long v6, v2

    cmp-long v6, v6, v0

    if-gez v6, :cond_3

    .line 123
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New MMS insert, id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    add-long/2addr v8, v12

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    iget-wide v7, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    int-to-long v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v12

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMms(J)Lcom/mediatek/apst/util/entity/message/Mms;

    move-result-object v5

    .line 126
    .local v5, newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    if-eqz v5, :cond_1

    .line 127
    new-instance v6, Lcom/mediatek/apst/target/event/Event;

    invoke-direct {v6}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v7, "by_self"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v6

    const-string v7, "mms"

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchMmsInsertedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 122
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "New Mms is null"

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v0           #count:J
    .end local v2           #i:I
    .end local v5           #newMms:Lcom/mediatek/apst/util/entity/message/Mms;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 140
    .restart local v0       #count:J
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 141
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Isn\'t inserting mms , Max mms id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .end local v0           #count:J
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iput-wide v3, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 151
    .end local v3           #maxMmsId:J
    :cond_4
    return-void

    .line 144
    .restart local v3       #maxMmsId:J
    :cond_5
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Message content is changed by self."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onSelfChangeDone()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mSelfChangingContent:Z

    .line 166
    return-void
.end method

.method public onSelfChangeStart()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mSelfChangingContent:Z

    .line 161
    return-void
.end method

.method public setMaxMmsId(J)V
    .locals 0
    .parameter "maxMmsId"

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 179
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    if-nez v0, :cond_1

    .line 86
    const-string v0, "Proxy is null."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mObservering:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxMmsId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mObservering:Z

    .line 93
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Start observering mms content."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-array v0, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxMmsId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mMaxMmsId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MulMessageObserver;->mObservering:Z

    .line 100
    const-string v0, "Stop observering mms content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 101
    return-void
.end method
