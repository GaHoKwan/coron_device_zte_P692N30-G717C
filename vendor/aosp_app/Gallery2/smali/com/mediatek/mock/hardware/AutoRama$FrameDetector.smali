.class Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;
.super Ljava/lang/Object;
.source "AutoRama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/hardware/AutoRama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameDetector"
.end annotation


# static fields
.field private static final BUFF_HEIGHT:I = 0x78

.field private static final BUFF_WIDTH:I = 0xa0

.field private static final DOWN:I = 0x3

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x0

.field private static final UNKNOWN:I = -0x1

.field private static final UP:I = 0x2


# instance fields
.field private mCurrentDirection:I

.field final synthetic this$0:Lcom/mediatek/mock/hardware/AutoRama;


# direct methods
.method private constructor <init>(Lcom/mediatek/mock/hardware/AutoRama;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->this$0:Lcom/mediatek/mock/hardware/AutoRama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->mCurrentDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mock/hardware/AutoRama;Lcom/mediatek/mock/hardware/AutoRama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;-><init>(Lcom/mediatek/mock/hardware/AutoRama;)V

    return-void
.end method


# virtual methods
.method public determinDirection([I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->mCurrentDirection:I

    .line 228
    aput v4, p1, v5

    .line 229
    const/4 v0, 0x2

    aput v4, p1, v0

    .line 230
    const/4 v0, 0x3

    iget v1, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->mCurrentDirection:I

    aput v1, p1, v0

    .line 231
    return v5
.end method

.method public getPosition([II)V
    .locals 5
    .parameter "position"
    .parameter "movingTime"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->mCurrentDirection:I

    packed-switch v0, :pswitch_data_0

    .line 256
    aput v2, p1, v3

    .line 257
    aput v2, p1, v4

    .line 260
    :goto_1
    const/4 v0, 0x3

    iget v1, p0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->mCurrentDirection:I

    aput v1, p1, v0

    goto :goto_0

    .line 240
    :pswitch_0
    mul-int/lit16 v0, p2, 0xa0

    div-int/lit16 v0, v0, 0x4b0

    neg-int v0, v0

    aput v0, p1, v3

    .line 241
    aput v2, p1, v4

    goto :goto_1

    .line 244
    :pswitch_1
    mul-int/lit16 v0, p2, 0xa0

    div-int/lit16 v0, v0, 0x4b0

    aput v0, p1, v3

    .line 245
    aput v2, p1, v4

    goto :goto_1

    .line 248
    :pswitch_2
    aput v2, p1, v3

    .line 249
    mul-int/lit8 v0, p2, 0x78

    div-int/lit16 v0, v0, 0x4b0

    neg-int v0, v0

    aput v0, p1, v4

    goto :goto_1

    .line 252
    :pswitch_3
    aput v2, p1, v3

    .line 253
    mul-int/lit8 v0, p2, 0x78

    div-int/lit16 v0, v0, 0x4b0

    aput v0, p1, v4

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
