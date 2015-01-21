.class final Lzte/com/cn/driverMode/service/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lzte/com/cn/driverMode/service/i;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bm;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "beep.pcm.jpg"

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bm;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMService;->e(Lzte/com/cn/driverMode/service/DMService;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bm;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->e()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bm;->a:Lzte/com/cn/driverMode/service/DMService;

    const-string v1, ""

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
