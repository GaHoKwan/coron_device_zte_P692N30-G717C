.class public Lzte/android/flashlight/FlashState;
.super Ljava/lang/Object;
.source "FlashState.java"


# static fields
.field public static final RECEIVER_CLOSE_LIGHT:Ljava/lang/String; = "zte.android.flashlight.receiver.closelight"

.field public static final STATE_CAMERA_CLOSED:I = 0x1

.field public static final STATE_CAMERA_OPENED:I = 0x3

.field public static final STATE_CAMERA_OPENING:I = 0x2

.field public static final STATE_LIGHT_CLOSED:I = 0x4

.field public static final STATE_LIGHT_OPENED:I = 0x5

.field public static isFlashActivityExist:Z

.field public static mState:I

.field public static resumeOpenLight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x4

    sput v0, Lzte/android/flashlight/FlashState;->mState:I

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lzte/android/flashlight/FlashState;->resumeOpenLight:Z

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lzte/android/flashlight/FlashState;->isFlashActivityExist:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
