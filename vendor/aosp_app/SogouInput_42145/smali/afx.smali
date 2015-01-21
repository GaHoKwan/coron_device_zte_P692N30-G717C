.class Lafx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lafx;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lafx;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lafx;->a:Lafs;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lafs;->a(Lafs;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    iget-object v0, p0, Lafx;->a:Lafs;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lafs;->a(Lafs;D)D

    .line 210
    return-void
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 197
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iget-object v2, p0, Lafx;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lafx;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lafx;->a:Lafs;

    const/4 v2, 0x3

    invoke-static {v1, v2, p1, p2}, Lafs;->a(Lafs;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    iget-object v0, p0, Lafx;->a:Lafs;

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lafs;->a(Lafs;D)D

    .line 201
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lafx;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lafx;->a:Lafs;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1, p2}, Lafs;->a(Lafs;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method
