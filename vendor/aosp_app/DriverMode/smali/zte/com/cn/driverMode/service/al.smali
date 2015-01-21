.class final Lzte/com/cn/driverMode/service/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/al;->c:Z

    iput-object p2, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    iput-wide p3, p0, Lzte/com/cn/driverMode/service/al;->d:J

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/al;)J
    .locals 2

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/al;->d:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "province"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isDownloading"

    iget-boolean v3, p0, Lzte/com/cn/driverMode/service/al;->c:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/al;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/al;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/al;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/al;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/al;->c:Z

    return v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/service/al;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/al;->c:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v2, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadPoiDataRunable---size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "DMDownloadPoiService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "downloadPoiDataRunable---i="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",curProvince="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",status="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget v0, v0, Lzte/com/cn/driverMode/service/ag;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ag;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/ag;->b:Lzte/com/cn/driverMode/service/ch;

    if-eqz v0, :cond_4

    :goto_2
    if-nez v0, :cond_3

    const-string v0, "DMDownloadPoiService"

    const-string v1, "downloadPoiDataRunable---loader=null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/driverMode/service/al;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    :try_start_1
    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run---loader.download,curProvince="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/al;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lzte/com/cn/driverMode/service/am;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/service/am;-><init>(Lzte/com/cn/driverMode/service/al;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/ch;->a(Lzte/com/cn/driverMode/service/cf;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
