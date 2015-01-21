.class final Lzte/com/cn/driverMode/service/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/an;->c:Z

    iput-object p2, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/driverMode/service/an;->c:Z

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "province"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reason"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080356

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isDownloading"

    iget-boolean v3, p0, Lzte/com/cn/driverMode/service/an;->c:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v9, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_POI.zcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lzte/com/cn/driverMode/service/ch;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMApplication;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    iget-object v5, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v5}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMApplication;

    move-result-object v5

    iget v5, v5, Lzte/com/cn/driverMode/service/DMApplication;->t:I

    invoke-direct/range {v0 .. v5}, Lzte/com/cn/driverMode/service/ch;-><init>(Lzte/com/cn/driverMode/service/DMApplication;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->a()I

    move-result v1

    int-to-long v1, v1

    iget-object v4, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v4, v1, v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;J)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "province"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reason"

    iget-object v3, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080355

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isDownloading"

    iget-boolean v3, p0, Lzte/com/cn/driverMode/service/an;->c:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "province"

    iget-object v4, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reason"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isDownloading"

    iget-boolean v3, p0, Lzte/com/cn/driverMode/service/an;->c:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v9, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->b()J

    move-result-wide v4

    iget-object v6, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v6, v6, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v6, v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v8, v8, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a:Lzte/com/cn/driverMode/utils/h;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v3, v4, v5, v6}, Lzte/com/cn/driverMode/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    iget-object v4, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-static {v3, v4, v5, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "province"

    iget-object v5, p0, Lzte/com/cn/driverMode/service/an;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "totalFileSize"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/an;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
