.class Lcom/baidu/mobads/appoffers/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/appoffers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/e;


# direct methods
.method private constructor <init>(Lcom/baidu/mobads/appoffers/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobads/appoffers/e;Lcom/baidu/mobads/appoffers/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/appoffers/e$b;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloaderTask"

    aput-object v1, v0, v2

    const-string v1, "Come into onDownloadStart"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;I)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u4e0esd\u5361\u914d\u7f6e"

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0, p4}, Lcom/baidu/mobads/appoffers/e;->b(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    new-instance v1, Lcom/baidu/mobads/appoffers/e$a;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-direct {v1, v2}, Lcom/baidu/mobads/appoffers/e$a;-><init>(Lcom/baidu/mobads/appoffers/e;)V

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/e;->a(Lcom/baidu/mobads/appoffers/e;Lcom/baidu/mobads/appoffers/e$a;)Lcom/baidu/mobads/appoffers/e$a;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/e;->b(Lcom/baidu/mobads/appoffers/e;)Lcom/baidu/mobads/appoffers/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/appoffers/e$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DownloaderTask"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "trunk url to:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :cond_2
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloaderTask"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "trunk url to:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/e$b;->a:Lcom/baidu/mobads/appoffers/e;

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/e;->c(Lcom/baidu/mobads/appoffers/e;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DownloaderTask"

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
