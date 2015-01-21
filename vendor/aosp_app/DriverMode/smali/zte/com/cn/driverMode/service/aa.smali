.class final Lzte/com/cn/driverMode/service/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lzte/com/cn/driverMode/service/DMDownloadPoiService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/aa;->b:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iput-object p2, p0, Lzte/com/cn/driverMode/service/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/aa;->b:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "province"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/aa;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/aa;->b:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/aa;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/aa;->b:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
