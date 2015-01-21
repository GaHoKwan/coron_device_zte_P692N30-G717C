.class Lcom/autonavi/xmgd/navigator/jd;
.super Landroid/os/AsyncTask;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/xmgd/navigator/jc;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/xmgd/navigator/jc;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jd;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->isSDKAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/mnt"

    const-string v1, "autonavidata60tob"

    invoke-static {v0, v2, v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->startScanFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/"

    const-string v1, "/mnt"

    const-string v2, "autonavidata60tob"

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->startScanFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/sdcard"

    const-string v1, "autonavidata60tob"

    invoke-static {v0, v2, v1, v3}, Lcom/autonavi/xmgd/utility/Tool;->startScanFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/jd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/autonavi/xmgd/navigator/jc;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/jd;->a([Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/jc;->a()V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/navigator/jc;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jd;->a:Lcom/autonavi/xmgd/navigator/jc;

    :cond_0
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/jd;->a([Ljava/lang/Integer;)V

    return-void
.end method
