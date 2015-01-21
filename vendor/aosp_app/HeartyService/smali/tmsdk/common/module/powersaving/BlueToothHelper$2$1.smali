.class Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;
.super Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/powersaving/BlueToothHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/BlueToothHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    invoke-direct {p0}, Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public ScanFinish(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, deviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    const-wide/32 v6, 0x493e0

    const/4 v5, 0x1

    .line 136
    iget-object v3, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    iget-object v3, v3, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    iget v3, v3, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->disableBluetooth()Z

    .line 141
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v3, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    iget-object v3, v3, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/BlueToothHelper;->e(Ltmsdk/common/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    iget-object v4, v4, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v4}, Ltmsdk/common/module/powersaving/BlueToothHelper;->d(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 148
    .local v1, found:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 149
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 150
    const/4 v1, 0x1

    .line 154
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    if-nez v1, :cond_4

    .line 155
    const-class v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->disableBluetooth()Z

    .line 156
    sput-boolean v5, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_0

    .line 158
    :cond_4
    iget-object v3, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    iget-object v3, v3, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/BlueToothHelper;->e(Ltmsdk/common/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;->AP:Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    iget-object v4, v4, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v4}, Ltmsdk/common/module/powersaving/BlueToothHelper;->d(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
