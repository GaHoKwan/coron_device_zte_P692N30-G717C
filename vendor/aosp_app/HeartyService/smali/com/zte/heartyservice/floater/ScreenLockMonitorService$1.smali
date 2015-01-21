.class Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenLockMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "SCREENLOCKMONITOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    #calls: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->cancelNotification()V
    invoke-static {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$000(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    .line 86
    sget-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    sput-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    .line 87
    sget-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    sput-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    .line 88
    const-string v1, "SCREENLOCKMONITOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " offScreenTime ============"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    #calls: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getOffScreenTimeStamp()V
    invoke-static {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$100(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    .line 90
    sget-object v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 91
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    const-wide/16 v2, 0x0

    #setter for: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$202(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;J)J

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    .line 97
    const-string v1, "SCREENLOCKMONITOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onScreenTime ==========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-wide v1, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->onScreenTime:J

    sget-wide v3, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->offScreenTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    #calls: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->getScreenLockDataMonitor()V
    invoke-static {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$300(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)V

    .line 102
    const-string v1, "SCREENLOCKMONITOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " off usedList.size() ====================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->usedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    #getter for: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J
    invoke-static {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$200(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)J

    move-result-wide v1

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 105
    const-string v1, "SCREENLOCKMONITOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " allScreenLockData ==========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    #getter for: Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->allScreenLockData:J
    invoke-static {v3}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->access$200(Lcom/zte/heartyservice/floater/ScreenLockMonitorService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitorService$1;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    invoke-virtual {v1}, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;->notifyMe()V

    goto :goto_0
.end method
