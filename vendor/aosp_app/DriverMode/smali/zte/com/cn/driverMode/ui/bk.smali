.class final Lzte/com/cn/driverMode/ui/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bk;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "ServiceConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lzte/com/cn/driverMode/service/aw;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bk;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {p2}, Lzte/com/cn/driverMode/service/aw;->a()Lzte/com/cn/driverMode/service/DMMusicService;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "ServiceDisConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bk;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    return-void
.end method
