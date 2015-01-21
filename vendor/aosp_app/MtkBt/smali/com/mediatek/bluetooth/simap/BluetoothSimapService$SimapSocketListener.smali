.class Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;
.super Ljava/lang/Thread;
.source "BluetoothSimapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/simap/BluetoothSimapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimapSocketListener"
.end annotation


# instance fields
.field private init_ok:Z

.field final synthetic this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V
    .locals 3
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->init_ok:Z

    .line 852
    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->prepareListentoSocketNative()Z
    invoke-static {p1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1800(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->init_ok:Z

    .line 853
    const-string v0, "BluetoothSimapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After preparing, init_ok: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->init_ok:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 858
    const/4 v0, 0x0

    .line 860
    .local v0, job_done:Z
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->init_ok:Z

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->startListenNative()Z
    invoke-static {v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$1900(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)Z

    move-result v0

    .line 863
    :cond_0
    const-string v1, "BluetoothSimapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketListener exited. job_done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 867
    const-string v0, "BluetoothSimapService"

    const-string v1, "SimapSocketListener shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapService$SimapSocketListener;->this$0:Lcom/mediatek/bluetooth/simap/BluetoothSimapService;

    #calls: Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->stopListenNative()V
    invoke-static {v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->access$2000(Lcom/mediatek/bluetooth/simap/BluetoothSimapService;)V

    .line 870
    return-void
.end method
