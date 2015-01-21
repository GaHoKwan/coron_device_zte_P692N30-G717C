.class public Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DMService"

    const-string v1, "BackMusicReceiver--onReceive!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMApplication;->a(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->h(Lzte/com/cn/driverMode/service/DMService;)I

    move-result v0

    const-string v1, "DMService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2:btState == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$BackMusicReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;)V

    :cond_0
    return-void
.end method
