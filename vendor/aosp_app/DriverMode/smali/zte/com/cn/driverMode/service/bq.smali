.class final Lzte/com/cn/driverMode/service/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioConnected(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioConnected() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->b(Lzte/com/cn/driverMode/service/DMService;)Z

    if-nez p1, :cond_0

    const-string v0, "DMService"

    const-string v1, "Audio \u8fde\u63a5\uff1a\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v4, v0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v4, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/bv;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/service/bv;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    const-string v1, "beep.pcm.jpg"

    invoke-virtual {v0, v3, v1}, Lzte/com/cn/driverMode/service/g;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v4, :cond_1

    const-string v0, "DMService"

    const-string v1, "onAudioConnected() : \u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput-boolean v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    goto :goto_0
.end method

.method public final onAudioDisconnected(I)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioDisconnected() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->A:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    const/4 v1, 0x3

    const-string v2, "beep.pcm.jpg"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/g;->a(ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "DMService"

    const-string v1, "\u672a\u77e5\u539f\u56e0 aduiodisconnect\uff0c\u91cd\u8fde"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;)V

    :cond_0
    return-void
.end method

.method public final onBluetoothInitialized(I)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBluetoothInitialized() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    invoke-static {}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->isAdapterEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, v1, Lzte/com/cn/driverMode/service/DMService;->bx:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->isDeviceConnected()Z

    move-result v1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/DMService;->c(Lzte/com/cn/driverMode/service/DMService;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    new-instance v1, Lzte/com/cn/driverMode/service/g;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/g;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMService;->d(Lzte/com/cn/driverMode/service/DMService;)Lzte/com/cn/driverMode/service/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/g;->a(Lzte/com/cn/driverMode/service/i;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    const/4 v1, 0x0

    const-string v2, "beep.pcm.jpg"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/g;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    new-instance v1, Lzte/com/cn/driverMode/service/g;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v2, v2, Lzte/com/cn/driverMode/service/DMService;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/g;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-static {v1}, Lzte/com/cn/driverMode/service/DMService;->d(Lzte/com/cn/driverMode/service/DMService;)Lzte/com/cn/driverMode/service/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/g;->a(Lzte/com/cn/driverMode/service/i;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->by:Lzte/com/cn/driverMode/service/g;

    const/4 v1, 0x3

    const-string v2, "beep.pcm.jpg"

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/g;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onBluetoothReleased(I)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBluetoothReleased() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->z:Z

    return-void
.end method

.method public final onDeviceConnected(I)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceConnected() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    return-void
.end method

.method public final onDeviceDisconnected(I)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceDisconnected() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bq;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->C:Z

    return-void
.end method
