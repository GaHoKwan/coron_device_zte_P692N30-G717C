.class public Lzte/com/cn/driverMode/service/DMService$HomeActivityVisibilityReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$HomeActivityVisibilityReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HomeActivityVisibilityReceiver --- >onReceive,action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "zte.com.cn.driverMode.HomeActivityOnResume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$HomeActivityVisibilityReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMService;->bp:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$HomeActivityVisibilityReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->o(Lzte/com/cn/driverMode/service/DMService;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$HomeActivityVisibilityReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMService;->bp:Z

    goto :goto_0
.end method
