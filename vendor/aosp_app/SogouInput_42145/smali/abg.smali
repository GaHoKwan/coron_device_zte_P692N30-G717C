.class Labg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Labg;->a:Laaq;

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

    const/4 v2, 0x5

    .line 1219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1220
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)V

    .line 1222
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1224
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)V

    .line 1225
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1226
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)V

    .line 1228
    iget-object v0, p0, Labg;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
