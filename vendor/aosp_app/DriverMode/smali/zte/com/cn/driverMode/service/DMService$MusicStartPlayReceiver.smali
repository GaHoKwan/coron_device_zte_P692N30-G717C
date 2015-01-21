.class public Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "zyt"

    const-string v1, "MusicStartPlayReceiver ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->i(Lzte/com/cn/driverMode/service/DMService;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMService;->i(Lzte/com/cn/driverMode/service/DMService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v2}, Lzte/com/cn/driverMode/service/DMService;->j(Lzte/com/cn/driverMode/service/DMService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    iput v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    const-string v0, "zyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application.getAudioFocuse =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$MusicStartPlayReceiver;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
