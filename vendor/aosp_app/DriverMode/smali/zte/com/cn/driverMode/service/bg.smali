.class final Lzte/com/cn/driverMode/service/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bg;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "DMService"

    const-string v1, "startCheckIfNewPoiDataExist---ServiceConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lzte/com/cn/driverMode/service/af;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bg;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-virtual {p2}, Lzte/com/cn/driverMode/service/af;->a()Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bg;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bg;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->r(Lzte/com/cn/driverMode/service/DMService;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DMService"

    const-string v1, "startCheckIfNewPoiDataExist---ServiceDisConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
