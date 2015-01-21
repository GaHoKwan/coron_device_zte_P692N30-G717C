.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$2;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;->onServiceConnected(Z)V

    return-void
.end method
