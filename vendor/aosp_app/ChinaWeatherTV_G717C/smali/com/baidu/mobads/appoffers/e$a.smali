.class Lcom/baidu/mobads/appoffers/e$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/appoffers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/e;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Landroid/content/Intent;
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->e(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloaderTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v4}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bdwallcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->b(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobads/appoffers/e;->e(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mobads/appoffers/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmfile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloaderTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v4}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v1, v1, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    const v2, 0x9c40

    const v3, 0xea60

    invoke-static {v1, v0, v2, v3}, Lcom/baidu/mobads/appoffers/a/b;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v3, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "DownloaderTask"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the response contentlength is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/baidu/mobads/appoffers/e$a;->a(Ljava/lang/String;Ljava/io/InputStream;J)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DownloaderTask"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "SD Card Error"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const/4 v0, -0x4

    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->h(Lcom/baidu/mobads/appoffers/e;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->g(Lcom/baidu/mobads/appoffers/e;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v0, 0x64

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DownloaderTask"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "SD Card Error"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    const/4 v0, -0x3

    goto :goto_1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 8

    const/4 v0, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v6

    const-string v1, "onPostExecute, result="

    aput-object v1, v0, v5

    aput-object p1, v0, v7

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;I)I

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->e(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->h(Lcom/baidu/mobads/appoffers/e;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->g(Lcom/baidu/mobads/appoffers/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tmfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".tmfile"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v6

    const-string v1, "rename success"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v0, v0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pkName:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->i(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mUrl:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->j(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "points:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->k(Lcom/baidu/mobads/appoffers/e;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v0, v0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/j;->a(Landroid/content/Context;)Lcom/baidu/mobads/appoffers/j;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->i(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->j(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v3}, Lcom/baidu/mobads/appoffers/e;->k(Lcom/baidu/mobads/appoffers/e;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobads/appoffers/j;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto/16 :goto_0

    :cond_4
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v6

    const-string v1, "rename failed"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_5
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v6

    const-string v1, "tmFile not exists"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DownloaderTask"

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->d(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/mobads/appoffers/e$a;->a(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v1, v1, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v0, v0, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u5df2\u5b58\u50a8\u5230\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/e;->f(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_0
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;J)Z
    .locals 10

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x800

    new-array v3, v1, [B

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v4

    mul-int/lit8 v4, v1, 0x64

    int-to-long v4, v4

    div-long/2addr v4, p3

    long-to-int v4, v4

    iget-object v5, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v5}, Lcom/baidu/mobads/appoffers/e;->l(Lcom/baidu/mobads/appoffers/e;)I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v5, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v5}, Lcom/baidu/mobads/appoffers/e;->m(Lcom/baidu/mobads/appoffers/e;)I

    iget-object v5, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v5}, Lcom/baidu/mobads/appoffers/e;->p(Lcom/baidu/mobads/appoffers/e;)Landroid/app/Notification;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    iget-object v6, v6, Lcom/baidu/mobads/appoffers/e;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v7}, Lcom/baidu/mobads/appoffers/e;->n(Lcom/baidu/mobads/appoffers/e;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6b63\u5728\u4e0b\u8f7d: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "%"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v8}, Lcom/baidu/mobads/appoffers/e;->o(Lcom/baidu/mobads/appoffers/e;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v4}, Lcom/baidu/mobads/appoffers/e;->h(Lcom/baidu/mobads/appoffers/e;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v5}, Lcom/baidu/mobads/appoffers/e;->g(Lcom/baidu/mobads/appoffers/e;)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/mobads/appoffers/e$a;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v6}, Lcom/baidu/mobads/appoffers/e;->p(Lcom/baidu/mobads/appoffers/e;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    :goto_1
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/mobads/appoffers/e$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/baidu/mobads/appoffers/e$a;->a(Ljava/lang/Integer;)V

    return-void
.end method
