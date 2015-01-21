.class public Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/RectF;

.field a:Landroid/os/Handler;

.field private a:Landroid/widget/ImageView;

.field private a:Ljava/lang/Runnable;

.field private a:Ltm;

.field private b:F

.field private b:I

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lvd;

    invoke-direct {v0, p0}, Lvd;-><init>(Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    .line 88
    new-instance v0, Lve;

    invoke-direct {v0, p0}, Lve;-><init>(Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    .line 97
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e()V

    .line 98
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 307
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    goto :goto_0

    .line 310
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 212
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    const/high16 v2, -0x3ccc

    const/high16 v3, 0x43b4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    return-void

    .line 320
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 321
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    .line 219
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    const/high16 v0, -0x3ccc

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    const/high16 v0, 0x43b4

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 223
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->g:I

    if-ne v0, v1, :cond_1

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ltm;

    invoke-virtual {v0}, Ltm;->f()V

    .line 226
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 330
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 235
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 236
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    .line 237
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    const/high16 v0, -0x3ccc

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    const/high16 v0, 0x43b4

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    int-to-float v3, v3

    iget v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:F

    mul-float/2addr v3, v5

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 238
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    if-nez v0, :cond_1

    .line 239
    iput v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_0

    .line 346
    :goto_0
    :pswitch_0
    return-void

    .line 342
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 343
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ltm;

    invoke-virtual {v0}, Ltm;->h()V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x3ccc

    .line 247
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 249
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c:F

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 253
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->k:I

    if-ne v0, v1, :cond_1

    .line 254
    const/4 v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 255
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ltm;

    invoke-virtual {v0}, Ltm;->h()V

    .line 256
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    .line 261
    :goto_1
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/high16 v2, 0x43b4

    const/4 v1, 0x0

    .line 132
    iput v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 133
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->g:I

    .line 134
    iput v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    .line 135
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->g:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:F

    .line 137
    iput v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->i:I

    .line 138
    iput v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    .line 139
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->i:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:F

    .line 141
    const/16 v0, 0x258

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->k:I

    .line 142
    iput v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    .line 143
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->k:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c:F

    .line 145
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f()V

    .line 146
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->g()V

    .line 148
    return-void
.end method

.method private e(I)V
    .locals 0
    .parameter

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 355
    :pswitch_0
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    const v1, -0xbfbebe

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    return-void
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0200a1

    .line 373
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 374
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    .line 375
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    :goto_0
    return-void

    .line 379
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    .line 174
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40e0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    sget v1, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 158
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->h:I

    .line 159
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->j:I

    .line 160
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->l:I

    .line 161
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    .line 162
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 359
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    .line 360
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    .line 361
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 362
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 367
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 370
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 395
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    :pswitch_0
    return-void

    .line 399
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b(I)V

    .line 400
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    goto :goto_0

    .line 403
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d(I)V

    .line 404
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    goto :goto_0

    .line 407
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c(I)V

    .line 408
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    goto :goto_0

    .line 411
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e(I)V

    .line 412
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    .line 185
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    .line 188
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 193
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 201
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 280
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 301
    :goto_0
    return v2

    .line 281
    :cond_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f(I)V

    .line 283
    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->f:I

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->invalidate()V

    goto :goto_0

    .line 285
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a(I)V

    goto :goto_1

    .line 288
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b(I)V

    goto :goto_1

    .line 291
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c(I)V

    goto :goto_1

    .line 294
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d(I)V

    goto :goto_1

    .line 297
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e(I)V

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setService(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Ltm;

    .line 129
    return-void
.end method

.method public setViewPositions(D)V
    .locals 6
    .parameter

    .prologue
    .line 110
    const-wide v0, 0x3fe25b9efd4e25baL

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    .line 111
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setMeasuredDimension(II)V

    .line 112
    const-wide v0, 0x3fa02b1da46102b2L

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:I

    .line 113
    const-wide v0, 0x3f958ed2308158edL

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c:I

    .line 114
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    const-wide v0, 0x3fa999999999999aL

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    .line 117
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    iput v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    .line 119
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    iget v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a:I

    iget v5, p0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->e:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    return-void
.end method
