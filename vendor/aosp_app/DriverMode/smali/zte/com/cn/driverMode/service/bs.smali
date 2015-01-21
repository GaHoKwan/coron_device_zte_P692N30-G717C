.class public final Lzte/com/cn/driverMode/service/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bs;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bs;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lzte/com/cn/driverMode/service/DMService;->aq:J

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bs;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, "beep.pcm.jpg"

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bs;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bs;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/g;->b()V

    :cond_0
    return-void
.end method
