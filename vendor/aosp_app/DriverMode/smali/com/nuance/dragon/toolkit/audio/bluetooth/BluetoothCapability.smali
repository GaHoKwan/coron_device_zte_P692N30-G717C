.class public final Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothCapability;
.super Ljava/lang/Object;


# static fields
.field public static REPORTS_DEVICE_CONNECTION:Z

.field public static REQUIRES_ADAPTER_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothCapability;->REQUIRES_ADAPTER_ENABLED:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_1

    move v2, v1

    :pswitch_0
    sput-boolean v2, Lcom/nuance/dragon/toolkit/audio/bluetooth/BluetoothCapability;->REPORTS_DEVICE_CONNECTION:Z

    return-void

    :pswitch_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
