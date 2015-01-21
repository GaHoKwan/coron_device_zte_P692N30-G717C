.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$Status;
.super Ljava/lang/Object;


# static fields
.field public static final ABORTED_BY_CALLER:I = 0x4

.field public static final DEVICE_NOT_CONNECTED:I = 0x3

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0x1

.field public static final UNSPECIFIED_REASON:I = 0x2


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager$Status;->a:Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
