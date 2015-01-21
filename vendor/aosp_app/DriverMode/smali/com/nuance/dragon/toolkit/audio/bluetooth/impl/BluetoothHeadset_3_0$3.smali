.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$3;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset_3_0$ServiceListener;->onServiceDisconnected()V

    return-void
.end method
