.class public Lawk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/animation/Animation;

.field private a:Landroid/view/animation/Transformation;

.field private a:Ljava/lang/String;

.field public a:[Landroid/graphics/Bitmap;

.field private b:I

.field private b:Landroid/view/animation/Animation;

.field private c:I

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lawk;->a:Landroid/view/animation/Transformation;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lawk;->a:I

    .line 94
    iput-object p1, p0, Lawk;->a:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private a(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 288
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 289
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget v0, p0, Lawk;->b:I

    iget v1, p0, Lawk;->c:I

    iget v2, p0, Lawk;->b:I

    iget v3, p0, Lawk;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 292
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/animation/Animation;Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-object v0, p0, Lawk;->a:Landroid/view/animation/Transformation;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lawk;->a:Landroid/view/animation/Transformation;

    .line 367
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 368
    iget-object v2, p0, Lawk;->a:Landroid/view/animation/Transformation;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 369
    iget-object v1, p0, Lawk;->a:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, p3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 370
    iput-object v3, p0, Lawk;->a:Landroid/view/animation/Transformation;

    .line 371
    return v0
.end method


# virtual methods
.method public a(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 323
    if-eqz p1, :cond_0

    iget v0, p0, Lawk;->a:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lawk;->a:I

    .line 324
    :cond_0
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    iput v1, p0, Lawk;->b:I

    .line 106
    iput v1, p0, Lawk;->c:I

    .line 107
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_1
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_2
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v3, v0, v1

    .line 110
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lawk;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lawk;->c:I

    if-ne p2, v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 118
    :cond_0
    iput p1, p0, Lawk;->b:I

    .line 119
    iput p2, p0, Lawk;->c:I

    .line 120
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    :cond_1
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_2
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    .line 123
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    .line 125
    if-lez p1, :cond_3

    if-gtz p2, :cond_4

    .line 126
    :cond_3
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    .line 127
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    goto :goto_0

    .line 129
    :cond_4
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 130
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 207
    sparse-switch p1, :sswitch_data_0

    .line 260
    :goto_0
    iget-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    return-void

    .line 209
    :sswitch_0
    iget-object v0, p0, Lawk;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->a:Landroid/view/animation/Animation;

    .line 211
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->e:Landroid/view/animation/Animation;

    .line 213
    :cond_0
    iget-object v0, p0, Lawk;->a:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    .line 214
    iget-object v0, p0, Lawk;->e:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    goto :goto_0

    .line 217
    :sswitch_1
    iget-object v0, p0, Lawk;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->b:Landroid/view/animation/Animation;

    .line 219
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040015

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->f:Landroid/view/animation/Animation;

    .line 221
    :cond_1
    iget-object v0, p0, Lawk;->b:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    .line 222
    iget-object v0, p0, Lawk;->f:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    goto :goto_0

    .line 225
    :sswitch_2
    iget-object v0, p0, Lawk;->c:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->c:Landroid/view/animation/Animation;

    .line 227
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->g:Landroid/view/animation/Animation;

    .line 229
    :cond_2
    iget-object v0, p0, Lawk;->c:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    .line 230
    iget-object v0, p0, Lawk;->g:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    goto :goto_0

    .line 233
    :sswitch_3
    iget-object v0, p0, Lawk;->d:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->d:Landroid/view/animation/Animation;

    .line 235
    iget-object v0, p0, Lawk;->a:Landroid/content/Context;

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lawk;->h:Landroid/view/animation/Animation;

    .line 237
    :cond_3
    iget-object v0, p0, Lawk;->d:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    .line 238
    iget-object v0, p0, Lawk;->h:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x30 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lawk;->a:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public a(ZZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    .line 265
    if-eqz p1, :cond_1

    .line 266
    if-eqz p2, :cond_0

    .line 267
    const/4 v0, 0x3

    .line 278
    :goto_0
    invoke-virtual {p0, v0, p3}, Lawk;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 279
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 272
    :cond_1
    if-eqz p2, :cond_2

    .line 273
    const/16 v0, 0x30

    goto :goto_0

    .line 275
    :cond_2
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aget-object v0, v0, v1

    .line 335
    if-nez v0, :cond_0

    .line 341
    :goto_0
    return v3

    .line 338
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    invoke-direct {p0, v0}, Lawk;->a(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    invoke-direct {p0, v0}, Lawk;->a(Landroid/view/animation/Animation;)V

    .line 284
    return-void
.end method

.method public b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    iget v0, p0, Lawk;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lawk;->c:I

    if-eq p2, v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    if-lez p1, :cond_1

    if-gtz p2, :cond_3

    .line 140
    :cond_1
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aput-object v2, v0, v1

    .line 152
    :cond_2
    :goto_0
    iput p1, p0, Lawk;->b:I

    .line 153
    iput p2, p0, Lawk;->c:I

    .line 154
    return-void

    .line 142
    :cond_3
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 146
    :cond_4
    if-lez p1, :cond_5

    if-gtz p2, :cond_6

    .line 147
    :cond_5
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    aput-object v2, v0, v1

    goto :goto_0

    .line 149
    :cond_6
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v1, p0, Lawk;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public b(Landroid/graphics/Canvas;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 346
    iget-object v1, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v2, p0, Lawk;->a:I

    aget-object v1, v1, v2

    .line 347
    iget-object v2, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    iget v3, p0, Lawk;->a:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    .line 348
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    iget-object v3, p0, Lawk;->j:Landroid/view/animation/Animation;

    if-eqz v3, :cond_2

    .line 353
    iget-object v3, p0, Lawk;->j:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v3, v2}, Lawk;->a(Landroid/graphics/Canvas;Landroid/view/animation/Animation;Landroid/graphics/Bitmap;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 355
    :cond_2
    iget-object v2, p0, Lawk;->i:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3

    .line 356
    iget-object v2, p0, Lawk;->i:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v2, v1}, Lawk;->a(Landroid/graphics/Canvas;Landroid/view/animation/Animation;Landroid/graphics/Bitmap;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 358
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lawk;->i:Landroid/view/animation/Animation;

    iput-object v0, p0, Lawk;->j:Landroid/view/animation/Animation;

    .line 297
    iput-object v0, p0, Lawk;->a:Landroid/view/animation/Animation;

    .line 299
    iput-object v0, p0, Lawk;->b:Landroid/view/animation/Animation;

    .line 301
    iput-object v0, p0, Lawk;->c:Landroid/view/animation/Animation;

    .line 303
    iput-object v0, p0, Lawk;->d:Landroid/view/animation/Animation;

    .line 305
    iput-object v0, p0, Lawk;->e:Landroid/view/animation/Animation;

    .line 307
    iput-object v0, p0, Lawk;->f:Landroid/view/animation/Animation;

    .line 309
    iput-object v0, p0, Lawk;->g:Landroid/view/animation/Animation;

    .line 311
    iput-object v0, p0, Lawk;->h:Landroid/view/animation/Animation;

    .line 320
    return-void
.end method

.method public c(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 159
    iget v0, p0, Lawk;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lawk;->c:I

    if-eq p2, v0, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    if-lez p1, :cond_1

    if-gtz p2, :cond_6

    .line 162
    :cond_1
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v4, v0, v2

    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_b

    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 176
    iget v0, p0, Lawk;->b:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lawk;->c:I

    if-eq p2, v0, :cond_5

    .line 177
    :cond_3
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    if-lez p1, :cond_4

    if-gtz p2, :cond_a

    .line 179
    :cond_4
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v4, v0, v3

    .line 191
    :cond_5
    :goto_1
    iput p1, p0, Lawk;->b:I

    .line 192
    iput p2, p0, Lawk;->c:I

    .line 203
    return-void

    .line 164
    :cond_6
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 168
    :cond_7
    if-lez p1, :cond_8

    if-gtz p2, :cond_9

    .line 169
    :cond_8
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v4, v0, v2

    goto :goto_0

    .line 171
    :cond_9
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 181
    :cond_a
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1

    .line 185
    :cond_b
    if-lez p1, :cond_c

    if-gtz p2, :cond_d

    .line 186
    :cond_c
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aput-object v4, v0, v3

    goto :goto_1

    .line 188
    :cond_d
    iget-object v0, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1
.end method

.method public d()V
    .locals 3

    .prologue
    .line 328
    iget v0, p0, Lawk;->a:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    .line 329
    iget-object v1, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    :cond_0
    iget-object v1, p0, Lawk;->a:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 331
    return-void
.end method
