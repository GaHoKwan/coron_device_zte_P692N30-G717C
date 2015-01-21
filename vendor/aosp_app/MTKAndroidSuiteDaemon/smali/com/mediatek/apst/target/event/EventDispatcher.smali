.class public final Lcom/mediatek/apst/target/event/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;


# instance fields
.field private mBatteryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/IBatteryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/ICalendarEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/IContactsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/IMmsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/IPackageListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSdStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/ISdStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSimStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/ISimStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/event/ISmsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/mediatek/apst/target/event/EventDispatcher;

    invoke-direct {v0}, Lcom/mediatek/apst/target/event/EventDispatcher;-><init>()V

    sput-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mBatteryListeners:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mPackageListeners:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSdStateListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSimStateListeners:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mContactsListeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mMmsListeners:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/apst/target/event/EventDispatcher;->mCalendarEventListeners:Ljava/util/List;

    .line 72
    return-void
.end method

.method public static dispatchBatteryStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 179
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mBatteryListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IBatteryListener;

    .line 180
    .local v1, listener:Lcom/mediatek/apst/target/event/IBatteryListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IBatteryListener;->onBatteryStateChanged(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 182
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IBatteryListener;
    :cond_0
    return-void
.end method

.method public static dispatchCalendarEventChangedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 289
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mCalendarEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ICalendarEventListener;

    .line 290
    .local v1, listener:Lcom/mediatek/apst/target/event/ICalendarEventListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ICalendarEventListener;->onCalendarEventContentChanged(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 292
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ICalendarEventListener;
    :cond_0
    return-void
.end method

.method public static dispatchContactsContentChangedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 279
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mContactsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IContactsListener;

    .line 280
    .local v1, listener:Lcom/mediatek/apst/target/event/IContactsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IContactsListener;->onContactsContentChanged(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 282
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IContactsListener;
    :cond_0
    return-void
.end method

.method public static dispatchMmsInsertedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 259
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mMmsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IMmsListener;

    .line 260
    .local v1, listener:Lcom/mediatek/apst/target/event/IMmsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IMmsListener;->onMmsInserted(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 262
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IMmsListener;
    :cond_0
    return-void
.end method

.method public static dispatchMmsReceiveEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 269
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mMmsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IMmsListener;

    .line 270
    .local v1, listener:Lcom/mediatek/apst/target/event/IMmsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IMmsListener;->onMmsReceived(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 272
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IMmsListener;
    :cond_0
    return-void
.end method

.method public static dispatchPackageAddedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 189
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mPackageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IPackageListener;

    .line 190
    .local v1, listener:Lcom/mediatek/apst/target/event/IPackageListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IPackageListener;->onPackageAdded(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 192
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IPackageListener;
    :cond_0
    return-void
.end method

.method public static dispatchPackageDataClearedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 199
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mPackageListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/IPackageListener;

    .line 200
    .local v1, listener:Lcom/mediatek/apst/target/event/IPackageListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/IPackageListener;->onPackageDataCleared(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 202
    .end local v1           #listener:Lcom/mediatek/apst/target/event/IPackageListener;
    :cond_0
    return-void
.end method

.method public static dispatchSdStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 209
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mSdStateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ISdStateListener;

    .line 210
    .local v1, listener:Lcom/mediatek/apst/target/event/ISdStateListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ISdStateListener;->onSdStateChanged(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 212
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ISdStateListener;
    :cond_0
    return-void
.end method

.method public static dispatchSimStateChangedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 219
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ISimStateListener;

    .line 220
    .local v1, listener:Lcom/mediatek/apst/target/event/ISimStateListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ISimStateListener;->onSimStateChanged(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 222
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ISimStateListener;
    :cond_0
    return-void
.end method

.method public static dispatchSmsInsertedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 249
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ISmsListener;

    .line 250
    .local v1, listener:Lcom/mediatek/apst/target/event/ISmsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ISmsListener;->onSmsInserted(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 252
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ISmsListener;
    :cond_0
    return-void
.end method

.method public static dispatchSmsReceivedEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 239
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ISmsListener;

    .line 240
    .local v1, listener:Lcom/mediatek/apst/target/event/ISmsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ISmsListener;->onSmsReceived(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 242
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ISmsListener;
    :cond_0
    return-void
.end method

.method public static dispatchSmsSentEvent(Lcom/mediatek/apst/target/event/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 229
    sget-object v2, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v2, v2, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/target/event/ISmsListener;

    .line 230
    .local v1, listener:Lcom/mediatek/apst/target/event/ISmsListener;
    invoke-interface {v1, p0}, Lcom/mediatek/apst/target/event/ISmsListener;->onSmsSent(Lcom/mediatek/apst/target/event/Event;)V

    goto :goto_0

    .line 232
    .end local v1           #listener:Lcom/mediatek/apst/target/event/ISmsListener;
    :cond_0
    return-void
.end method

.method public static declared-synchronized registerBatteryListener(Lcom/mediatek/apst/target/event/IBatteryListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 80
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 81
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mBatteryListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerCalendarEventListener(Lcom/mediatek/apst/target/event/ICalendarEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 155
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 156
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mCalendarEventListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit v1

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerContactsListener(Lcom/mediatek/apst/target/event/IContactsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 134
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 135
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mContactsListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit v1

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerMmsListener(Lcom/mediatek/apst/target/event/IMmsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 144
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mMmsListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    monitor-exit v1

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerPackageListener(Lcom/mediatek/apst/target/event/IPackageListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 91
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 92
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mPackageListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit v1

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerSdStateListener(Lcom/mediatek/apst/target/event/ISdStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 102
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 103
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSdStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit v1

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerSimStateListener(Lcom/mediatek/apst/target/event/ISimStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 113
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 114
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerSmsListener(Lcom/mediatek/apst/target/event/ISmsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 123
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit v1

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterListener(Lcom/mediatek/apst/target/event/IEventListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 165
    const-class v1, Lcom/mediatek/apst/target/event/EventDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mBatteryListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mPackageListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSdStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSimStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mSmsListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mContactsListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/mediatek/apst/target/event/EventDispatcher;->sInstance:Lcom/mediatek/apst/target/event/EventDispatcher;

    iget-object v0, v0, Lcom/mediatek/apst/target/event/EventDispatcher;->mCalendarEventListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v1

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
