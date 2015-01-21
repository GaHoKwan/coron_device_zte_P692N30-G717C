.class final Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->a(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->b(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Bluetooth;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->c(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$1;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;->d(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V

    :cond_0
    return-void
.end method
