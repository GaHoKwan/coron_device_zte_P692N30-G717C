.class final Lzte/com/cn/driverMode/ui/bj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "today"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "musicActivityReceiver :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.drivermode.music.prepared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/bo;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.drivermod.musicplayererror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.drivermode.music.playStateChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "STATE"

    const-string v3, "STATE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/bo;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.com.cn.drivermode.changeMusicMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v0

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "musicMode"

    const-string v3, "musicMode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bj;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/bo;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
