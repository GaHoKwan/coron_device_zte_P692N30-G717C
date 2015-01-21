.class final Lzte/com/cn/driverMode/service/aq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMMusicService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMMusicService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2005

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->m()Lzte/com/cn/driverMode/service/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ax;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Lzte/com/cn/driverMode/service/DMMusicService;)Lzte/com/cn/driverMode/service/by;

    move-result-object v1

    const-string v2, "last_music_name"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->a(Lzte/com/cn/driverMode/service/DMMusicService;)Lzte/com/cn/driverMode/service/by;

    move-result-object v0

    const-string v1, "last_music_position"

    iget-object v2, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v2}, Lzte/com/cn/driverMode/service/DMMusicService;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/aq;->a:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->stopSelf()V

    :cond_1
    return-void
.end method
