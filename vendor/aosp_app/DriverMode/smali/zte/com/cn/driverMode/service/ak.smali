.class final Lzte/com/cn/driverMode/service/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ak;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    iput-object p2, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "downloadPausePoiDataRunable---size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "DMDownloadPoiService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "downloadPausePoiDataRunable---i="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",curProvince="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    const/4 v2, 0x3

    iput v2, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->c()V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ak;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "provincePaused"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ak;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
