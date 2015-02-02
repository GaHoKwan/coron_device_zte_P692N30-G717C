.class public Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;
    }
.end annotation


# static fields
.field private static final DISPLAY_DEBUG_BARS:Z = false

.field private static final DISPLAY_DEBUG_TEXT:Z = false

.field private static GAIN_SMOOTHER:[F = null

.field private static GAIN_SMOOTHER_INV:[[F = null

.field private static final GAIN_SMOOTHER_INV_MOBILE:[[F = null

.field private static final GAIN_SMOOTHER_INV_TABLET:[[F = null

.field private static final GAIN_SMOOTHER_MOBILE:[F = null

.field private static final GAIN_SMOOTHER_TABLET:[F = null

.field private static GAIN_SMOOTH_LENGTH:I = 0x0

.field private static final GEQ_TRANS_TIME:F = 0.3f

.field private static final IDLE_HIDE_DELAY:I = 0x1388

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_RECALC_POS_INTERVAL:J = 0x3cL

.field private static final SHOW_HIDE_ANIMATION_DURATION:I = 0xfa


# instance fields
.field private final MOBILE_LAYOUT_INITIAL_COLUMN:F

.field private final MOBILE_LAYOUT_INITIAL_STEP:F

.field private final TABLET_LAYOUT_INITIAL_COLUMN:F

.field private final TABLET_LAYOUT_INITIAL_STEP:F

.field private mActivity:Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

.field private mBlur:Landroid/graphics/MaskFilter;

.field private final mContext:Landroid/content/Context;

.field private mDSClient:Landroid/dolby/DsClient;

.field private mDefaultProfileNames:[Ljava/lang/String;

.field private final mDrawFpsCounter:Lcom/dolby/ds1appUI/FPSCounter;

.field private mEditBand:I

.field private mEditGain:F

.field private mEffect1:Landroid/graphics/PathEffect;

.field private mEnabled:Z

.field private mEqPreset:I

.field private final mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

.field private mForceSmoothenCurve:Z

.field private mGainsSmooth:[F

.field private final mGainsSmoothOld:[F

.field private final mGainsUi:[F

.field private mHeight:I

.field private final mHideAction:Ljava/lang/Runnable;

.field private mHideAnimEndTimestamp:J

.field private mListener:Lcom/dolby/ds1appUI/IEqualizerChangeListener;

.field private mMobileLayout:Z

.field private mNotifyListener:Z

.field private mPaintCurve1:Landroid/graphics/Paint;

.field private mPaintCurve2:Landroid/graphics/Paint;

.field private final mPaintGreen:Landroid/graphics/Paint;

.field private final mPaintRed:Landroid/graphics/Paint;

.field private mPrevEditBand:I

.field private mPrevEditGain:F

.field private mProfile:I

.field private final mRecalcPositions:Ljava/lang/Runnable;

.field private mShowAnimEndTimestamp:J

.field private mSliderBg:Landroid/graphics/drawable/Drawable;

.field private mSliderThumb:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

.field private final mSmoothFpsCounter:Lcom/dolby/ds1appUI/FPSCounter;

.field private mSmoothenTimestamp:J

.field private mUserBandsUpdated:I

.field private final mUserGainsTemp:[F

.field private mViewHeight:I

.field private mVisible:Z

.field private final mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

.field private mWidth:I

.field private recalcPosTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x14

    .line 53
    sput v4, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    .line 54
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    .line 55
    new-array v0, v6, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    .line 59
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    .line 81
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3et
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x80t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3et
        0xcdt 0xcct 0xcct 0x3dt
    .end array-data

    .line 59
    :array_2
    .array-data 0x4
        0x9at 0x99t 0xf9t 0x3ft
        0xcdt 0xcct 0xect 0xbft
        0x0t 0x0t 0xe0t 0x3ft
        0x33t 0x33t 0xd3t 0xbft
        0x66t 0x66t 0xc6t 0x3ft
        0x9at 0x99t 0xb9t 0xbft
        0xcdt 0xcct 0xact 0x3ft
        0x0t 0x0t 0xa0t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x66t 0x66t 0x86t 0xbft
        0x33t 0x33t 0x73t 0x3ft
        0x9at 0x99t 0x59t 0xbft
        0x0t 0x0t 0x40t 0x3ft
        0x66t 0x66t 0x26t 0xbft
        0xcdt 0xcct 0xct 0x3ft
        0x66t 0x66t 0xe6t 0xbet
        0x33t 0x33t 0xb3t 0x3et
        0x0t 0x0t 0x80t 0xbet
        0x9at 0x99t 0x19t 0x3et
        0xcdt 0xcct 0x4ct 0xbdt
    .end array-data

    :array_3
    .array-data 0x4
        0xcdt 0xcct 0xect 0xbft
        0x9at 0x99t 0xb1t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0xcdt 0xcct 0x94t 0xc0t
        0x33t 0x33t 0x8bt 0x40t
        0x9at 0x99t 0x81t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0xcdt 0xcct 0x5ct 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0x66t 0x66t 0x36t 0xc0t
        0x33t 0x33t 0x23t 0x40t
        0x0t 0x0t 0x10t 0xc0t
        0x9at 0x99t 0xf9t 0x3ft
        0x33t 0x33t 0xd3t 0xbft
        0xcdt 0xcct 0xact 0x3ft
        0x66t 0x66t 0x86t 0xbft
        0x0t 0x0t 0x40t 0x3ft
        0x66t 0x66t 0xe6t 0xbet
        0x9at 0x99t 0x19t 0x3et
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0xe0t 0x3ft
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0xct 0x41t
        0x0t 0x0t 0x4t 0xc1t
        0x0t 0x0t 0xf8t 0x40t
        0x0t 0x0t 0xe8t 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0x0t 0x0t 0xc8t 0xc0t
        0x0t 0x0t 0xb8t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0x98t 0x40t
        0x0t 0x0t 0x88t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0x50t 0xc0t
        0x0t 0x0t 0x30t 0x40t
        0x0t 0x0t 0x10t 0xc0t
        0x0t 0x0t 0xe0t 0x3ft
        0x0t 0x0t 0xa0t 0xbft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0xbet
    .end array-data

    :array_5
    .array-data 0x4
        0x33t 0x33t 0xd3t 0xbft
        0x66t 0x66t 0x9et 0x40t
        0x0t 0x0t 0x4t 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x9at 0x99t 0x2dt 0xc1t
        0x66t 0x66t 0x22t 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0x0t 0x0t 0xct 0x41t
        0xcdt 0xcct 0x0t 0xc1t
        0x33t 0x33t 0xebt 0x40t
        0xcdt 0xcct 0xd4t 0xc0t
        0x66t 0x66t 0xbet 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x9at 0x99t 0x91t 0x40t
        0x66t 0x66t 0x76t 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0xcdt 0xcct 0x1ct 0xc0t
        0x0t 0x0t 0xe0t 0x3ft
        0x66t 0x66t 0x86t 0xbft
        0x33t 0x33t 0xb3t 0x3et
    .end array-data

    :array_6
    .array-data 0x4
        0x66t 0x66t 0xc6t 0x3ft
        0xcdt 0xcct 0x94t 0xc0t
        0x0t 0x0t 0xf8t 0x40t
        0x9at 0x99t 0x2dt 0xc1t
        0x33t 0x33t 0x5ft 0x41t
        0xcdt 0xcct 0x50t 0xc1t
        0x66t 0x66t 0x42t 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x9at 0x99t 0x25t 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0xcdt 0xcct 0x8t 0x41t
        0xcdt 0xcct 0xf4t 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0x33t 0x33t 0xbbt 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0x9at 0x99t 0x81t 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0x0t 0x0t 0x10t 0xc0t
        0xcdt 0xcct 0xact 0x3ft
        0x66t 0x66t 0xe6t 0xbet
    .end array-data

    :array_7
    .array-data 0x4
        0x9at 0x99t 0xb9t 0xbft
        0x33t 0x33t 0x8bt 0x40t
        0x0t 0x0t 0xe8t 0xc0t
        0x66t 0x66t 0x22t 0x41t
        0xcdt 0xcct 0x50t 0xc1t
        0x33t 0x33t 0x7ft 0x41t
        0x9at 0x99t 0x6dt 0xc1t
        0x0t 0x0t 0x5ct 0x41t
        0x66t 0x66t 0x4at 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x33t 0x33t 0x27t 0xc1t
        0x9at 0x99t 0x15t 0x41t
        0x0t 0x0t 0x4t 0xc1t
        0xcdt 0xcct 0xe4t 0x40t
        0x9at 0x99t 0xc1t 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0x66t 0x66t 0x76t 0xc0t
        0x0t 0x0t 0x30t 0x40t
        0x33t 0x33t 0xd3t 0xbft
        0xcdt 0xcct 0xct 0x3ft
    .end array-data

    :array_8
    .array-data 0x4
        0xcdt 0xcct 0xact 0x3ft
        0x9at 0x99t 0x81t 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0x33t 0x33t 0x17t 0xc1t
        0x66t 0x66t 0x42t 0x41t
        0x9at 0x99t 0x6dt 0xc1t
        0x66t 0x66t 0x8ct 0x41t
        0x0t 0x0t 0x82t 0xc1t
        0x33t 0x33t 0x6ft 0x41t
        0x66t 0x66t 0x5at 0xc1t
        0x9at 0x99t 0x45t 0x41t
        0xcdt 0xcct 0x30t 0xc1t
        0x0t 0x0t 0x1ct 0x41t
        0x33t 0x33t 0x7t 0xc1t
        0xcdt 0xcct 0xe4t 0x40t
        0x33t 0x33t 0xbbt 0xc0t
        0x9at 0x99t 0x91t 0x40t
        0x0t 0x0t 0x50t 0xc0t
        0x9at 0x99t 0xf9t 0x3ft
        0x66t 0x66t 0x26t 0xbft
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0xa0t 0xbft
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0xc8t 0xc0t
        0x0t 0x0t 0xct 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x0t 0x0t 0x5ct 0x41t
        0x0t 0x0t 0x82t 0xc1t
        0x0t 0x0t 0x96t 0x41t
        0x0t 0x0t 0x8at 0xc1t
        0x0t 0x0t 0x7ct 0x41t
        0x0t 0x0t 0x64t 0xc1t
        0x0t 0x0t 0x4ct 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x0t 0x0t 0x1ct 0x41t
        0x0t 0x0t 0x4t 0xc1t
        0x0t 0x0t 0xd8t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0x10t 0xc0t
        0x0t 0x0t 0x40t 0x3ft
    .end array-data

    :array_a
    .array-data 0x4
        0x33t 0x33t 0x93t 0x3ft
        0xcdt 0xcct 0x5ct 0xc0t
        0x0t 0x0t 0xb8t 0x40t
        0xcdt 0xcct 0x0t 0xc1t
        0x9at 0x99t 0x25t 0x41t
        0x66t 0x66t 0x4at 0xc1t
        0x33t 0x33t 0x6ft 0x41t
        0x0t 0x0t 0x8at 0xc1t
        0x66t 0x66t 0x9ct 0x41t
        0xcdt 0xcct 0x8et 0xc1t
        0x33t 0x33t 0x81t 0x41t
        0x33t 0x33t 0x67t 0xc1t
        0x0t 0x0t 0x4ct 0x41t
        0xcdt 0xcct 0x30t 0xc1t
        0x9at 0x99t 0x15t 0x41t
        0xcdt 0xcct 0xf4t 0xc0t
        0x66t 0x66t 0xbet 0x40t
        0x0t 0x0t 0x88t 0xc0t
        0x33t 0x33t 0x23t 0x40t
        0x9at 0x99t 0x59t 0xbft
    .end array-data

    :array_b
    .array-data 0x4
        0x66t 0x66t 0x86t 0xbft
        0x9at 0x99t 0x49t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x33t 0x33t 0xebt 0x40t
        0x33t 0x33t 0x17t 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x66t 0x66t 0x5at 0xc1t
        0x0t 0x0t 0x7ct 0x41t
        0xcdt 0xcct 0x8et 0xc1t
        0x9at 0x99t 0x9ft 0x41t
        0x66t 0x66t 0x90t 0xc1t
        0x33t 0x33t 0x81t 0x41t
        0x0t 0x0t 0x64t 0xc1t
        0x9at 0x99t 0x45t 0x41t
        0x33t 0x33t 0x27t 0xc1t
        0xcdt 0xcct 0x8t 0x41t
        0xcdt 0xcct 0xd4t 0xc0t
        0x0t 0x0t 0x98t 0x40t
        0x66t 0x66t 0x36t 0xc0t
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    :array_c
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x66t 0x66t 0x36t 0xc0t
        0x0t 0x0t 0x98t 0x40t
        0xcdt 0xcct 0xd4t 0xc0t
        0xcdt 0xcct 0x8t 0x41t
        0x33t 0x33t 0x27t 0xc1t
        0x9at 0x99t 0x45t 0x41t
        0x0t 0x0t 0x64t 0xc1t
        0x33t 0x33t 0x81t 0x41t
        0x66t 0x66t 0x90t 0xc1t
        0x9at 0x99t 0x9ft 0x41t
        0xcdt 0xcct 0x8et 0xc1t
        0x0t 0x0t 0x7ct 0x41t
        0x66t 0x66t 0x5at 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0x33t 0x33t 0xebt 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0x66t 0x66t 0x86t 0xbft
    .end array-data

    :array_d
    .array-data 0x4
        0x9at 0x99t 0x59t 0xbft
        0x33t 0x33t 0x23t 0x40t
        0x0t 0x0t 0x88t 0xc0t
        0x66t 0x66t 0xbet 0x40t
        0xcdt 0xcct 0xf4t 0xc0t
        0x9at 0x99t 0x15t 0x41t
        0xcdt 0xcct 0x30t 0xc1t
        0x0t 0x0t 0x4ct 0x41t
        0x33t 0x33t 0x67t 0xc1t
        0x33t 0x33t 0x81t 0x41t
        0xcdt 0xcct 0x8et 0xc1t
        0x66t 0x66t 0x9ct 0x41t
        0x0t 0x0t 0x8at 0xc1t
        0x33t 0x33t 0x6ft 0x41t
        0x66t 0x66t 0x4at 0xc1t
        0x9at 0x99t 0x25t 0x41t
        0xcdt 0xcct 0x0t 0xc1t
        0x0t 0x0t 0xb8t 0x40t
        0xcdt 0xcct 0x5ct 0xc0t
        0x33t 0x33t 0x93t 0x3ft
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x10t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0x0t 0x0t 0x4t 0xc1t
        0x0t 0x0t 0x1ct 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x0t 0x0t 0x4ct 0x41t
        0x0t 0x0t 0x64t 0xc1t
        0x0t 0x0t 0x7ct 0x41t
        0x0t 0x0t 0x8at 0xc1t
        0x0t 0x0t 0x96t 0x41t
        0x0t 0x0t 0x82t 0xc1t
        0x0t 0x0t 0x5ct 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x0t 0x0t 0xct 0x41t
        0x0t 0x0t 0xc8t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0xa0t 0xbft
    .end array-data

    :array_f
    .array-data 0x4
        0x66t 0x66t 0x26t 0xbft
        0x9at 0x99t 0xf9t 0x3ft
        0x0t 0x0t 0x50t 0xc0t
        0x9at 0x99t 0x91t 0x40t
        0x33t 0x33t 0xbbt 0xc0t
        0xcdt 0xcct 0xe4t 0x40t
        0x33t 0x33t 0x7t 0xc1t
        0x0t 0x0t 0x1ct 0x41t
        0xcdt 0xcct 0x30t 0xc1t
        0x9at 0x99t 0x45t 0x41t
        0x66t 0x66t 0x5at 0xc1t
        0x33t 0x33t 0x6ft 0x41t
        0x0t 0x0t 0x82t 0xc1t
        0x66t 0x66t 0x8ct 0x41t
        0x9at 0x99t 0x6dt 0xc1t
        0x66t 0x66t 0x42t 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0x0t 0x0t 0xd8t 0x40t
        0x9at 0x99t 0x81t 0xc0t
        0xcdt 0xcct 0xact 0x3ft
    .end array-data

    :array_10
    .array-data 0x4
        0xcdt 0xcct 0xct 0x3ft
        0x33t 0x33t 0xd3t 0xbft
        0x0t 0x0t 0x30t 0x40t
        0x66t 0x66t 0x76t 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0x9at 0x99t 0xc1t 0xc0t
        0xcdt 0xcct 0xe4t 0x40t
        0x0t 0x0t 0x4t 0xc1t
        0x9at 0x99t 0x15t 0x41t
        0x33t 0x33t 0x27t 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x66t 0x66t 0x4at 0xc1t
        0x0t 0x0t 0x5ct 0x41t
        0x9at 0x99t 0x6dt 0xc1t
        0x33t 0x33t 0x7ft 0x41t
        0xcdt 0xcct 0x50t 0xc1t
        0x66t 0x66t 0x22t 0x41t
        0x0t 0x0t 0xe8t 0xc0t
        0x33t 0x33t 0x8bt 0x40t
        0x9at 0x99t 0xb9t 0xbft
    .end array-data

    :array_11
    .array-data 0x4
        0x66t 0x66t 0xe6t 0xbet
        0xcdt 0xcct 0xact 0x3ft
        0x0t 0x0t 0x10t 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0x9at 0x99t 0x81t 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0x33t 0x33t 0xbbt 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0xcdt 0xcct 0xf4t 0xc0t
        0xcdt 0xcct 0x8t 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0x9at 0x99t 0x25t 0x41t
        0x0t 0x0t 0x34t 0xc1t
        0x66t 0x66t 0x42t 0x41t
        0xcdt 0xcct 0x50t 0xc1t
        0x33t 0x33t 0x5ft 0x41t
        0x9at 0x99t 0x2dt 0xc1t
        0x0t 0x0t 0xf8t 0x40t
        0xcdt 0xcct 0x94t 0xc0t
        0x66t 0x66t 0xc6t 0x3ft
    .end array-data

    :array_12
    .array-data 0x4
        0x33t 0x33t 0xb3t 0x3et
        0x66t 0x66t 0x86t 0xbft
        0x0t 0x0t 0xe0t 0x3ft
        0xcdt 0xcct 0x1ct 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0x66t 0x66t 0x76t 0xc0t
        0x9at 0x99t 0x91t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x66t 0x66t 0xbet 0x40t
        0xcdt 0xcct 0xd4t 0xc0t
        0x33t 0x33t 0xebt 0x40t
        0xcdt 0xcct 0x0t 0xc1t
        0x0t 0x0t 0xct 0x41t
        0x33t 0x33t 0x17t 0xc1t
        0x66t 0x66t 0x22t 0x41t
        0x9at 0x99t 0x2dt 0xc1t
        0xcdt 0xcct 0x38t 0x41t
        0x0t 0x0t 0x4t 0xc1t
        0x66t 0x66t 0x9et 0x40t
        0x33t 0x33t 0xd3t 0xbft
    .end array-data

    :array_13
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbet
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0xa0t 0xbft
        0x0t 0x0t 0xe0t 0x3ft
        0x0t 0x0t 0x10t 0xc0t
        0x0t 0x0t 0x30t 0x40t
        0x0t 0x0t 0x50t 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x0t 0x0t 0x88t 0xc0t
        0x0t 0x0t 0x98t 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0xb8t 0x40t
        0x0t 0x0t 0xc8t 0xc0t
        0x0t 0x0t 0xd8t 0x40t
        0x0t 0x0t 0xe8t 0xc0t
        0x0t 0x0t 0xf8t 0x40t
        0x0t 0x0t 0x4t 0xc1t
        0x0t 0x0t 0xct 0x41t
        0x0t 0x0t 0xa8t 0xc0t
        0x0t 0x0t 0xe0t 0x3ft
    .end array-data

    :array_14
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3et
        0x66t 0x66t 0xe6t 0xbet
        0x0t 0x0t 0x40t 0x3ft
        0x66t 0x66t 0x86t 0xbft
        0xcdt 0xcct 0xact 0x3ft
        0x33t 0x33t 0xd3t 0xbft
        0x9at 0x99t 0xf9t 0x3ft
        0x0t 0x0t 0x10t 0xc0t
        0x33t 0x33t 0x23t 0x40t
        0x66t 0x66t 0x36t 0xc0t
        0x9at 0x99t 0x49t 0x40t
        0xcdt 0xcct 0x5ct 0xc0t
        0x0t 0x0t 0x70t 0x40t
        0x9at 0x99t 0x81t 0xc0t
        0x33t 0x33t 0x8bt 0x40t
        0xcdt 0xcct 0x94t 0xc0t
        0x66t 0x66t 0x9et 0x40t
        0x0t 0x0t 0xa8t 0xc0t
        0x9at 0x99t 0xb1t 0x40t
        0xcdt 0xcct 0xect 0xbft
    .end array-data

    :array_15
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0xbdt
        0x9at 0x99t 0x19t 0x3et
        0x0t 0x0t 0x80t 0xbet
        0x33t 0x33t 0xb3t 0x3et
        0x66t 0x66t 0xe6t 0xbet
        0xcdt 0xcct 0xct 0x3ft
        0x66t 0x66t 0x26t 0xbft
        0x0t 0x0t 0x40t 0x3ft
        0x9at 0x99t 0x59t 0xbft
        0x33t 0x33t 0x73t 0x3ft
        0x66t 0x66t 0x86t 0xbft
        0x33t 0x33t 0x93t 0x3ft
        0x0t 0x0t 0xa0t 0xbft
        0xcdt 0xcct 0xact 0x3ft
        0x9at 0x99t 0xb9t 0xbft
        0x66t 0x66t 0xc6t 0x3ft
        0x33t 0x33t 0xd3t 0xbft
        0x0t 0x0t 0xe0t 0x3ft
        0xcdt 0xcct 0xect 0xbft
        0x9at 0x99t 0xf9t 0x3ft
    .end array-data

    .line 81
    :array_16
    .array-data 0x4
        0xc4t 0x32t 0xbft 0x40t
        0xc5t 0xf6t 0x18t 0xc1t
        0x60t 0xf5t 0x93t 0x40t
        0x82t 0xc8t 0xbt 0x40t
        0xbbt 0xeet 0xb3t 0xbft
        0x75t 0x2ft 0xa1t 0xc0t
        0xact 0x39t 0xd7t 0x40t
        0xe9t 0xdt 0xbft 0xbet
        0x87t 0xe0t 0xa7t 0xc0t
        0x67t 0x46t 0x1dt 0x40t
        0x2at 0x54t 0x73t 0x40t
        0x3bt 0xe1t 0x58t 0xc0t
        0x58t 0x38t 0x75t 0xc0t
        0xe3t 0xbt 0xf9t 0x40t
        0x70t 0xb3t 0x52t 0xc0t
        0x96t 0x98t 0x9t 0xc0t
        0x53t 0x5at 0xbft 0xbet
        0x66t 0x9ft 0xfat 0x40t
        0x90t 0xaat 0x1ct 0xc1t
        0x0t 0x29t 0x82t 0x40t
    .end array-data

    :array_17
    .array-data 0x4
        0x20t 0xe3t 0x52t 0xc1t
        0xd6t 0x1dt 0xd7t 0x41t
        0x8et 0xct 0x7t 0xc1t
        0xeat 0xedt 0x84t 0xc1t
        0x2bt 0x19t 0x4dt 0x41t
        0x45t 0x38t 0x40t 0x41t
        0x8t 0x13t 0x94t 0xc1t
        0x84t 0x59t 0xa6t 0xc0t
        0x1dt 0x5et 0xcdt 0x41t
        0x6bt 0x29t 0x65t 0xc1t
        0x2ft 0x37t 0x1bt 0xc1t
        0x68t 0xdct 0x3t 0x41t
        0xeet 0x14t 0x95t 0x41t
        0x9ft 0xf2t 0x2t 0xc2t
        0xcet 0x8ct 0x70t 0x41t
        0xc9t 0x74t 0xb9t 0x40t
        0xddt 0x5ft 0x67t 0x40t
        0x4et 0x30t 0xfat 0xc1t
        0xb6t 0x42t 0x17t 0x42t
        0x98t 0xcft 0x78t 0xc1t
    .end array-data

    :array_18
    .array-data 0x4
        0x9et 0xa5t 0x83t 0x40t
        0x66t 0xa2t 0xa2t 0xc0t
        0x12t 0x3et 0xft 0xc1t
        0xdft 0xbft 0xdat 0x41t
        0x7ct 0x46t 0xb7t 0xc1t
        0x3bt 0x36t 0x2dt 0x40t
        0xdet 0x8et 0x23t 0x40t
        0xb6t 0xbet 0x76t 0x41t
        0x6dt 0x9et 0xf0t 0xc1t
        0x93t 0xaat 0x9et 0x41t
        0xcbt 0xd9t 0xebt 0xbet
        0xeft 0x37t 0xb6t 0x3ft
        0x8at 0x76t 0xadt 0xc1t
        0xcbt 0x9t 0xfat 0x41t
        0x34t 0x7et 0x81t 0xc1t
        0x94t 0xa0t 0x3t 0xbft
        0x24t 0x7bt 0xd3t 0xc0t
        0xbdt 0x35t 0xdat 0x41t
        0x3ct 0x23t 0xf7t 0xc1t
        0xb8t 0x1t 0x47t 0x41t
    .end array-data

    :array_19
    .array-data 0x4
        0x81t 0x81t 0x5t 0x41t
        0x2ct 0x4t 0xc4t 0xc1t
        0xb9t 0x29t 0xfct 0x41t
        0xa9t 0x3dt 0xd1t 0xc1t
        0xact 0xe6t 0xbdt 0x41t
        0xd4t 0x6bt 0xc9t 0xc1t
        0xfbt 0xc9t 0xcct 0x41t
        0x7et 0x38t 0xadt 0xc1t
        0x2ft 0x56t 0x84t 0x41t
        0x36t 0x76t 0x73t 0xc1t
        0x77t 0x94t 0x87t 0x41t
        0xd0t 0x60t 0x83t 0xc1t
        0x6dt 0x64t 0x3bt 0x41t
        0xa1t 0x4ct 0xe5t 0xc0t
        0x42t 0x5bt 0xdct 0x40t
        0x94t 0x38t 0x9t 0xc1t
        0xd4t 0x7ft 0xdft 0x40t
        0x7ct 0xet 0xe4t 0xbft
        0x2ft 0xdbt 0xf8t 0xbft
        0xc6t 0x15t 0xa9t 0x3ft
    .end array-data

    :array_1a
    .array-data 0x4
        0x84t 0x3bt 0xc7t 0xc0t
        0x4t 0xb5t 0x96t 0x41t
        0xd8t 0xb8t 0xcbt 0xc1t
        0x42t 0xb4t 0xb5t 0x41t
        0xc6t 0xdt 0xaat 0xc1t
        0xc2t 0x9et 0xeet 0x41t
        0xb0t 0x76t 0x0t 0xc2t
        0x55t 0xe3t 0xa9t 0x41t
        0xadt 0xdet 0x20t 0xc1t
        0x9t 0x3et 0x3et 0x41t
        0x7dt 0x4at 0xa4t 0xc1t
        0x2ft 0x90t 0x9ct 0x41t
        0xc7t 0x9ct 0xdft 0xc0t
        0xa8t 0x35t 0xe5t 0xbft
        0xf9t 0xbft 0x3ct 0xc0t
        0xb7t 0x4ft 0x2at 0x41t
        0x4ft 0x90t 0xc9t 0xc0t
        0x28t 0xb8t 0xe0t 0xc0t
        0x5bt 0xa7t 0x4ct 0x41t
        0xf8t 0xd2t 0xb9t 0xc0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x6t 0x4ct 0xd2t 0xc0t
        0x45t 0x9ft 0x43t 0x41t
        0xe0t 0x2et 0x9bt 0xbdt
        0x6dt 0x7bt 0xa0t 0xc1t
        0xbt 0x12t 0xd3t 0x41t
        0x7ft 0x86t 0x8et 0xc1t
        0xbct 0xd3t 0x79t 0x41t
        0xdbt 0xe6t 0xabt 0xc1t
        0xbdt 0x41t 0xc8t 0x41t
        0xf3t 0xb1t 0x9at 0xc1t
        0xdct 0x9dt 0x35t 0x41t
        0xf1t 0x59t 0x37t 0xc1t
        0xc4t 0x3et 0x8ft 0x41t
        0x62t 0x69t 0x9bt 0xc1t
        0x4ft 0x59t 0x42t 0x41t
        0xb9t 0x8dt 0xact 0xc0t
        0x39t 0x6dt 0xf6t 0x40t
        0x74t 0x40t 0x60t 0xc1t
        0x24t 0x55t 0x54t 0x41t
        0x52t 0xaat 0x9ft 0xc0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xbct 0x21t 0x22t 0x41t
        0x1bt 0xf3t 0xa5t 0xc1t
        0xeat 0x94t 0xd7t 0x40t
        0x13t 0x72t 0xa0t 0x41t
        0xfbt 0xfdt 0xe4t 0xc1t
        0x83t 0xb5t 0x74t 0x41t
        0xbdt 0xd6t 0x13t 0xc1t
        0x7t 0xc5t 0xe5t 0x41t
        0xb0t 0xc7t 0x2et 0xc2t
        0x3t 0x9t 0xf7t 0x41t
        0x3ct 0xd3t 0xat 0xc1t
        0xd0t 0x1ct 0x19t 0x41t
        0x53t 0x2et 0xfbt 0xc1t
        0xd0t 0x63t 0x22t 0x42t
        0x7ct 0x62t 0xb4t 0xc1t
        0xeet 0x25t 0x60t 0x40t
        0x48t 0x52t 0x33t 0xc1t
        0x9bt 0x23t 0x5t 0x42t
        0xfdt 0x2ft 0xft 0xc2t
        0xd5t 0x78t 0x62t 0x41t
    .end array-data

    :array_1d
    .array-data 0x4
        0xadt 0x34t 0xcdt 0x3ft
        0x8t 0x3et 0xedt 0xc0t
        0xbft 0x71t 0x78t 0x41t
        0xe4t 0xaft 0xa4t 0xc1t
        0x96t 0x80t 0xaet 0x41t
        0x77t 0x70t 0xc1t 0xc1t
        0x43t 0x96t 0xf7t 0x41t
        0xeat 0x1bt 0x1bt 0xc2t
        0xb0t 0xf0t 0x2at 0x42t
        0x90t 0xc9t 0x6t 0xc2t
        0x2t 0x41t 0xb0t 0x41t
        0xc1t 0x64t 0xb0t 0xc1t
        0x4at 0x47t 0xf4t 0x41t
        0x5dt 0x93t 0xfct 0xc1t
        0x6bt 0x55t 0xa3t 0x41t
        0xd7t 0xd1t 0x29t 0xc1t
        0x56t 0xdet 0x5at 0x41t
        0x57t 0x9dt 0xaet 0xc1t
        0xbbt 0x2ct 0x9dt 0x41t
        0x36t 0x13t 0xe7t 0xc0t
    .end array-data

    :array_1e
    .array-data 0x4
        0xe3t 0x8t 0x3ct 0xc1t
        0xfct 0xe3t 0xfat 0x41t
        0x88t 0x80t 0x5t 0xc2t
        0xcft 0xe1t 0x95t 0x41t
        0xb8t 0xcdt 0x55t 0xc1t
        0x62t 0x3at 0xeat 0x41t
        0x6dt 0x48t 0x3at 0xc2t
        0x28t 0xdt 0x2dt 0x42t
        0x53t 0x3at 0xe2t 0xc1t
        0x9ft 0x72t 0xe0t 0x41t
        0x41t 0x90t 0x13t 0xc2t
        0x74t 0xf8t 0xdt 0x42t
        0xf7t 0x5ct 0x9ft 0xc1t
        0x69t 0xd1t 0xeft 0x40t
        0x79t 0xbt 0x2dt 0xc1t
        0xcat 0xe8t 0x96t 0x41t
        0x60t 0x75t 0x58t 0xc1t
        0x5dt 0x6dt 0x4et 0xc0t
        0xfdt 0xe3t 0x44t 0x41t
        0x31t 0x28t 0xc4t 0xc0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x42t 0xe8t 0xb9t 0x40t
        0x4ft 0x3bt 0x84t 0xc1t
        0x26t 0xb6t 0xa0t 0x41t
        0x3bt 0x8dt 0x72t 0xc1t
        0x96t 0x50t 0x52t 0x41t
        0xf4t 0x9ct 0xa8t 0xc1t
        0xe4t 0x89t 0xf8t 0x41t
        0xfet 0x8ft 0x0t 0xc2t
        0x63t 0x92t 0xd5t 0x41t
        0xc6t 0x49t 0xd7t 0xc1t
        0xaet 0xe3t 0x11t 0x42t
        0x86t 0x31t 0xct 0xc2t
        0x99t 0x47t 0x96t 0x41t
        0xdct 0xc9t 0xc2t 0xc0t
        0x48t 0x2ft 0x20t 0x41t
        0xa5t 0x73t 0x95t 0xc1t
        0x84t 0xa1t 0x51t 0x41t
        0x9bt 0x21t 0x8bt 0x40t
        0x9et 0xbbt 0x57t 0xc1t
        0x44t 0xect 0xd2t 0x40t
    .end array-data

    :array_20
    .array-data 0x4
        0x44t 0xect 0xd2t 0x40t
        0x9et 0xbbt 0x57t 0xc1t
        0x9bt 0x21t 0x8bt 0x40t
        0x84t 0xa1t 0x51t 0x41t
        0xa5t 0x73t 0x95t 0xc1t
        0x48t 0x2ft 0x20t 0x41t
        0xdct 0xc9t 0xc2t 0xc0t
        0x99t 0x47t 0x96t 0x41t
        0x86t 0x31t 0xct 0xc2t
        0xaet 0xe3t 0x11t 0x42t
        0xc6t 0x49t 0xd7t 0xc1t
        0x63t 0x92t 0xd5t 0x41t
        0xfet 0x8ft 0x0t 0xc2t
        0xe4t 0x89t 0xf8t 0x41t
        0xf4t 0x9ct 0xa8t 0xc1t
        0x96t 0x50t 0x52t 0x41t
        0x3bt 0x8dt 0x72t 0xc1t
        0x26t 0xb6t 0xa0t 0x41t
        0x4ft 0x3bt 0x84t 0xc1t
        0x42t 0xe8t 0xb9t 0x40t
    .end array-data

    :array_21
    .array-data 0x4
        0x31t 0x28t 0xc4t 0xc0t
        0xfdt 0xe3t 0x44t 0x41t
        0x5dt 0x6dt 0x4et 0xc0t
        0x60t 0x75t 0x58t 0xc1t
        0xcat 0xe8t 0x96t 0x41t
        0x79t 0xbt 0x2dt 0xc1t
        0x69t 0xd1t 0xeft 0x40t
        0xf7t 0x5ct 0x9ft 0xc1t
        0x74t 0xf8t 0xdt 0x42t
        0x41t 0x90t 0x13t 0xc2t
        0x9ft 0x72t 0xe0t 0x41t
        0x53t 0x3at 0xe2t 0xc1t
        0x28t 0xdt 0x2dt 0x42t
        0x6dt 0x48t 0x3at 0xc2t
        0x62t 0x3at 0xeat 0x41t
        0xb8t 0xcdt 0x55t 0xc1t
        0xcft 0xe1t 0x95t 0x41t
        0x88t 0x80t 0x5t 0xc2t
        0xfct 0xe3t 0xfat 0x41t
        0xe3t 0x8t 0x3ct 0xc1t
    .end array-data

    :array_22
    .array-data 0x4
        0x36t 0x13t 0xe7t 0xc0t
        0xbbt 0x2ct 0x9dt 0x41t
        0x57t 0x9dt 0xaet 0xc1t
        0x56t 0xdet 0x5at 0x41t
        0xd7t 0xd1t 0x29t 0xc1t
        0x6bt 0x55t 0xa3t 0x41t
        0x5dt 0x93t 0xfct 0xc1t
        0x4at 0x47t 0xf4t 0x41t
        0xc1t 0x64t 0xb0t 0xc1t
        0x2t 0x41t 0xb0t 0x41t
        0x90t 0xc9t 0x6t 0xc2t
        0xb0t 0xf0t 0x2at 0x42t
        0xeat 0x1bt 0x1bt 0xc2t
        0x43t 0x96t 0xf7t 0x41t
        0x77t 0x70t 0xc1t 0xc1t
        0x96t 0x80t 0xaet 0x41t
        0xe4t 0xaft 0xa4t 0xc1t
        0xbft 0x71t 0x78t 0x41t
        0x8t 0x3et 0xedt 0xc0t
        0xadt 0x34t 0xcdt 0x3ft
    .end array-data

    :array_23
    .array-data 0x4
        0xd5t 0x78t 0x62t 0x41t
        0xfdt 0x2ft 0xft 0xc2t
        0x9bt 0x23t 0x5t 0x42t
        0x48t 0x52t 0x33t 0xc1t
        0xeet 0x25t 0x60t 0x40t
        0x7ct 0x62t 0xb4t 0xc1t
        0xd0t 0x63t 0x22t 0x42t
        0x53t 0x2et 0xfbt 0xc1t
        0xd0t 0x1ct 0x19t 0x41t
        0x3ct 0xd3t 0xat 0xc1t
        0x3t 0x9t 0xf7t 0x41t
        0xb0t 0xc7t 0x2et 0xc2t
        0x7t 0xc5t 0xe5t 0x41t
        0xbdt 0xd6t 0x13t 0xc1t
        0x83t 0xb5t 0x74t 0x41t
        0xfbt 0xfdt 0xe4t 0xc1t
        0x13t 0x72t 0xa0t 0x41t
        0xeat 0x94t 0xd7t 0x40t
        0x1bt 0xf3t 0xa5t 0xc1t
        0xbct 0x21t 0x22t 0x41t
    .end array-data

    :array_24
    .array-data 0x4
        0x52t 0xaat 0x9ft 0xc0t
        0x24t 0x55t 0x54t 0x41t
        0x74t 0x40t 0x60t 0xc1t
        0x39t 0x6dt 0xf6t 0x40t
        0xb9t 0x8dt 0xact 0xc0t
        0x4ft 0x59t 0x42t 0x41t
        0x62t 0x69t 0x9bt 0xc1t
        0xc4t 0x3et 0x8ft 0x41t
        0xf1t 0x59t 0x37t 0xc1t
        0xdct 0x9dt 0x35t 0x41t
        0xf3t 0xb1t 0x9at 0xc1t
        0xbdt 0x41t 0xc8t 0x41t
        0xdbt 0xe6t 0xabt 0xc1t
        0xbct 0xd3t 0x79t 0x41t
        0x7ft 0x86t 0x8et 0xc1t
        0xbt 0x12t 0xd3t 0x41t
        0x6dt 0x7bt 0xa0t 0xc1t
        0xe0t 0x2et 0x9bt 0xbdt
        0x45t 0x9ft 0x43t 0x41t
        0x6t 0x4ct 0xd2t 0xc0t
    .end array-data

    :array_25
    .array-data 0x4
        0xf8t 0xd2t 0xb9t 0xc0t
        0x5bt 0xa7t 0x4ct 0x41t
        0x28t 0xb8t 0xe0t 0xc0t
        0x4ft 0x90t 0xc9t 0xc0t
        0xb7t 0x4ft 0x2at 0x41t
        0xf9t 0xbft 0x3ct 0xc0t
        0xa8t 0x35t 0xe5t 0xbft
        0xc7t 0x9ct 0xdft 0xc0t
        0x2ft 0x90t 0x9ct 0x41t
        0x7dt 0x4at 0xa4t 0xc1t
        0x9t 0x3et 0x3et 0x41t
        0xadt 0xdet 0x20t 0xc1t
        0x55t 0xe3t 0xa9t 0x41t
        0xb0t 0x76t 0x0t 0xc2t
        0xc2t 0x9et 0xeet 0x41t
        0xc6t 0xdt 0xaat 0xc1t
        0x42t 0xb4t 0xb5t 0x41t
        0xd8t 0xb8t 0xcbt 0xc1t
        0x4t 0xb5t 0x96t 0x41t
        0x84t 0x3bt 0xc7t 0xc0t
    .end array-data

    :array_26
    .array-data 0x4
        0xc6t 0x15t 0xa9t 0x3ft
        0x2ft 0xdbt 0xf8t 0xbft
        0x7ct 0xet 0xe4t 0xbft
        0xd4t 0x7ft 0xdft 0x40t
        0x94t 0x38t 0x9t 0xc1t
        0x42t 0x5bt 0xdct 0x40t
        0xa1t 0x4ct 0xe5t 0xc0t
        0x6dt 0x64t 0x3bt 0x41t
        0xd0t 0x60t 0x83t 0xc1t
        0x77t 0x94t 0x87t 0x41t
        0x36t 0x76t 0x73t 0xc1t
        0x2ft 0x56t 0x84t 0x41t
        0x7et 0x38t 0xadt 0xc1t
        0xfbt 0xc9t 0xcct 0x41t
        0xd4t 0x6bt 0xc9t 0xc1t
        0xact 0xe6t 0xbdt 0x41t
        0xa9t 0x3dt 0xd1t 0xc1t
        0xb9t 0x29t 0xfct 0x41t
        0x2ct 0x4t 0xc4t 0xc1t
        0x81t 0x81t 0x5t 0x41t
    .end array-data

    :array_27
    .array-data 0x4
        0xb8t 0x1t 0x47t 0x41t
        0x3ct 0x23t 0xf7t 0xc1t
        0xbdt 0x35t 0xdat 0x41t
        0x24t 0x7bt 0xd3t 0xc0t
        0x94t 0xa0t 0x3t 0xbft
        0x34t 0x7et 0x81t 0xc1t
        0xcbt 0x9t 0xfat 0x41t
        0x8at 0x76t 0xadt 0xc1t
        0xeft 0x37t 0xb6t 0x3ft
        0xcbt 0xd9t 0xebt 0xbet
        0x93t 0xaat 0x9et 0x41t
        0x6dt 0x9et 0xf0t 0xc1t
        0xb6t 0xbet 0x76t 0x41t
        0xdet 0x8et 0x23t 0x40t
        0x3bt 0x36t 0x2dt 0x40t
        0x7ct 0x46t 0xb7t 0xc1t
        0xdft 0xbft 0xdat 0x41t
        0x12t 0x3et 0xft 0xc1t
        0x66t 0xa2t 0xa2t 0xc0t
        0x9et 0xa5t 0x83t 0x40t
    .end array-data

    :array_28
    .array-data 0x4
        0x98t 0xcft 0x78t 0xc1t
        0xb6t 0x42t 0x17t 0x42t
        0x4et 0x30t 0xfat 0xc1t
        0xddt 0x5ft 0x67t 0x40t
        0xc9t 0x74t 0xb9t 0x40t
        0xcet 0x8ct 0x70t 0x41t
        0x9ft 0xf2t 0x2t 0xc2t
        0xeet 0x14t 0x95t 0x41t
        0x68t 0xdct 0x3t 0x41t
        0x2ft 0x37t 0x1bt 0xc1t
        0x6bt 0x29t 0x65t 0xc1t
        0x1dt 0x5et 0xcdt 0x41t
        0x84t 0x59t 0xa6t 0xc0t
        0x8t 0x13t 0x94t 0xc1t
        0x45t 0x38t 0x40t 0x41t
        0x2bt 0x19t 0x4dt 0x41t
        0xeat 0xedt 0x84t 0xc1t
        0x8et 0xct 0x7t 0xc1t
        0xd6t 0x1dt 0xd7t 0x41t
        0x20t 0xe3t 0x52t 0xc1t
    .end array-data

    :array_29
    .array-data 0x4
        0x0t 0x29t 0x82t 0x40t
        0x90t 0xaat 0x1ct 0xc1t
        0x66t 0x9ft 0xfat 0x40t
        0x53t 0x5at 0xbft 0xbet
        0x96t 0x98t 0x9t 0xc0t
        0x70t 0xb3t 0x52t 0xc0t
        0xe3t 0xbt 0xf9t 0x40t
        0x58t 0x38t 0x75t 0xc0t
        0x3bt 0xe1t 0x58t 0xc0t
        0x2at 0x54t 0x73t 0x40t
        0x67t 0x46t 0x1dt 0x40t
        0x87t 0xe0t 0xa7t 0xc0t
        0xe9t 0xdt 0xbft 0xbet
        0xact 0x39t 0xd7t 0x40t
        0x75t 0x2ft 0xa1t 0xc0t
        0xbbt 0xeet 0xb3t 0xbft
        0x82t 0xc8t 0xbt 0x40t
        0x60t 0xf5t 0x93t 0x40t
        0xc5t 0xf6t 0x18t 0xc1t
        0xc4t 0x32t 0xbft 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dolby/ds1appUI/GraphicVisualiser;[F[F)V
    .locals 5
    .parameter "context"
    .parameter "visualizer"
    .parameter "gainsUi"
    .parameter "gainsUser"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    .line 123
    new-instance v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-direct {v0, p0, v4}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;-><init>(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;I)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    .line 130
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    .line 140
    iput v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    .line 147
    iput v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 151
    iput-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mNotifyListener:Z

    .line 161
    iput v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    .line 163
    iput v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEnabled:Z

    .line 181
    iput-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    .line 182
    iput v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->TABLET_LAYOUT_INITIAL_COLUMN:F

    .line 183
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->TABLET_LAYOUT_INITIAL_STEP:F

    .line 184
    iput v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->MOBILE_LAYOUT_INITIAL_COLUMN:F

    .line 185
    const/high16 v0, 0x4098

    iput v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->MOBILE_LAYOUT_INITIAL_STEP:F

    .line 506
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    .line 508
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    .line 511
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const v1, -0x2f007f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 512
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 513
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    const v1, -0x2f7f0080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    new-instance v0, Lcom/dolby/ds1appUI/FPSCounter;

    invoke-direct {v0}, Lcom/dolby/ds1appUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDrawFpsCounter:Lcom/dolby/ds1appUI/FPSCounter;

    .line 518
    new-instance v0, Lcom/dolby/ds1appUI/FPSCounter;

    invoke-direct {v0}, Lcom/dolby/ds1appUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothFpsCounter:Lcom/dolby/ds1appUI/FPSCounter;

    .line 705
    new-instance v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$1;-><init>(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    .line 865
    iput-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    .line 867
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    .line 985
    new-instance v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$2;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$2;-><init>(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    .line 194
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    .line 196
    iput-object p3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsUi:[F

    .line 197
    iput-object p4, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    .line 198
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->init()V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)Lcom/dolby/ds1appUI/GraphicVisualiser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->doRecalcPositions()V

    return-void
.end method

.method static synthetic access$300(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I

    return v0
.end method

.method static synthetic access$400(Lcom/dolby/ds1appUI/GraphicEqualizerPainter;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditGain:F

    return v0
.end method

.method private animateVisibility(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const-wide/16 v7, 0xfa

    .line 673
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 690
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateVisibility "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->preventHiding()V

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 682
    .local v0, now:J
    add-long v2, v0, v7

    .line 683
    .local v2, until:J
    if-eqz p1, :cond_1

    .line 684
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    .line 685
    iput-wide v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    .line 686
    invoke-direct {p0, v7, v8}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->delayHide(J)V

    goto :goto_0

    .line 688
    :cond_1
    iput-wide v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    goto :goto_0
.end method

.method private calculateTempGainsFromSmoothed()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 957
    const-string v3, "DsUI::MainActivity"

    const-string v4, "GraphicEqualizerPainter.calculateTempGainsFromSmoothed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x0

    .local v0, b:I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 962
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 963
    const/4 v1, 0x0

    .local v1, bb:I
    :goto_1
    if-ge v1, v8, :cond_0

    .line 964
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    aget v5, v3, v4

    sget-object v6, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    aget-object v6, v6, v0

    aget v6, v6, v1

    iget-object v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 961
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    .end local v1           #bb:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget v3, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    if-ge v2, v3, :cond_2

    .line 970
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    iget-object v4, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v5, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    aget v4, v4, v5

    aput v4, v3, v2

    .line 971
    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v6, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 969
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 973
    :cond_2
    return-void
.end method

.method private delayHide()V
    .locals 2

    .prologue
    .line 697
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->delayHide(J)V

    .line 698
    return-void
.end method

.method private delayHide(J)V
    .locals 4
    .parameter "add"

    .prologue
    .line 701
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    return-void
.end method

.method private doRecalcPositions()V
    .locals 14

    .prologue
    .line 872
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v10}, Lcom/dolby/ds1appUI/GraphicVisualiser;->isSurfaceCreated()Z

    move-result v10

    if-nez v10, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 876
    .local v0, beginTime:J
    iget-wide v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    sub-long v2, v0, v10

    .line 877
    .local v2, delay:J
    const-wide/16 v6, 0x3c

    .line 878
    .local v6, minInterval:J
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v10, v10, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v10, :cond_2

    .line 879
    const-wide/16 v10, 0x2

    div-long/2addr v6, v10

    .line 881
    :cond_2
    cmp-long v10, v2, v6

    if-gez v10, :cond_3

    .line 882
    sub-long v10, v6, v2

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    .line 883
    .local v8, postDelay:J
    const-string v10, "DsUI::MainActivity"

    const-string v11, "GraphicEqualizerPainter.doRecalcPositions ignore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v10, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 888
    .end local v8           #postDelay:J
    :cond_3
    const-string v10, "DsUI::MainActivity"

    const-string v11, "GraphicEqualizerPainter.doRecalcPositions"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    sget-object v10, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 890
    iput-wide v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    .line 892
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_4

    .line 893
    const-string v10, "DsUI::MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTouchEvents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v12}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_4
    iget v4, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    .line 898
    .local v4, editBand:I
    iget v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditGain:F

    .line 899
    .local v5, editGain:F
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 900
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10, v4, v5}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    .line 903
    :cond_5
    iget-object v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_7

    .line 907
    :cond_6
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->handleNewTouchEvents()V

    .line 908
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->smoothenCurve()V

    .line 909
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->updateEqUserGainsInEngine()V

    .line 911
    :cond_7
    iget-boolean v10, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_8

    .line 912
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->delayHide()V

    .line 915
    :cond_8
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v0

    .line 917
    const-wide/16 v10, 0x3c

    sub-long v2, v10, v2

    .line 918
    sget-object v10, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private getVerticalThumbPadding()I
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNewTouchEvents()V
    .locals 9

    .prologue
    .line 296
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v6

    .line 297
    .local v6, size:I
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v7, v8, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 298
    .local v7, suspended:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 299
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->getBandAt(I)I

    move-result v0

    .line 300
    .local v0, b:I
    if-eqz v7, :cond_0

    .line 301
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v5

    .line 307
    .local v5, newUserGain:F
    :goto_1
    move v1, v0

    .local v1, bb:I
    :goto_2
    sget v8, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    if-gt v1, v8, :cond_1

    .line 308
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v5, v8, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 303
    .end local v1           #bb:I
    .end local v5           #newUserGain:F
    :cond_0
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsUi:[F

    aget v2, v8, v0

    .line 304
    .local v2, currentUiGain:F
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v8, v8, v0

    sub-float v3, v2, v8

    .line 305
    .local v3, engineGain:F
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v8

    sub-float v5, v8, v3

    .restart local v5       #newUserGain:F
    goto :goto_1

    .line 298
    .end local v2           #currentUiGain:F
    .end local v3           #engineGain:F
    .restart local v1       #bb:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    .end local v0           #b:I
    .end local v1           #bb:I
    .end local v5           #newUserGain:F
    :cond_2
    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 313
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4120

    const v3, 0x7f020022

    const/4 v5, 0x1

    .line 202
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 203
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    .line 204
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_1

    .line 205
    sget-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    sput-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    .line 206
    sget-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    sput-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    .line 212
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    .line 215
    const v2, 0x7f020023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    .line 216
    const v2, 0x7f02001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    .line 217
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 219
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 220
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const v4, 0x7f06000c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x7f06000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 222
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f06000e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 223
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x5

    const v4, 0x7f06000f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 224
    const/high16 v1, 0x3f80

    .line 225
    .local v1, scale:F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 236
    :goto_1
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    .line 237
    new-instance v2, Landroid/graphics/CornerPathEffect;

    mul-float v3, v6, v1

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    .line 238
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    .line 239
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const v3, -0x2f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 244
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    .line 245
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 247
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    mul-float v3, v6, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    const v3, -0x7f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 250
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 253
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 261
    :cond_0
    iput-boolean v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    .line 263
    return-void

    .line 208
    .end local v1           #scale:F
    :cond_1
    sget-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    sput-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    .line 209
    sget-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    sput-object v2, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    .line 210
    sput v5, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    goto/16 :goto_0

    .line 227
    .restart local v1       #scale:F
    :sswitch_0
    const/high16 v1, 0x3f40

    .line 228
    goto/16 :goto_1

    .line 230
    :sswitch_1
    const/high16 v1, 0x3fc0

    .line 231
    goto/16 :goto_1

    .line 233
    :sswitch_2
    const/high16 v1, 0x4000

    goto/16 :goto_1

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method private isAnimatedVisible()Z
    .locals 4

    .prologue
    .line 1083
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimating(J)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 1074
    iget-wide v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEnabled:Z

    return v0
.end method

.method private onIEqPresetChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 976
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 978
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 979
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->smoothenCurve()V

    .line 980
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usergains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-static {v2}, Lcom/dolby/ds1appCoreUI/Tools;->floatArrayToString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-void
.end method

.method private preventHiding()V
    .locals 2

    .prologue
    .line 693
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method private smoothenCurve()V
    .locals 24

    .prologue
    .line 327
    invoke-static {}, Lcom/dolby/ds1appUI/MainActivity;->getConfiguration()Lcom/dolby/ds1appCoreUI/Configuration;

    move-result-object v5

    .line 328
    .local v5, conf:Lcom/dolby/ds1appCoreUI/Configuration;
    if-nez v5, :cond_0

    .line 406
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 333
    .local v13, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v19, v0

    sub-long v19, v13, v19

    const-wide/16 v21, 0x3e8

    cmp-long v19, v19, v21

    if-ltz v19, :cond_1

    .line 334
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v19, v0

    sub-long v6, v13, v19

    .line 338
    .local v6, delta:J
    long-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x447a

    div-float v10, v19, v20

    .line 342
    .local v10, fDelta:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    move-object/from16 v18, v0

    .line 344
    .local v18, tempGains:[F
    const v16, 0x3ca3d70a

    .line 347
    .local v16, significantDiff:F
    const/4 v15, 0x0

    .line 348
    .local v15, redraw:Z
    const-wide/high16 v19, 0x3fe0

    const v21, 0x3e99999a

    div-float v21, v10, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v9, v0

    .line 350
    .local v9, fAlpha:F
    const v17, 0x3e4ccccd

    .line 351
    .local v17, snap:F
    const/4 v3, 0x0

    .local v3, b:I
    :goto_1
    sget v19, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x14

    move/from16 v0, v19

    if-ge v3, v0, :cond_8

    .line 353
    aget v19, v18, v3

    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v20

    sub-float v8, v19, v20

    .line 354
    .local v8, diff:F
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 355
    const v19, 0x3ca3d70a

    cmpl-float v19, v8, v19

    if-ltz v19, :cond_4

    .line 356
    const v19, 0x3e4ccccd

    cmpg-float v19, v8, v19

    if-gez v19, :cond_3

    .line 357
    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v19

    aput v19, v18, v3

    .line 351
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_3
    aget v19, v18, v3

    mul-float v19, v19, v9

    const/high16 v20, 0x3f80

    sub-float v20, v20, v9

    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v18, v3

    goto :goto_2

    .line 362
    :cond_4
    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 365
    :cond_5
    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aget v20, v18, v3

    sub-float v8, v19, v20

    .line 366
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_2

    .line 367
    const v19, 0x3ca3d70a

    cmpl-float v19, v8, v19

    if-ltz v19, :cond_7

    .line 368
    const v19, 0x3e4ccccd

    cmpg-float v19, v8, v19

    if-gez v19, :cond_6

    .line 369
    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 371
    :cond_6
    aget v19, v18, v3

    mul-float v19, v19, v9

    const/high16 v20, 0x3f80

    sub-float v20, v20, v9

    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v18, v3

    goto :goto_2

    .line 374
    :cond_7
    invoke-virtual {v5}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 380
    .end local v8           #diff:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x14

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    const/4 v3, 0x0

    :goto_3
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v3, v0, :cond_b

    .line 385
    const/4 v11, 0x0

    .line 386
    .local v11, fGain:F
    const/4 v12, 0x0

    .local v12, i:I
    move v4, v3

    .local v4, bb:I
    :goto_4
    sget v19, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-gt v12, v0, :cond_9

    .line 387
    sget-object v19, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    aget v19, v19, v12

    aget v20, v18, v4

    mul-float v19, v19, v20

    add-float v11, v11, v19

    .line 386
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 390
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aget v19, v19, v3

    cmpl-float v19, v19, v11

    if-eqz v19, :cond_a

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aget v19, v19, v3

    sub-float v19, v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 392
    .local v2, absDiff:F
    const v19, 0x3ca3d70a

    cmpl-float v19, v2, v19

    if-lez v19, :cond_a

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aput v11, v19, v3

    .line 394
    if-nez v15, :cond_a

    .line 397
    const/4 v15, 0x1

    .line 384
    .end local v2           #absDiff:F
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 403
    .end local v4           #bb:I
    .end local v11           #fGain:F
    .end local v12           #i:I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 405
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    goto/16 :goto_0
.end method

.method private static translateEqPresetIndex(I)I
    .locals 1
    .parameter "eqPreset"

    .prologue
    .line 820
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 821
    const/4 p0, 0x0

    .line 825
    :goto_0
    return p0

    .line 823
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private translateGaindBToY([FF)F
    .locals 16
    .parameter "gainval"
    .parameter "freq"

    .prologue
    .line 795
    const/4 v11, 0x0

    .line 796
    .local v11, value:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v14, :cond_1

    .line 797
    move/from16 v0, p2

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    .line 798
    .local v1, ba1:D
    move/from16 v0, p2

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 799
    .local v3, ba2:D
    cmpl-double v14, v1, v3

    if-eqz v14, :cond_0

    .line 800
    double-to-int v14, v1

    aget v9, p1, v14

    .line 801
    .local v9, val1:F
    double-to-int v14, v3

    aget v10, p1, v14

    .line 802
    .local v10, val2:F
    move/from16 v0, p2

    float-to-double v14, v0

    sub-double/2addr v14, v1

    double-to-float v6, v14

    .line 803
    .local v6, inc:F
    sub-float v14, v10, v9

    mul-float/2addr v14, v6

    add-float v11, v14, v9

    .line 810
    .end local v1           #ba1:D
    .end local v3           #ba2:D
    .end local v6           #inc:F
    .end local v9           #val1:F
    .end local v10           #val2:F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v14

    int-to-float v13, v14

    .line 811
    .local v13, verticalThumbPadding:F
    invoke-virtual/range {p0 .. p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->getHeight()I

    move-result v14

    int-to-float v5, v14

    .line 812
    .local v5, height:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v13

    sub-float v7, v5, v14

    .line 813
    .local v7, paddedHeight:F
    const/high16 v14, -0x3ec0

    sub-float v12, v11, v14

    .line 814
    .local v12, valueAbs:F
    mul-float v14, v12, v7

    const/high16 v15, 0x4240

    div-float v8, v14, v15

    .line 816
    .local v8, paddedY:F
    sub-float v14, v5, v13

    sub-float/2addr v14, v8

    return v14

    .line 805
    .end local v5           #height:F
    .end local v7           #paddedHeight:F
    .end local v8           #paddedY:F
    .end local v12           #valueAbs:F
    .end local v13           #verticalThumbPadding:F
    .restart local v1       #ba1:D
    .restart local v3       #ba2:D
    :cond_0
    move/from16 v0, p2

    float-to-int v14, v0

    aget v11, p1, v14

    goto :goto_0

    .line 808
    .end local v1           #ba1:D
    .end local v3           #ba2:D
    :cond_1
    move/from16 v0, p2

    float-to-int v14, v0

    aget v11, p1, v14

    goto :goto_0
.end method

.method private translateYtoGaindB(F)F
    .locals 8
    .parameter "y"

    .prologue
    const/high16 v7, -0x3ec0

    .line 786
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v4

    .line 787
    .local v4, verticalThumbPadding:I
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mViewHeight:I

    .line 788
    .local v0, height:I
    mul-int/lit8 v5, v4, 0x2

    sub-int v1, v0, v5

    .line 789
    .local v1, paddedHeight:I
    sub-int v5, v0, v4

    int-to-float v5, v5

    sub-float/2addr v5, p1

    const/high16 v6, 0x4240

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 790
    .local v3, valueAbs:F
    const/high16 v5, 0x4210

    add-float v6, v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 791
    .local v2, value:F
    return v2
.end method

.method private updateEqUserGainsInEngine()V
    .locals 17

    .prologue
    .line 414
    const-string v14, "DsUI::MainActivity"

    const-string v15, "GraphicEqualizerPainter.updateEqUserGainsInEngine"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-interface {v14}, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;->useDsApiOnUiEvent()Z

    move-result v14

    if-nez v14, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {}, Lcom/dolby/ds1appUI/MainActivity;->getConfiguration()Lcom/dolby/ds1appCoreUI/Configuration;

    move-result-object v3

    .line 421
    .local v3, conf:Lcom/dolby/ds1appCoreUI/Configuration;
    if-eqz v3, :cond_0

    .line 428
    :try_start_0
    sget-object v14, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v14, v15}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v10

    .line 429
    .local v10, selectedProfile:I
    sget-object v14, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v14, v15, v10}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 436
    .local v11, stg:Landroid/dolby/DsClientSettings;
    invoke-virtual {v11}, Landroid/dolby/DsClientSettings;->getGeqOn()Z

    move-result v7

    .line 439
    .local v7, isGeqOn:Z
    const/16 v14, 0x14

    new-array v13, v14, [F

    .line 442
    .local v13, userGain:[F
    const/4 v4, 0x0

    .line 444
    .local v4, counter:I
    invoke-virtual {v3}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v8

    .line 446
    .local v8, minEditGain:F
    const/4 v2, 0x0

    .line 448
    .local v2, changed:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v12, v14, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    .line 450
    .local v12, suspended:Z
    const/4 v1, 0x0

    .local v1, b:I
    :goto_1
    const/16 v14, 0x14

    if-ge v1, v14, :cond_7

    .line 451
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v14, v14, v1

    aput v14, v13, v1

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    aget v9, v14, v1

    .line 453
    .local v9, old:F
    aget v14, v13, v1

    sub-float v5, v14, v9

    .line 454
    .local v5, diff:F
    if-nez v2, :cond_2

    .line 455
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_5

    const/4 v2, 0x1

    .line 457
    :cond_2
    :goto_2
    aget v14, v13, v1

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_3

    if-eqz v11, :cond_3

    if-nez v7, :cond_3

    .line 458
    const/4 v7, 0x1

    .line 459
    const-string v14, "DsUI::MainActivity"

    const-string v15, "GraphicEqualizerPainter.setGeqOn true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 462
    :cond_3
    aget v14, v13, v1

    cmpg-float v14, v14, v8

    if-gez v14, :cond_6

    .line 463
    aput v8, v13, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v1           #b:I
    .end local v2           #changed:Z
    .end local v4           #counter:I
    .end local v5           #diff:F
    .end local v7           #isGeqOn:Z
    .end local v8           #minEditGain:F
    .end local v9           #old:F
    .end local v10           #selectedProfile:I
    .end local v11           #stg:Landroid/dolby/DsClientSettings;
    .end local v12           #suspended:Z
    .end local v13           #userGain:[F
    :catch_0
    move-exception v6

    .line 431
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 455
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #b:I
    .restart local v2       #changed:Z
    .restart local v4       #counter:I
    .restart local v5       #diff:F
    .restart local v7       #isGeqOn:Z
    .restart local v8       #minEditGain:F
    .restart local v9       #old:F
    .restart local v10       #selectedProfile:I
    .restart local v11       #stg:Landroid/dolby/DsClientSettings;
    .restart local v12       #suspended:Z
    .restart local v13       #userGain:[F
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 464
    :cond_6
    :try_start_2
    aget v14, v13, v1

    const/high16 v15, 0x4210

    cmpl-float v14, v14, v15

    if-lez v14, :cond_4

    .line 465
    const/high16 v14, 0x4210

    aput v14, v13, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 471
    .end local v5           #diff:F
    .end local v9           #old:F
    :catch_1
    move-exception v6

    .line 472
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 476
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz v12, :cond_8

    if-eqz v2, :cond_8

    .line 477
    const-string v14, "DsUI::MainActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mGainsUi: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsUi:[F

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/dolby/ds1appCoreUI/Tools;->floatArrayToString([F)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 481
    :cond_8
    if-eqz v2, :cond_9

    .line 483
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    invoke-virtual {v14, v10, v15, v13}, Landroid/dolby/DsClient;->setGeq(II[F)V

    .line 484
    const-string v14, "DsUI::MainActivity"

    const-string v15, "GraphicEqualizerPainter DsClientCache.INSTANCE.setProfileSettings"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v14, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v14, v15, v10, v11}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 492
    :cond_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserBandsUpdated:I

    .line 497
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mNotifyListener:Z

    if-eqz v14, :cond_0

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/ds1appUI/IEqualizerChangeListener;

    if-eqz v14, :cond_a

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/ds1appUI/IEqualizerChangeListener;

    invoke-interface {v14}, Lcom/dolby/ds1appUI/IEqualizerChangeListener;->onEqualizerEditStart()V

    .line 502
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mNotifyListener:Z

    goto/16 :goto_0

    .line 486
    :catch_2
    move-exception v6

    .line 487
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateGeqOnInDs()V
    .locals 9

    .prologue
    .line 1016
    const-string v6, "DsUI::MainActivity"

    const-string v7, "GraphicEqualizerPainter.updateGeqOnInDs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :try_start_0
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 1021
    .local v3, selectedProfile:I
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1028
    .local v4, stg:Landroid/dolby/DsClientSettings;
    const/4 v2, 0x0

    .line 1030
    .local v2, geqOn:Z
    :try_start_1
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v6, v3, v7, v8}, Landroid/dolby/DsClient;->setGeq(II[F)V

    .line 1031
    const/4 v0, 0x0

    .local v0, b:I
    :goto_0
    const/16 v6, 0x14

    if-ge v0, v6, :cond_0

    .line 1032
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v5, v6, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .local v5, userGain:F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    .line 1034
    const/4 v2, 0x1

    .line 1042
    .end local v5           #userGain:F
    :cond_0
    invoke-virtual {v4, v2}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 1045
    :try_start_2
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7, v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1049
    .end local v0           #b:I
    .end local v2           #geqOn:Z
    .end local v3           #selectedProfile:I
    .end local v4           #stg:Landroid/dolby/DsClientSettings;
    :goto_1
    return-void

    .line 1022
    :catch_0
    move-exception v1

    .line 1023
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1031
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:I
    .restart local v2       #geqOn:Z
    .restart local v3       #selectedProfile:I
    .restart local v4       #stg:Landroid/dolby/DsClientSettings;
    .restart local v5       #userGain:F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    .end local v0           #b:I
    .end local v5           #userGain:F
    :catch_1
    move-exception v1

    .line 1039
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1046
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:I
    :catch_2
    move-exception v1

    .line 1047
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-direct {p0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    .line 858
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 859
    return-void
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    .line 1062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1063
    .local v0, now:J
    invoke-direct {p0, v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isAnimating(J)Z

    move-result v2

    return v2
.end method

.method public isModified()Z
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, b:I
    :goto_0
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    .line 321
    :goto_1
    return v1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    if-nez v2, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 535
    .local v23, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v2, v2, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    .line 539
    .local v15, gainsPaint:[F
    :goto_1
    const/16 v7, 0xff

    .line 543
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v2, v23, v2

    if-gez v2, :cond_a

    .line 544
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    const-wide/16 v4, 0xfa

    sub-long/2addr v2, v4

    sub-long v10, v23, v2

    .line 545
    .local v10, delay:J
    const-wide/16 v2, 0xff

    mul-long/2addr v2, v10

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    .line 550
    .end local v10           #delay:J
    :cond_3
    :goto_2
    if-gez v7, :cond_b

    .line 551
    const/4 v7, 0x0

    .line 555
    :cond_4
    :goto_3
    const/16 v2, 0xff

    if-ge v7, v2, :cond_c

    .line 556
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHeight:I

    int-to-float v6, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 564
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->getWidth()I

    move-result v25

    .line 566
    .local v25, width:I
    const/16 v22, 0x14

    .line 568
    .local v22, nodes:I
    const/16 v17, 0x0

    .line 569
    .local v17, initialI:F
    const/high16 v18, 0x3f80

    .line 571
    .local v18, initialStep:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 572
    const/16 v17, 0x0

    .line 573
    const/high16 v18, 0x4098

    .line 576
    :cond_6
    div-int/lit8 v27, v25, 0x28

    .line 577
    .local v27, x0:I
    move/from16 v16, v17

    .local v16, i:F
    :goto_4
    const/high16 v2, 0x41a0

    cmpg-float v2, v16, v2

    if-gez v2, :cond_11

    .line 578
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v3, v0

    mul-float v3, v3, v16

    const/high16 v4, 0x41a0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v26, v0

    .line 579
    .local v26, x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 587
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 588
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .line 602
    .local v9, d:Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v9, :cond_8

    .line 603
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 604
    .local v14, dw:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 606
    .local v12, dh:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 608
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 609
    .local v28, yThumb:F
    div-int/lit8 v2, v14, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    sub-float v3, v28, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 611
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 577
    .end local v12           #dh:I
    .end local v14           #dw:I
    .end local v28           #yThumb:F
    :cond_8
    add-float v16, v16, v18

    goto/16 :goto_4

    .line 535
    .end local v7           #alpha:I
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .end local v15           #gainsPaint:[F
    .end local v16           #i:F
    .end local v17           #initialI:F
    .end local v18           #initialStep:F
    .end local v22           #nodes:I
    .end local v25           #width:I
    .end local v26           #x:I
    .end local v27           #x0:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsUi:[F

    goto/16 :goto_1

    .line 546
    .restart local v7       #alpha:I
    .restart local v15       #gainsPaint:[F
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v23, v2

    if-gez v2, :cond_3

    .line 547
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    sub-long v19, v2, v23

    .line 548
    .local v19, left:J
    const-wide/16 v2, 0xff

    mul-long v2, v2, v19

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    goto/16 :goto_2

    .line 552
    .end local v19           #left:J
    :cond_b
    const/16 v2, 0xff

    if-le v7, v2, :cond_4

    .line 553
    const/16 v7, 0xff

    goto/16 :goto_3

    .line 557
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v23, v2

    if-lez v2, :cond_5

    .line 558
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    goto/16 :goto_0

    .line 590
    .restart local v16       #i:F
    .restart local v17       #initialI:F
    .restart local v18       #initialStep:F
    .restart local v22       #nodes:I
    .restart local v25       #width:I
    .restart local v26       #x:I
    .restart local v27       #x0:I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    int-to-float v2, v2

    sub-float v2, v16, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v13, v2

    .line 591
    .local v13, dist:I
    if-nez v13, :cond_e

    .line 592
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 593
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :cond_e
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    .line 594
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 595
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v2, 0x2

    if-ne v13, v2, :cond_10

    .line 596
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 598
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .restart local v9       #d:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 621
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .end local v13           #dist:I
    .end local v26           #x:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_13

    .line 622
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 623
    .local v21, mPath:Landroid/graphics/Path;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 624
    .restart local v28       #yThumb:F
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 626
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    const/16 v2, 0x14

    move/from16 v0, v16

    if-ge v0, v2, :cond_12

    .line 627
    mul-int v2, v16, v25

    div-int/lit8 v2, v2, 0x14

    add-int v26, v27, v2

    .line 628
    .restart local v26       #x:I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 629
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 638
    .end local v26           #x:I
    :cond_12
    add-int v2, v27, v25

    int-to-float v2, v2

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 649
    .end local v16           #i:I
    .end local v21           #mPath:Landroid/graphics/Path;
    .end local v28           #yThumb:F
    :cond_13
    const/16 v2, 0xff

    if-ge v7, v2, :cond_0

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"
    .parameter "viewH"

    .prologue
    const/4 v3, 0x0

    .line 266
    iput p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mWidth:I

    .line 267
    iput p2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mHeight:I

    .line 268
    iput p5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mViewHeight:I

    .line 270
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 285
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 716
    const-string v6, "DsUI::MainActivity"

    const-string v7, "GraphicEqualizerPainter.onTouchEvent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-boolean v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEnabled:Z

    if-nez v6, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v11

    .line 722
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 723
    .local v0, action:I
    if-nez v0, :cond_3

    .line 724
    iput-boolean v11, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mNotifyListener:Z

    .line 725
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->preventHiding()V

    .line 726
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->isAnimatedVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    if-nez v6, :cond_3

    .line 727
    :cond_2
    invoke-direct {p0, v11}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    .line 728
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 733
    :cond_3
    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    iput v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 734
    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditGain:F

    iput v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditGain:F

    .line 736
    const/4 v6, 0x2

    if-eq v6, v0, :cond_4

    if-nez v0, :cond_6

    .line 737
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 738
    .local v1, eX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 740
    .local v2, eY:F
    cmpg-float v6, v1, v8

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gez v6, :cond_0

    cmpg-float v6, v2, v8

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mViewHeight:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-gez v6, :cond_0

    .line 746
    const/4 v6, 0x0

    const/16 v7, 0x13

    const/high16 v8, 0x41a0

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 748
    .local v5, iSetCenter:I
    iget-boolean v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-ne v6, v11, :cond_5

    .line 749
    const/high16 v6, 0x4098

    add-int/lit8 v7, v5, 0x1

    int-to-double v7, v7

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 750
    const/16 v6, 0x14

    if-lt v5, v6, :cond_5

    .line 751
    const/16 v5, 0x13

    .line 754
    :cond_5
    iput v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    .line 757
    invoke-direct {p0, v2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->translateYtoGaindB(F)F

    move-result v4

    .line 758
    .local v4, fTrackdB:F
    const/high16 v6, -0x3ec0

    const/high16 v7, 0x4210

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 759
    .local v3, fSetdBdraw:F
    iput v3, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditGain:F

    .line 763
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v6, v5, v3}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    .line 764
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisualizer:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iget-boolean v6, v6, Lcom/dolby/ds1appUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v6, :cond_0

    .line 765
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 767
    .end local v1           #eX:F
    .end local v2           #eY:F
    .end local v3           #fSetdBdraw:F
    .end local v4           #fTrackdB:F
    .end local v5           #iSetCenter:I
    :cond_6
    if-ne v11, v0, :cond_0

    .line 768
    iput v9, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEditBand:I

    .line 769
    iput v9, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 770
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->delayHide()V

    .line 771
    iput-boolean v11, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    .line 772
    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method

.method readUserGainsFromEngine()V
    .locals 9

    .prologue
    .line 923
    const-string v5, "DsUI::MainActivity"

    const-string v6, "GraphicEqualizerPainter.readUserGainsFromEngine"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, changed:Z
    :try_start_0
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    invoke-virtual {v5, v6}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v4

    .line 927
    .local v4, stgs:Landroid/dolby/DsClientSettings;
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    invoke-virtual {v5, v6, v7, v4}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 928
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    iget v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    invoke-virtual {v5, v6, v7}, Landroid/dolby/DsClient;->getGeq(II)[F

    move-result-object v5

    iput-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    .line 929
    invoke-static {}, Lcom/dolby/ds1appUI/MainActivity;->getConfiguration()Lcom/dolby/ds1appCoreUI/Configuration;

    move-result-object v1

    .line 930
    .local v1, conf:Lcom/dolby/ds1appCoreUI/Configuration;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0x14

    if-ge v3, v5, :cond_2

    .line 931
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v5, v5, v3

    invoke-virtual {v1}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 932
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/dolby/ds1appCoreUI/Configuration;->getMaxEditGain()F

    move-result v6

    aput v6, v5, v3

    .line 933
    const/4 v0, 0x1

    .line 935
    :cond_0
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v5, v5, v3

    invoke-virtual {v1}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 936
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/dolby/ds1appCoreUI/Configuration;->getMinEditGain()F

    move-result v6

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 937
    const/4 v0, 0x1

    .line 930
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 940
    :cond_2
    if-eqz v0, :cond_3

    .line 942
    :try_start_1
    iget-object v5, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    iget v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    iget-object v8, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v5, v6, v7, v8}, Landroid/dolby/DsClient;->setGeq(II[F)V

    .line 943
    const-string v5, "DsUI::MainActivity"

    const-string v6, "GraphicEqualizerPainter DsClientCache.INSTANCE.setProfileSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    iget v7, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    invoke-virtual {v5, v6, v7, v4}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 950
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->calculateTempGainsFromSmoothed()V

    .line 954
    .end local v1           #conf:Lcom/dolby/ds1appCoreUI/Configuration;
    .end local v3           #i:I
    .end local v4           #stgs:Landroid/dolby/DsClientSettings;
    :goto_1
    return-void

    .line 945
    .restart local v1       #conf:Lcom/dolby/ds1appCoreUI/Configuration;
    .restart local v3       #i:I
    .restart local v4       #stgs:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v2

    .line 946
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 951
    .end local v1           #conf:Lcom/dolby/ds1appCoreUI/Configuration;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #stgs:Landroid/dolby/DsClientSettings;
    :catch_1
    move-exception v2

    .line 952
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public resetUserGains(Z)V
    .locals 6
    .parameter "updateInDs"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 994
    const-string v1, "DsUI::MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GraphicEqualizerPainter.resetUserGains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    if-ne v1, v5, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    const/4 v0, 0x0

    .local v0, b:I
    :goto_1
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v4, v1, v0

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1003
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1004
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aput v4, v1, v0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1007
    :cond_3
    iget-object v1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEventQueue:Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 1008
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    goto :goto_0
.end method

.method public setActivity(Lcom/dolby/ds1appUI/IDsActivityCommonTemp;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mActivity:Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    .line 850
    return-void
.end method

.method public setDsClient(Landroid/dolby/DsClient;)V
    .locals 0
    .parameter "dsc"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mDSClient:Landroid/dolby/DsClient;

    .line 854
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEnabled:Z

    .line 662
    return-void
.end method

.method public setEqualizerListener(Lcom/dolby/ds1appUI/IEqualizerChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mListener:Lcom/dolby/ds1appUI/IEqualizerChangeListener;

    .line 846
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 862
    iput-boolean p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mVisible:Z

    .line 863
    return-void
.end method

.method public switchPreset(IIZ)V
    .locals 3
    .parameter "profile"
    .parameter "eqPreset"
    .parameter "updateInDs"

    .prologue
    .line 829
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphicEqualizerPainter.switchPreset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {p2}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->translateEqPresetIndex(I)I

    move-result p2

    .line 831
    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    if-eq v0, p2, :cond_2

    .line 832
    :cond_0
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserGains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iput p1, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mProfile:I

    .line 834
    iput p2, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mEqPreset:I

    .line 835
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->readUserGainsFromEngine()V

    .line 836
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    .line 837
    if-eqz p3, :cond_1

    .line 838
    invoke-direct {p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 842
    :cond_2
    return-void
.end method
