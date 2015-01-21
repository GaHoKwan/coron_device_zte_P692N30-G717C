.class Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;
.super Landroid/database/ContentObserver;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BipiContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    .line 441
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 442
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 446
    const-string v0, "BipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BipiContentObserver received notification: bipi state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 448
    :cond_0
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$1100()Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    const-string v0, "BipService"

    const-string v1, "Service does not start"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 453
    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$BipiContentObserver;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiEnable()Z

    goto :goto_0
.end method
