.class Lif;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method private constructor <init>(Lhr;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Lif;->a:Lhr;

    .line 1300
    const/16 v0, 0xb80

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 1301
    return-void
.end method

.method synthetic constructor <init>(Lhr;Ljava/lang/String;Lhs;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1283
    invoke-direct {p0, p1, p2}, Lif;-><init>(Lhr;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1296
    invoke-super {p0}, Landroid/os/FileObserver;->finalize()V

    .line 1297
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 1286
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ssf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->e(Lhr;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->d(Lhr;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->d(Lhr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->d(Lhr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    :cond_0
    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1290
    iget-object v0, p0, Lif;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1293
    :cond_1
    return-void
.end method
