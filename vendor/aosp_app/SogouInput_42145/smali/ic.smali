.class Lic;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lic;->a:Lhr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x7d0

    const/4 v2, 0x4

    .line 1262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    iget-object v0, p0, Lic;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1265
    iget-object v0, p0, Lic;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lic;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1268
    iget-object v0, p0, Lic;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
