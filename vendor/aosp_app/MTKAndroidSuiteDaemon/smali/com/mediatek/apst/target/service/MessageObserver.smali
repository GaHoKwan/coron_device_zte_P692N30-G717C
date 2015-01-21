.class public Lcom/mediatek/apst/target/service/MessageObserver;
.super Landroid/database/ContentObserver;
.source "MessageObserver.java"

# interfaces
.implements Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;


# instance fields
.field private mMaxSentSmsId:J

.field private mObservering:Z

.field private mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

.field private mSelfChangingContent:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;)V
    .locals 2
    .parameter "handler"
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mSelfChangingContent:Z

    .line 57
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mObservering:Z

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mMaxSentSmsId:J

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string v0, "Argument \'handler\' is null in constructor!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 66
    :cond_0
    iput-object p2, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    .line 67
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfChangingContent()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mSelfChangingContent:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxSmsId(I)J

    move-result-wide v0

    .line 92
    .local v0, maxSentSmsId:J
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxSentSmsId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-boolean v3, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mObservering:Z

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/MessageObserver;->isSelfChangingContent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "Message content is changed by other applications!"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-wide v3, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mMaxSentSmsId:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 100
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New SMS sent, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v3, v0, v1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getSms(J)Lcom/mediatek/apst/util/entity/message/Sms;

    move-result-object v2

    .line 104
    .local v2, newSmsSent:Lcom/mediatek/apst/util/entity/message/Sms;
    new-instance v3, Lcom/mediatek/apst/target/event/Event;

    invoke-direct {v3}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v4, "by_self"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v3

    const-string v4, "sms"

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchSmsInsertedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 113
    .end local v2           #newSmsSent:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mMaxSentSmsId:J

    .line 114
    return-void

    .line 109
    :cond_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "Message content is changed by self."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelfChangeDone()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mSelfChangingContent:Z

    .line 127
    return-void
.end method

.method public onSelfChangeStart()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mSelfChangingContent:Z

    .line 123
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    if-nez v0, :cond_1

    .line 73
    const-string v0, "Proxy is null."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mObservering:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->getMaxSmsId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mMaxSentSmsId:J

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mObservering:Z

    .line 80
    const-string v0, "Start observering message content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/MessageObserver;->mObservering:Z

    .line 86
    const-string v0, "Stop observering message content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 87
    return-void
.end method
