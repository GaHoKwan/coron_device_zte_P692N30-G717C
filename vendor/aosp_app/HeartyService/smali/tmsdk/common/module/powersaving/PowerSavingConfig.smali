.class public final Ltmsdk/common/module/powersaving/PowerSavingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANIMATION_FULL:I = 0x2

.field public static final ANIMATION_NONE:I = 0x0

.field public static final ANIMATION_PARTIAL:I = 0x1

.field public static final ANIMATION_STATE_SETTINGS:[I = null

.field public static final OPERATION_CLOSE:B = 0x2t

.field public static final OPERATION_NONE:B = 0x0t

.field public static final OPERATION_OPEN:B = 0x1t


# instance fields
.field public mAirplaneModeStateOperation:B

.field public mAnimationState:I

.field public mAutoSyncStateOperation:B

.field public mBlueToothAutoCloseCondition:I

.field public mBlueToothAutoOpenCondition:I

.field public mBlueToothStateOperation:B

.field public mBrightness:I

.field public mHapticFeedbackStateOperation:B

.field public mMobileNetWorkAutoCloseCondition:I

.field public mMobileNetWorkAutoOpenCondition:I

.field public mMobileNetWorkScreenTime:I

.field public mMobileNetWorkStateOperation:B

.field public mScreenOffTime:I

.field public mVibrateStateOperation:B

.field public mWifiAutoCloseCondition:I

.field public mWifiAutoCloseScreenTime:I

.field public mWifiAutoOpenCondition:I

.field public mWifiLowSignalThreshold:I

.field public mWifiOverTimeDuration:I

.field public mWifiStateOperation:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->ANIMATION_STATE_SETTINGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x927c0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBrightness:I

    .line 49
    const/16 v0, 0x3a98

    iput v0, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mScreenOffTime:I

    .line 54
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAnimationState:I

    .line 59
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiStateOperation:B

    .line 64
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkStateOperation:B

    .line 69
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothStateOperation:B

    .line 74
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAirplaneModeStateOperation:B

    .line 79
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mAutoSyncStateOperation:B

    .line 84
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mVibrateStateOperation:B

    .line 89
    iput-byte v1, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mHapticFeedbackStateOperation:B

    .line 95
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseCondition:I

    .line 101
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoOpenCondition:I

    .line 106
    const v0, 0x493e0

    iput v0, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiOverTimeDuration:I

    .line 111
    const/4 v0, 0x5

    iput v0, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiLowSignalThreshold:I

    .line 116
    iput v3, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mWifiAutoCloseScreenTime:I

    .line 122
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoCloseCondition:I

    .line 128
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkAutoOpenCondition:I

    .line 133
    iput v3, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mMobileNetWorkScreenTime:I

    .line 139
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    .line 145
    iput v2, p0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoOpenCondition:I

    return-void
.end method
