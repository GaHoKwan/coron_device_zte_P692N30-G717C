.class public Lcom/mediatek/apst/target/service/CalendarEventObserver;
.super Landroid/database/ContentObserver;
.source "CalendarEventObserver.java"

# interfaces
.implements Lcom/mediatek/apst/target/data/proxy/ISelfChangeObserver;


# instance fields
.field private mCalendarEventId:J

.field private mObservering:Z

.field private mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

.field private mSelfChangingContent:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V
    .locals 2
    .parameter "handler"
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mSelfChangingContent:Z

    .line 56
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mObservering:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mCalendarEventId:J

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "Argument \'handler\' is null in constructor!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 68
    :cond_0
    iput-object p2, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    .line 69
    return-void
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
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mSelfChangingContent:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 101
    iget-object v3, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-virtual {v3}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v1

    .line 102
    .local v1, maxCalendarEventId:J
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synchronized maxCalendarEventId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v3, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mObservering:Z

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/apst/target/service/CalendarEventObserver;->isSelfChangingContent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "CalendarEvent content is changed by other applications!"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-wide v3, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mCalendarEventId:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 112
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New event, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getEvent(JZZ)Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    move-result-object v0

    .line 117
    .local v0, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    new-instance v3, Lcom/mediatek/apst/target/event/Event;

    invoke-direct {v3}, Lcom/mediatek/apst/target/event/Event;-><init>()V

    const-string v4, "by_self"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v3

    const-string v4, "calendarEvent"

    invoke-virtual {v3, v4, v0}, Lcom/mediatek/apst/target/event/Event;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/mediatek/apst/target/event/Event;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/event/EventDispatcher;->dispatchCalendarEventChangedEvent(Lcom/mediatek/apst/target/event/Event;)V

    .line 131
    .end local v0           #event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    :cond_0
    :goto_0
    iput-wide v1, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mCalendarEventId:J

    .line 132
    monitor-exit p0

    .line 133
    return-void

    .line 126
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Event content is changed by self."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onSelfChangeDone()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mSelfChangingContent:Z

    .line 147
    const-string v0, "CalendarEvent onSelfChangeDone()!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onSelfChangeStart()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mSelfChangingContent:Z

    .line 142
    const-string v0, "CalendarEvent onSelfChangeStart()!"

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    if-nez v0, :cond_1

    .line 83
    const-string v0, "Proxy is null."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mObservering:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mProxy:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mCalendarEventId:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mObservering:Z

    .line 90
    const-string v0, "Start observering message content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/CalendarEventObserver;->mObservering:Z

    .line 96
    const-string v0, "Stop observering calendar event content."

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 97
    return-void
.end method
