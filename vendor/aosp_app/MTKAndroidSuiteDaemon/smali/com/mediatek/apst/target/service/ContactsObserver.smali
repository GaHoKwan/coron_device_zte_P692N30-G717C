.class public Lcom/mediatek/apst/target/service/ContactsObserver;
.super Landroid/database/ContentObserver;
.source "ContactsObserver.java"

# interfaces
.implements Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;


# instance fields
.field private mLastCallTime:J

.field private mObservering:Z

.field private mProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field private mSelfChangingContent:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;)V
    .locals 1
    .parameter "handler"
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mSelfChangingContent:Z

    .line 57
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mObservering:Z

    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string v0, "Argument \'handler\' is null in constructor!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    .line 68
    return-void
.end method

.method private hasNewCall()Z
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getLastCallTime()J

    move-result-wide v0

    .line 143
    .local v0, newLastCallTime:J
    iget-wide v2, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mLastCallTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 144
    iput-wide v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mLastCallTime:J

    .line 145
    const/4 v2, 0x1

    .line 147
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfChangingContent()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mSelfChangingContent:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mObservering:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/ContactsObserver;->isSelfChangingContent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Contacts content is changed by other applications!"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/apst/target/service/ContactsObserver;->hasNewCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Contacts content is changed because of new call event, ignored."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    monitor-exit p0

    .line 133
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/mediatek/apst/target/event/Event;

    invoke-direct {v0}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v1, "by_self"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchContactsContentChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 131
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Contacts content is changed by self."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/mediatek/apst/target/event/Event;

    invoke-direct {v0}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v1, "by_self"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchContactsContentChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onSelfChangeDone()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mSelfChangingContent:Z

    .line 159
    return-void
.end method

.method public onSelfChangeStart()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mSelfChangingContent:Z

    .line 154
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    if-nez v0, :cond_1

    .line 86
    const-string v0, "Proxy is null."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mObservering:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getLastCallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mLastCallTime:J

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mObservering:Z

    .line 93
    const-string v0, "Start observering contacts content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/ContactsObserver;->mObservering:Z

    .line 99
    const-string v0, "Stop observering contacts content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 100
    return-void
.end method
