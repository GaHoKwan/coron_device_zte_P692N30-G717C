.class final Lzte/com/cn/driverMode/service/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/au;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "DMMusicService"

    const-string v1, "onPreparedListenerListener..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/au;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Lzte/com/cn/driverMode/service/DMMusicService;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.drivermode.music.prepared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/au;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/DMMusicService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
