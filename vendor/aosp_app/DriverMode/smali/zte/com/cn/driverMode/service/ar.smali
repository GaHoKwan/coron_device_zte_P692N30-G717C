.class final Lzte/com/cn/driverMode/service/ar;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "toggle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "today"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "musicServiceReceiver:actionString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "STATE"

    const-string v2, "PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "STATE"

    const-string v2, "PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->e()V

    goto :goto_0

    :cond_3
    const-string v1, "pre"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->f()V

    goto :goto_0

    :cond_4
    const-string v1, "quite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "DMMusicService"

    const-string v1, "music service : quite broadcast !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "STATE"

    const-string v2, "QUITE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->g()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "STATE"

    const-string v2, "PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMApplication;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMMusicService;->t:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ar;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->i()Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "STATE"

    const-string v2, "PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
