.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothHeadset_3_0"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onService_Callback: method.getName() is <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BluetoothHeadset_3_0"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected: mBluetoothHeadset<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->c(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->d(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BluetoothHeadset_3_0"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceDisconnected: mBluetoothHeadset<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->b(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$4;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->e(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
