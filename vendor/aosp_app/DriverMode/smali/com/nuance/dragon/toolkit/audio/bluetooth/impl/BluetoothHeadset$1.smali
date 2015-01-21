.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BluetoothHeadset$ServiceListener;->onServiceConnected()V

    return-void
.end method
