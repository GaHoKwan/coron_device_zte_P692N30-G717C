.class final Lzte/com/cn/driverMode/ui/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "ServiceConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lzte/com/cn/driverMode/service/af;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {p2}, Lzte/com/cn/driverMode/service/af;->a()Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/DMApplication;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->m:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/ae;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "ServiceDisConnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/co;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    return-void
.end method
