.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->c(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
