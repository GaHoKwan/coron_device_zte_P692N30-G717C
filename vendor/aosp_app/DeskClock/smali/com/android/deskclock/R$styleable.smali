.class public final Lcom/android/deskclock/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AnalogClock:[I = null

.field public static final AnalogClock_jewelColor:I = 0x2

.field public static final AnalogClock_jewelOffset:I = 0x1

.field public static final AnalogClock_jewelRadius:I = 0x0

.field public static final GlowPadView:[I = null

.field public static final GlowPadView_alwaysTrackFinger:I = 0xd

.field public static final GlowPadView_android_gravity:I = 0x0

.field public static final GlowPadView_directionDescriptions:I = 0x3

.field public static final GlowPadView_feedbackCount:I = 0xc

.field public static final GlowPadView_glowRadius:I = 0x9

.field public static final GlowPadView_handleDrawable:I = 0x4

.field public static final GlowPadView_innerRadius:I = 0x7

.field public static final GlowPadView_outerRadius:I = 0x8

.field public static final GlowPadView_outerRingDrawable:I = 0x5

.field public static final GlowPadView_pointDrawable:I = 0x6

.field public static final GlowPadView_snapMargin:I = 0xb

.field public static final GlowPadView_targetDescriptions:I = 0x2

.field public static final GlowPadView_targetDrawables:I = 0x1

.field public static final GlowPadView_vibrationDuration:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/deskclock/R$styleable;->AnalogClock:[I

    .line 1614
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/deskclock/R$styleable;->GlowPadView:[I

    return-void

    .line 1528
    :array_0
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    .line 1614
    :array_1
    .array-data 0x4
        0xaft 0x0t 0x1t 0x1t
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
