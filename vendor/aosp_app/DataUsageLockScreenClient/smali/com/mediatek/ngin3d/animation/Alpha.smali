.class public Lcom/mediatek/ngin3d/animation/Alpha;
.super Ljava/lang/Object;
.source "Alpha.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/animation/Alpha$2;,
        Lcom/mediatek/ngin3d/animation/Alpha$Listener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/animation/Alpha$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lcom/mediatek/ngin3d/animation/Mode;

.field private mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

.field private mTimelineListener:Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Alpha;-><init>(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 1
    .parameter "timeline"

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/ngin3d/animation/Mode;->LINEAR:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/Alpha;-><init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/animation/Timeline;Lcom/mediatek/ngin3d/animation/Mode;)V
    .locals 1
    .parameter "timeline"
    .parameter "mode"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    .line 63
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/animation/Alpha;->setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/mediatek/ngin3d/animation/Alpha;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)V

    .line 65
    return-void
.end method

.method private easeInBounce(F)F
    .locals 2
    .parameter "p"

    .prologue
    const/high16 v1, 0x3f80

    .line 316
    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/animation/Alpha;->easeOutBounce(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method private easeOutBounce(F)F
    .locals 6
    .parameter "p"

    .prologue
    const/high16 v5, 0x40f2

    .line 320
    move v0, p1

    .line 321
    .local v0, mp:F
    float-to-double v1, v0

    const-wide v3, 0x3fd745d1745d1746L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 322
    mul-float v1, v5, v0

    mul-float/2addr v1, v0

    .line 331
    :goto_0
    return v1

    .line 323
    :cond_0
    float-to-double v1, v0

    const-wide v3, 0x3fe745d1745d1746L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 324
    float-to-double v1, v0

    const-wide v3, 0x3fe1745d1745d174L

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 325
    mul-float v1, v5, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f40

    add-float/2addr v1, v2

    goto :goto_0

    .line 326
    :cond_1
    float-to-double v1, v0

    const-wide v3, 0x3fed1745d1745d17L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 327
    float-to-double v1, v0

    const-wide v3, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 328
    mul-float v1, v5, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f70

    add-float/2addr v1, v2

    goto :goto_0

    .line 330
    :cond_2
    float-to-double v1, v0

    const-wide v3, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 331
    mul-float v1, v5, v0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f7c

    add-float/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lcom/mediatek/ngin3d/animation/Alpha$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method protected clone()Lcom/mediatek/ngin3d/animation/Alpha;
    .locals 3

    .prologue
    .line 425
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/Alpha;

    .line 426
    .local v0, alpha:Lcom/mediatek/ngin3d/animation/Alpha;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-object v0

    .line 428
    .end local v0           #alpha:Lcom/mediatek/ngin3d/animation/Alpha;
    :catch_0
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/animation/Alpha;->clone()Lcom/mediatek/ngin3d/animation/Alpha;

    move-result-object v0

    return-object v0
.end method

.method public final getAlpha()F
    .locals 12

    .prologue
    .line 68
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    if-nez v6, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 312
    :goto_0
    return v1

    .line 72
    :cond_0
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getRealProgress()F

    move-result v2

    .line 73
    .local v2, p:F
    const/4 v1, 0x0

    .line 75
    .local v1, mp:F
    sget-object v6, Lcom/mediatek/ngin3d/animation/Alpha$2;->$SwitchMap$com$mediatek$ngin3d$animation$Mode:[I

    iget-object v7, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mMode:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 310
    move v1, v2

    goto :goto_0

    .line 77
    :pswitch_0
    move v1, v2

    .line 78
    goto :goto_0

    .line 82
    :pswitch_1
    mul-float v1, v2, v2

    .line 83
    goto :goto_0

    .line 86
    :pswitch_2
    const/high16 v6, -0x4080

    mul-float/2addr v6, v2

    const/high16 v7, 0x4000

    sub-float v7, v2, v7

    mul-float v1, v6, v7

    .line 87
    goto :goto_0

    .line 90
    :pswitch_3
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 91
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 92
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 96
    const/high16 v6, -0x4100

    const/high16 v7, 0x4000

    sub-float v7, v2, v7

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 97
    goto :goto_0

    .line 101
    :pswitch_4
    mul-float v6, v2, v2

    mul-float v1, v6, v2

    .line 102
    goto :goto_0

    .line 105
    :pswitch_5
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 106
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f80

    add-float v1, v6, v7

    .line 107
    goto :goto_0

    .line 110
    :pswitch_6
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 111
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 112
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    const/high16 v6, 0x4000

    sub-float/2addr v2, v6

    .line 116
    const/high16 v6, 0x3f00

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x4000

    add-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 117
    goto :goto_0

    .line 121
    :pswitch_7
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 122
    goto :goto_0

    .line 125
    :pswitch_8
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 126
    const/high16 v6, -0x4080

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 127
    goto/16 :goto_0

    .line 130
    :pswitch_9
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 131
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    .line 132
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 133
    goto/16 :goto_0

    .line 135
    :cond_3
    const/high16 v6, 0x4000

    sub-float/2addr v2, v6

    .line 136
    const/high16 v6, -0x4100

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x4000

    sub-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 137
    goto/16 :goto_0

    .line 141
    :pswitch_a
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 142
    goto/16 :goto_0

    .line 145
    :pswitch_b
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 146
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f80

    add-float v1, v6, v7

    .line 147
    goto/16 :goto_0

    .line 150
    :pswitch_c
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 151
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 152
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    mul-float v1, v6, v2

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_4
    const/high16 v6, 0x4000

    sub-float/2addr v2, v6

    .line 156
    const/high16 v6, 0x3f00

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x4000

    add-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 157
    goto/16 :goto_0

    .line 161
    :pswitch_d
    const-wide/high16 v6, -0x4010

    float-to-double v8, v2

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 162
    goto/16 :goto_0

    .line 165
    :pswitch_e
    float-to-double v6, v2

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 166
    goto/16 :goto_0

    .line 169
    :pswitch_f
    const-wide/high16 v6, -0x4020

    const-wide v8, 0x400921fb54442d18L

    float-to-double v10, v2

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 170
    goto/16 :goto_0

    .line 174
    :pswitch_10
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 175
    .local v5, t:I
    if-nez v5, :cond_5

    const/4 v1, 0x0

    .line 176
    :goto_1
    goto/16 :goto_0

    .line 175
    :cond_5
    const-wide/high16 v6, 0x4000

    const/high16 v8, 0x4120

    const/high16 v9, 0x3f80

    sub-float v9, v2, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_1

    .line 180
    .end local v5           #t:I
    :pswitch_11
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 181
    .restart local v5       #t:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    .line 182
    .local v0, d:I
    if-ne v5, v0, :cond_6

    const/high16 v1, 0x3f80

    .line 183
    :goto_2
    goto/16 :goto_0

    .line 182
    :cond_6
    const-wide/high16 v6, 0x4000

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v6, v6

    const/high16 v7, 0x3f80

    add-float v1, v6, v7

    goto :goto_2

    .line 187
    .end local v0           #d:I
    .end local v5           #t:I
    :pswitch_12
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 188
    .restart local v5       #t:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    .line 189
    .restart local v0       #d:I
    if-nez v5, :cond_7

    .line 190
    const/4 v1, 0x0

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_7
    if-ne v5, v0, :cond_8

    .line 194
    const/high16 v1, 0x3f80

    .line 195
    goto/16 :goto_0

    .line 197
    :cond_8
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 198
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_9

    .line 199
    const-wide/high16 v6, 0x3fe0

    const-wide/high16 v8, 0x4000

    const/high16 v10, 0x4120

    const/high16 v11, 0x3f80

    sub-float v11, v2, v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_9
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 203
    const-wide/high16 v6, 0x3fe0

    const-wide/high16 v8, 0x4000

    const/high16 v10, -0x3ee0

    mul-float/2addr v10, v2

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    neg-double v8, v8

    const-wide/high16 v10, 0x4000

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 204
    goto/16 :goto_0

    .line 209
    .end local v0           #d:I
    .end local v5           #t:I
    :pswitch_13
    const-wide/high16 v6, -0x4010

    const/high16 v8, 0x3f80

    mul-float v9, v2, v2

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 210
    goto/16 :goto_0

    .line 213
    :pswitch_14
    const-wide/high16 v6, -0x4010

    const/high16 v8, 0x3f80

    mul-float v9, v2, v2

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 214
    goto/16 :goto_0

    .line 217
    :pswitch_15
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 218
    const/high16 v6, 0x3f80

    mul-float v7, v2, v2

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 219
    goto/16 :goto_0

    .line 223
    :pswitch_16
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 224
    .restart local v5       #t:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    .line 225
    .restart local v0       #d:I
    int-to-float v6, v0

    const v7, 0x3e99999a

    mul-float v3, v6, v7

    .line 226
    .local v3, q:F
    const/high16 v6, 0x4080

    div-float v4, v3, v6

    .line 228
    .local v4, s:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v2, v6

    if-nez v6, :cond_a

    .line 229
    const/high16 v1, 0x3f80

    .line 230
    goto/16 :goto_0

    .line 233
    :cond_a
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 234
    const-wide/high16 v6, 0x4000

    const/high16 v8, 0x4120

    mul-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v8, v0

    mul-float/2addr v8, v2

    sub-float/2addr v8, v4

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L

    mul-double/2addr v8, v10

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    neg-double v6, v6

    double-to-float v1, v6

    .line 235
    goto/16 :goto_0

    .line 239
    .end local v0           #d:I
    .end local v3           #q:F
    .end local v4           #s:F
    .end local v5           #t:I
    :pswitch_17
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 240
    .restart local v5       #t:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    .line 241
    .restart local v0       #d:I
    int-to-float v6, v0

    const v7, 0x3ee66667

    mul-float v3, v6, v7

    .line 242
    .restart local v3       #q:F
    const/high16 v6, 0x4080

    div-float v4, v3, v6

    .line 244
    .restart local v4       #s:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v2, v6

    if-nez v6, :cond_b

    .line 245
    const/high16 v1, 0x3f80

    .line 246
    goto/16 :goto_0

    .line 249
    :cond_b
    const-wide/high16 v6, 0x4000

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v8, v0

    mul-float/2addr v8, v2

    sub-float/2addr v8, v4

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L

    mul-double/2addr v8, v10

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 250
    goto/16 :goto_0

    .line 254
    .end local v0           #d:I
    .end local v3           #q:F
    .end local v4           #s:F
    .end local v5           #t:I
    :pswitch_18
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getTime()I

    move-result v5

    .line 255
    .restart local v5       #t:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v6}, Lcom/mediatek/ngin3d/animation/Timeline;->getOriginalDuration()I

    move-result v0

    .line 256
    .restart local v0       #d:I
    int-to-float v6, v0

    const v7, 0x3ee66667

    mul-float v3, v6, v7

    .line 257
    .restart local v3       #q:F
    const/high16 v6, 0x4080

    div-float v4, v3, v6

    .line 258
    .restart local v4       #s:F
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 260
    const/high16 v6, 0x4000

    cmpl-float v6, v2, v6

    if-nez v6, :cond_c

    .line 261
    const/high16 v1, 0x3f80

    .line 262
    goto/16 :goto_0

    .line 265
    :cond_c
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_d

    .line 266
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 267
    const-wide/high16 v6, -0x4020

    const-wide/high16 v8, 0x4000

    const/high16 v10, 0x4120

    mul-float/2addr v10, v2

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    int-to-float v8, v0

    mul-float/2addr v8, v2

    sub-float/2addr v8, v4

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L

    mul-double/2addr v8, v10

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v1, v6

    .line 268
    goto/16 :goto_0

    .line 270
    :cond_d
    const-wide/high16 v6, 0x4000

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v8, v0

    mul-float/2addr v8, v2

    sub-float/2addr v8, v4

    float-to-double v8, v8

    const-wide v10, 0x401921fb54442d18L

    mul-double/2addr v8, v10

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 271
    goto/16 :goto_0

    .line 277
    .end local v0           #d:I
    .end local v3           #q:F
    .end local v4           #s:F
    .end local v5           #t:I
    :pswitch_19
    mul-float v6, v2, v2

    const v7, 0x402ce6b0

    mul-float/2addr v7, v2

    const v8, 0x3fd9cd60

    sub-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 278
    goto/16 :goto_0

    .line 280
    :pswitch_1a
    const/high16 v6, 0x3f80

    sub-float/2addr v2, v6

    .line 281
    mul-float v6, v2, v2

    const v7, 0x402ce6b0

    mul-float/2addr v7, v2

    const v8, 0x3fd9cd60

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f80

    add-float v1, v6, v7

    .line 282
    goto/16 :goto_0

    .line 284
    :pswitch_1b
    const/high16 v6, 0x4000

    mul-float/2addr v2, v6

    .line 285
    const v4, 0x402612ff

    .line 287
    .restart local v4       #s:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_e

    .line 288
    const/high16 v6, 0x3f00

    mul-float v7, v2, v2

    const/high16 v8, 0x3f80

    add-float/2addr v8, v4

    mul-float/2addr v8, v2

    sub-float/2addr v8, v4

    mul-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 289
    goto/16 :goto_0

    .line 291
    :cond_e
    const/high16 v6, 0x4000

    sub-float/2addr v2, v6

    .line 292
    const/high16 v6, 0x3f00

    mul-float v7, v2, v2

    const/high16 v8, 0x3f80

    add-float/2addr v8, v4

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    add-float/2addr v7, v8

    mul-float v1, v6, v7

    .line 293
    goto/16 :goto_0

    .line 297
    .end local v4           #s:F
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/mediatek/ngin3d/animation/Alpha;->easeInBounce(F)F

    move-result v1

    .line 298
    goto/16 :goto_0

    .line 300
    :pswitch_1d
    invoke-direct {p0, v2}, Lcom/mediatek/ngin3d/animation/Alpha;->easeOutBounce(F)F

    move-result v1

    .line 301
    goto/16 :goto_0

    .line 303
    :pswitch_1e
    const/high16 v6, 0x3f00

    cmpg-float v6, v2, v6

    if-gez v6, :cond_f

    .line 304
    const/high16 v6, 0x4000

    mul-float/2addr v6, v2

    invoke-direct {p0, v6}, Lcom/mediatek/ngin3d/animation/Alpha;->easeInBounce(F)F

    move-result v6

    const/high16 v7, 0x3f00

    mul-float v1, v6, v7

    goto/16 :goto_0

    .line 306
    :cond_f
    const/high16 v6, 0x4000

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/mediatek/ngin3d/animation/Alpha;->easeOutBounce(F)F

    move-result v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float v1, v6, v7

    .line 308
    goto/16 :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public final getMode()Lcom/mediatek/ngin3d/animation/Mode;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mMode:Lcom/mediatek/ngin3d/animation/Mode;

    return-object v0
.end method

.method public final getTimeline()Lcom/mediatek/ngin3d/animation/Timeline;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    return-object v0
.end method

.method public final removeListener(Lcom/mediatek/ngin3d/animation/Alpha$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method public final setMode(Lcom/mediatek/ngin3d/animation/Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mMode:Lcom/mediatek/ngin3d/animation/Mode;

    .line 341
    return-void
.end method

.method public final setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 2
    .parameter "timeline"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimelineListener:Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->removeListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimelineListener:Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    .line 352
    :cond_2
    if-eqz p1, :cond_0

    .line 353
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    .line 354
    new-instance v0, Lcom/mediatek/ngin3d/animation/Alpha$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ngin3d/animation/Alpha$1;-><init>(Lcom/mediatek/ngin3d/animation/Alpha;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimelineListener:Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    .line 388
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimeline:Lcom/mediatek/ngin3d/animation/Timeline;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/Alpha;->mTimelineListener:Lcom/mediatek/ngin3d/animation/Timeline$Listener;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Timeline;->addListener(Lcom/mediatek/ngin3d/animation/Timeline$Listener;)V

    goto :goto_0
.end method
