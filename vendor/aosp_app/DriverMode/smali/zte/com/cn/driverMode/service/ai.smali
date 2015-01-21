.class final Lzte/com/cn/driverMode/service/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;


# direct methods
.method private constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lzte/com/cn/driverMode/service/ai;-><init>(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/conf.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v2, "DMDownloadPoiService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "line:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move-object v6, v1

    move v1, v2

    move-object v2, v6

    :goto_2
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "DMDownloadPoiService"

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->a(Lzte/com/cn/driverMode/service/DMApplication;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "DMDownloadPoiService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localSavePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "http://cloud.ztedevices.com/myDrive/conf.txt"

    :try_start_0
    iget-object v7, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    new-instance v0, Lzte/com/cn/driverMode/service/ch;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->b(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/DMApplication;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lzte/com/cn/driverMode/service/ch;-><init>(Lzte/com/cn/driverMode/service/DMApplication;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v7, v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Lzte/com/cn/driverMode/service/ch;)Lzte/com/cn/driverMode/service/ch;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ch;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ch;->a()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "zyt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6587\u4ef6\u603b\u5927\u5c0f\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->c(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ch;

    move-result-object v2

    new-instance v3, Lzte/com/cn/driverMode/service/aj;

    invoke-direct {v3, p0, v0, v1}, Lzte/com/cn/driverMode/service/aj;-><init>(Lzte/com/cn/driverMode/service/ai;J)V

    invoke-virtual {v2, v3}, Lzte/com/cn/driverMode/service/ch;->a(Lzte/com/cn/driverMode/service/cf;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0, v8}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;Lzte/com/cn/driverMode/service/ch;)Lzte/com/cn/driverMode/service/ch;

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {v6}, Lzte/com/cn/driverMode/service/ai;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "DMDownloadPoiService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "urlOk:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v0, "http://map.ztems.com/map/download/"

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->m(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "zyt"

    invoke-static {}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/ad;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0xe

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lzte/com/cn/driverMode/service/ai;->a:Lzte/com/cn/driverMode/service/DMDownloadPoiService;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMDownloadPoiService;->a(Lzte/com/cn/driverMode/service/DMDownloadPoiService;)Lzte/com/cn/driverMode/service/ad;

    move-result-object v2

    invoke-virtual {v2, v0}, Lzte/com/cn/driverMode/service/ad;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "zyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
