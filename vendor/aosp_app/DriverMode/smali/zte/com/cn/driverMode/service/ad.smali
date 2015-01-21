.class public final Lzte/com/cn/driverMode/service/ad;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x6

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadHandler---msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadHandler---bNeedCheckIfUpdateExist="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->f(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->g(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->h(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->j(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->k(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzte/com/cn/driverMode/service/ae;->a(Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0, p1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v0, "DMDownloadPoiService"

    const-string v1, "onPoiDataDownloadFailed---provinceDownloadFailed  has downloaded complete!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "reason"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isDownloading"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    const/4 v4, 0x5

    invoke-static {v3, v1, v4, v5}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lzte/com/cn/driverMode/service/ae;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->l(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4

    const-string v0, "DMDownloadPoiService"

    const-string v1, "onPoiDataDownloadSuccess---provinceDownPoiSuccess  has downloaded complete!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0, v3, v5}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;ILzte/com/cn/driverMode/service/ch;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v1

    invoke-interface {v1, v0}, Lzte/com/cn/driverMode/service/ae;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "curFileSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "totalFileSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "province"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "DMDownloadPoiService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MSG_DOWNLOAD_POI_DATA_PROGRESS_CHANGED---bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",provinceProgressChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x64

    mul-long/2addr v1, v5

    div-long/2addr v1, v3

    const-string v3, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MSG_DOWNLOAD_POI_DATA_PROGRESS_CHANGED---percent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lzte/com/cn/driverMode/service/ae;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileSize"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->i(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ae;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Lzte/com/cn/driverMode/service/ae;->b(Ljava/lang/String;J)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "provincePaused"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "provinceCancelled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNeedReDownloadForUpdate---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->d(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMDownloadPoiService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onContinueDownloadWithoutUpdate---province="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ad;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method
