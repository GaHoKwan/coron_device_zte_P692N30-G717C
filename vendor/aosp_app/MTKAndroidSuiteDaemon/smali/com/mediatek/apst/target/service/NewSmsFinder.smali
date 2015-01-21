.class public abstract Lcom/mediatek/apst/target/service/NewSmsFinder;
.super Ljava/lang/Thread;
.source "NewSmsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
    }
.end annotation


# instance fields
.field private mFindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSmsTimeStamp:J

.field private mShouldTerminate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mFindList:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mShouldTerminate:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mLastSmsTimeStamp:J

    .line 128
    return-void
.end method


# virtual methods
.method public declared-synchronized appendTask(Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;)V
    .locals 1
    .parameter "toFind"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mFindList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract findSms(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/apst/util/entity/message/Sms;
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "NewSmsFinder"

    return-object v0
.end method

.method public isShouldTerminate()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mShouldTerminate:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->isShouldTerminate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mFindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mFindList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;

    .line 83
    .local v10, toFind:Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
    if-eqz v10, :cond_2

    .line 85
    const/16 v9, 0x1e

    .line 86
    .local v9, retry:I
    const/4 v7, 0x0

    .line 87
    .local v7, found:Z
    :goto_1
    if-lez v9, :cond_1

    .line 88
    add-int/lit8 v9, v9, -0x1

    .line 91
    invoke-virtual {v10}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->getDate()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mLastSmsTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 92
    iget-wide v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mLastSmsTimeStamp:J

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->setDate(J)V

    .line 94
    :cond_0
    invoke-virtual {v10}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->getDate()J

    move-result-wide v1

    invoke-virtual {v10}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->getBox()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/apst/target/service/NewSmsFinder;->findSms(JLjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v8

    .line 97
    .local v8, newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    if-eqz v8, :cond_3

    .line 98
    invoke-virtual {v8}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mLastSmsTimeStamp:J

    .line 99
    const/4 v7, 0x1

    .line 110
    .end local v8           #newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_1
    if-nez v7, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run"

    const-string v2, "Fail to find the new SMS."

    invoke-static {v0, v1, v11, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .end local v7           #found:Z
    .end local v9           #retry:I
    .end local v10           #toFind:Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
    :cond_2
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Lcom/mediatek/apst/target/service/NewSmsFinder;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run"

    invoke-static {v0, v1, v11, v11, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v7       #found:Z
    .restart local v8       #newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    .restart local v9       #retry:I
    .restart local v10       #toFind:Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
    :cond_3
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Lcom/mediatek/apst/target/service/NewSmsFinder;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 105
    :catch_1
    move-exception v6

    .line 106
    .restart local v6       #e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/NewSmsFinder;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run"

    invoke-static {v0, v1, v11, v11, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    .end local v6           #e:Ljava/lang/InterruptedException;
    .end local v7           #found:Z
    .end local v8           #newSms:Lcom/mediatek/apst/util/entity/message/Sms;
    .end local v9           #retry:I
    .end local v10           #toFind:Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
    :cond_4
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder;->mShouldTerminate:Z

    .line 61
    return-void
.end method
