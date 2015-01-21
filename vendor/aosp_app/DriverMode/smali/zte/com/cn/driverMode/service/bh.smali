.class final Lzte/com/cn/driverMode/service/bh;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bh;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bh;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->a(Lzte/com/cn/driverMode/service/DMService;)Z

    return-void
.end method
