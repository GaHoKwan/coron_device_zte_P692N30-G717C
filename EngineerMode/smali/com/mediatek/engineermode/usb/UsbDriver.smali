.class public Lcom/mediatek/engineermode/usb/UsbDriver;
.super Ljava/lang/Object;
.source "UsbDriver.java"


# static fields
.field public static final MSG:[Ljava/lang/String; = null

.field public static final MSG_LEN:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const-string v0, "em_usb_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Driver return 0."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Attached device not support."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Device not connected/responding."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Unsupported HUB topology."

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/usb/UsbDriver;->MSG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeCleanMsg()Z
.end method

.method public static native nativeDeInit()V
.end method

.method public static native nativeGetMsg()I
.end method

.method public static native nativeInit()Z
.end method

.method public static native nativeStartTest(I)Z
.end method

.method public static native nativeStopTest(I)Z
.end method
