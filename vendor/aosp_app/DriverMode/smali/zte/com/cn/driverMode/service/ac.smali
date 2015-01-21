.class final Lzte/com/cn/driverMode/service/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v3, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startCheckIfUpdateExist---province="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.broadcast.updatedPoiDataExist"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ac;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
