.class Lajp;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lajm;


# direct methods
.method constructor <init>(Lajm;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lajp;->a:Lajm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x1f4

    .line 228
    iget-object v0, p0, Lajp;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Lakz;

    move-result-object v0

    iget-object v1, p0, Lajp;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lakz;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lajp;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lajp;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lajp;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lajp;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laky;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lajp;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lajp;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lajp;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
