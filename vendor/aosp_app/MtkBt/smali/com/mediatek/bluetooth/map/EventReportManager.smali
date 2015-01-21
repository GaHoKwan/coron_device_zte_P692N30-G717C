.class public Lcom/mediatek/bluetooth/map/EventReportManager;
.super Ljava/lang/Object;
.source "EventReportManager.java"

# interfaces
.implements Lcom/mediatek/bluetooth/map/Instance$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    }
.end annotation


# instance fields
.field private mChannel:Lcom/mediatek/bluetooth/map/EventChannel;

.field private mChannelBusy:Z

.field private mEventlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/map/EventReportManager$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/EventChannel;)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannelBusy:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannel:Lcom/mediatek/bluetooth/map/EventChannel;

    .line 37
    return-void
.end method

.method private addEvent(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V
    .locals 3
    .parameter "device"
    .parameter "event"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/mediatek/bluetooth/map/EventReportManager$Event;

    invoke-direct {v2, p0, p1, p2}, Lcom/mediatek/bluetooth/map/EventReportManager$Event;-><init>(Lcom/mediatek/bluetooth/map/EventReportManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeEvent(I)V
    .locals 4
    .parameter "masId"

    .prologue
    .line 64
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    monitor-enter v3

    .line 65
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;

    .line 67
    .local v0, current:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->mReport:Lcom/mediatek/bluetooth/map/cache/EventReport;

    invoke-virtual {v2, p1}, Lcom/mediatek/bluetooth/map/cache/EventReport;->match(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .end local v0           #current:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 73
    .restart local v0       #current:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0           #current:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-void
.end method

.method private retrieveEvent()Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;

    monitor-exit v1

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onEventSentCompleted()V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    .line 107
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannelBusy:Z

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/EventReportManager;->retrieveAndSend()V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInstanceChanged(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V
    .locals 0
    .parameter "device"
    .parameter "report"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/mediatek/bluetooth/map/EventReportManager;->addEvent(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/map/EventReportManager;->retrieveAndSend()V

    .line 97
    return-void
.end method

.method public onInstanceReportDisabled(I)V
    .locals 0
    .parameter "masId"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/EventReportManager;->removeEvent(I)V

    .line 102
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mEventlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannelBusy:Z

    .line 44
    return-void

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized retrieveAndSend()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannelBusy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/EventReportManager;->retrieveEvent()Lcom/mediatek/bluetooth/map/EventReportManager$Event;

    move-result-object v0

    .line 87
    .local v0, event:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannel:Lcom/mediatek/bluetooth/map/EventChannel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannel:Lcom/mediatek/bluetooth/map/EventChannel;

    iget-object v2, v0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, v0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->mReport:Lcom/mediatek/bluetooth/map/cache/EventReport;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/map/EventChannel;->sendReport(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/EventReportManager;->mChannelBusy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #event:Lcom/mediatek/bluetooth/map/EventReportManager$Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
