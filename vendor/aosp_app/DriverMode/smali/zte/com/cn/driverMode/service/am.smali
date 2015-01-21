.class final Lzte/com/cn/driverMode/service/am;
.super Ljava/lang/Object;

# interfaces
.implements Lzte/com/cn/driverMode/service/cf;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/al;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/al;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadSize---size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalFileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/al;->a(Lzte/com/cn/driverMode/service/al;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/al;->b(Lzte/com/cn/driverMode/service/al;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "curFileSize"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "totalFileSize"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/al;->a(Lzte/com/cn/driverMode/service/al;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "province"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/al;->c(Lzte/com/cn/driverMode/service/al;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/al;->a(Lzte/com/cn/driverMode/service/al;)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/am;->a:Lzte/com/cn/driverMode/service/al;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    const v2, 0x7f080322

    invoke-virtual {v1, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/al;->a(Lzte/com/cn/driverMode/service/al;Ljava/lang/String;)V

    return-void
.end method
