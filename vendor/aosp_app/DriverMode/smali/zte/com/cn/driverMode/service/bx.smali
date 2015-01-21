.class public final Lzte/com/cn/driverMode/service/bx;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bx;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bx;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bx;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v0, Lzte/com/cn/driverMode/service/DMService;->e:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lzte/com/cn/driverMode/service/cd;

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/DMService;->a(Landroid/content/Context;Lzte/com/cn/driverMode/service/cd;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
