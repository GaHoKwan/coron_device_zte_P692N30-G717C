.class public Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static f:I

.field private static g:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private a:D

.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field a:Landroid/os/Handler;

.field private a:Landroid/util/SparseArray;

.field private a:Laxk;

.field private a:Laxt;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Z

.field private a:[I

.field private b:F

.field private b:I

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;

.field private b:Z

.field private c:F

.field private c:I

.field private d:I

.field private e:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x1c8

    sput v0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f:I

    .line 66
    const/16 v0, 0x101

    sput v0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 100
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    .line 102
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    .line 105
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    .line 106
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    .line 121
    new-instance v0, Laxg;

    invoke-direct {v0, p0}, Laxg;-><init>(Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    .line 139
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    .line 140
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:F

    .line 141
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 503
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method private a(FF)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 539
    const/4 v1, -0x1

    .line 540
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 541
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 542
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 543
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 555
    :goto_1
    return v0

    .line 541
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 555
    goto :goto_1
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 199
    .line 200
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return v0

    .line 206
    :pswitch_1
    const/4 v0, 0x2

    .line 207
    goto :goto_0

    .line 211
    :pswitch_2
    const/4 v0, 0x3

    .line 212
    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 565
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 566
    sub-int v2, p1, v0

    sub-int v3, p2, v1

    if-le v2, v3, :cond_0

    .line 567
    mul-int/2addr v0, p2

    div-int/2addr v0, p1

    sub-int v0, v1, v0

    .line 568
    iget v1, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 569
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 575
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 576
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 577
    return-object p3

    .line 571
    :cond_0
    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    sub-int/2addr v0, v1

    .line 572
    iget v1, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 573
    iget v1, p3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;)Lcom/sohu/inputmethod/sogou/SogouIME;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 221
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    .line 223
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 224
    :goto_0
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 225
    sub-float/2addr v0, v5

    .line 226
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    goto :goto_0

    .line 230
    :cond_0
    :goto_1
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 231
    add-float/2addr v0, v5

    .line 232
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    goto :goto_1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    sub-float/2addr v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 236
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    return-void
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 267
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    if-gt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v0, v0, v3

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 269
    iput-boolean v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!!!!!-----------------------------------mKeyboardHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 287
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f()V

    .line 288
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c()V

    .line 289
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----mIsNormalDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------------ mTriangleHeight =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---------   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 292
    return-void

    .line 272
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->i:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->G:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    sub-int/2addr v0, v1

    .line 273
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()I

    move-result v1

    sub-int v1, p1, v1

    if-gt v1, v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v1, v1, v4

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 275
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    .line 285
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!------------------------mkeyboardHeight = +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----------upHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    if-lt v1, v0, :cond_2

    .line 278
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 279
    iput-boolean v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    goto :goto_1

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v1, v1, v4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 282
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    goto :goto_1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 729
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 730
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background    -------rect left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 736
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 641
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 643
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    add-int v2, v0, v1

    const/4 v4, 0x2

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 645
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    mul-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    const/4 v4, 0x3

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 646
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 602
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p2

    int-to-float v4, p3

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    add-int/2addr v5, p2

    int-to-float v5, v5

    iget v6, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    invoke-virtual {v0, p5}, Laxk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 606
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v4, p3

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 608
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)[I

    move-result-object v3

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 612
    if-nez p5, :cond_3

    .line 613
    const/4 v0, 0x1

    .line 614
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I)I

    move-result v2

    .line 616
    if-eq v2, v1, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 620
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    invoke-virtual {v1, v0}, Laxk;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 621
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->x:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->x:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    add-int/2addr v5, p3

    iget v6, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 625
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(I)[I

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 628
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    invoke-virtual {v0, p5}, Laxk;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 630
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------mImageAreaWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mImageAreaHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "      mImageMarginY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     mImageWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     mImageHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    mTextHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------mFmiCandidates.top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     mFmiCandidates.bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 634
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 635
    int-to-float v3, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    int-to-float v4, v4

    sub-float v0, v4, v0

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    int-to-float v0, p3

    add-float/2addr v2, v0

    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(I)[I

    move-result-object v0

    sget-object v4, Laxr;->e:[I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 637
    return-void

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    move v0, p5

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 702
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    invoke-virtual {v1, p4}, Laxk;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 703
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    invoke-virtual {v2, p4}, Laxk;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 706
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 707
    invoke-direct {p0, p3}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 708
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 709
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    if-eq p4, v2, :cond_0

    const/16 v2, 0x9

    if-ne p4, v2, :cond_1

    .line 711
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lawh;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 716
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 717
    iget-object v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v3

    double-to-int v3, v3

    .line 718
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    .line 719
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    int-to-double v3, v3

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(Landroid/graphics/Paint;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-int v3, v3

    .line 720
    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 723
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 724
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 725
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    if-eqz p2, :cond_0

    .line 582
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 583
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 584
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 587
    :cond_0
    return-void
.end method

.method private a(Lawe;Laxk;Laxt;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 393
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 394
    :cond_0
    iput-object p2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    .line 395
    iput-object p3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    .line 397
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    .line 398
    invoke-virtual {p1}, Lawe;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    .line 403
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 405
    invoke-virtual {p1}, Lawe;->a()Lawv;

    move-result-object v0

    .line 406
    iget v1, v0, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->e:I

    .line 407
    iget v0, v0, Lawv;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 408
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    .line 409
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 411
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 413
    invoke-virtual {p1}, Lawe;->b()Lawv;

    move-result-object v1

    .line 414
    iget v1, v1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    .line 415
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    .line 416
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 418
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->invalidate()V

    .line 421
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->requestLayout()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    return-void
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 514
    const/4 v1, 0x0

    .line 515
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 535
    :cond_1
    :goto_0
    return v0

    .line 517
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 521
    :pswitch_1
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 525
    :pswitch_2
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 529
    :pswitch_3
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 484
    sget-object v0, Laxr;->i:[I

    .line 485
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    if-ne v1, p1, :cond_2

    .line 486
    :cond_0
    sget-object v0, Laxr;->g:[I

    .line 489
    :cond_1
    :goto_0
    return-object v0

    .line 488
    :cond_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Laxr;->e:[I

    goto :goto_0
.end method

.method private b(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 782
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v0, v0

    return-wide v0
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------------correct---------------iiiiiiiiiiiiiii --------------------------   i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 560
    return p1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 243
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->l:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Laxo;->a(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 245
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->E:I

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------ssssssssss   ---------triangleXPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      mTriangleXPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          mShowXPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 247
    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    .line 248
    return-void
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 786
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Z

    if-nez v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 788
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()V

    .line 789
    if-ne p1, v3, :cond_1

    .line 790
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gi:I

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    if-ne p1, v4, :cond_0

    .line 792
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gl:I

    goto :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 798
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 799
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->w()V

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 802
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 804
    :pswitch_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 805
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 806
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 812
    :pswitch_1
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 813
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 814
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 820
    :pswitch_2
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 821
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 822
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cX:I

    goto :goto_0

    .line 829
    :pswitch_3
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 830
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 831
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cY:I

    goto :goto_0

    .line 838
    :pswitch_4
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 839
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 840
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 846
    :pswitch_5
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 847
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 848
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    iput v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    .line 850
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-ne v0, v2, :cond_4

    .line 851
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gg:I

    goto/16 :goto_0

    .line 852
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gj:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gj:I

    goto/16 :goto_0

    .line 857
    :pswitch_6
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 858
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 859
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 860
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    .line 861
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-ne v0, v2, :cond_5

    .line 862
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gh:I

    goto/16 :goto_0

    .line 863
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->gk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->gk:I

    goto/16 :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 739
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    .line 740
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 741
    :goto_0
    iget-boolean v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    invoke-virtual {v3, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 743
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->l:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->l:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    add-int/2addr v5, v0

    invoke-direct {v3, v4, v0, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 744
    sget-object v0, Laxr;->i:[I

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triangle    -------rect left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 746
    return-void

    .line 740
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    sub-int/2addr v0, v3

    goto/16 :goto_0

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 650
    const/4 v5, 0x3

    .line 651
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v5, v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 653
    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 655
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d(Landroid/graphics/Canvas;II)V

    .line 656
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    if-eqz p2, :cond_0

    .line 591
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 592
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 593
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 594
    invoke-direct {p0, v0, v1, p4}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 595
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 596
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 597
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 599
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)[I
    .locals 2
    .parameter

    .prologue
    .line 493
    sget-object v0, Laxr;->i:[I

    .line 494
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    if-ne v1, p1, :cond_2

    .line 495
    :cond_0
    sget-object v0, Laxr;->e:[I

    .line 498
    :cond_1
    :goto_0
    return-object v0

    .line 497
    :cond_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Laxr;->e:[I

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int v0, v1, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    .line 252
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    int-to-float v0, v0

    sget v1, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------------moffsetScale-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 254
    sget v0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------------------------------------mButtonAreaWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      mButtonAreaHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mOffsetScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 256
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 749
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->t:I

    .line 750
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->u:I

    .line 752
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 754
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;)V

    .line 757
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(Landroid/graphics/Canvas;)V

    .line 759
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:I

    packed-switch v2, :pswitch_data_0

    .line 778
    :goto_0
    return-void

    .line 761
    :pswitch_0
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    add-int/2addr v0, v2

    .line 762
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    add-int/2addr v1, v2

    .line 763
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 766
    :pswitch_1
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    add-int/2addr v0, v2

    .line 767
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    add-int/2addr v1, v2

    .line 768
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 771
    :pswitch_2
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    add-int/2addr v0, v2

    .line 772
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    add-int/2addr v1, v2

    .line 773
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 660
    .line 661
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 663
    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 665
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    add-int v2, v0, v1

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 667
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    mul-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    const/4 v4, 0x3

    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 669
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d(Landroid/graphics/Canvas;II)V

    .line 670
    return-void

    :cond_0
    move v5, v4

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    .line 260
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    int-to-float v0, v0

    sget v1, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------------moffsetScale-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 262
    sget v0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------------------------------------mButtonAreaWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      mButtonAreaHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mOffsetScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private d(Landroid/graphics/Canvas;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x6

    const/4 v3, 0x5

    const/4 v6, 0x0

    .line 674
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxk;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Laxk;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 675
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    iget v7, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    add-int/2addr v5, v7

    invoke-direct {v1, p2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 676
    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0, v6}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 678
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 680
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 684
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    add-int/2addr v4, v5

    invoke-direct {v2, p2, v0, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 685
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-float v5, v5

    iget v7, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    add-int/2addr v7, p3

    iget v8, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v0, v1, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 686
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    const/16 v4, 0x8

    .line 688
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    const/16 v4, 0xa

    .line 690
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 691
    new-instance v2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    add-int/2addr v3, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 692
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    add-int/2addr v5, p3

    iget v7, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 693
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    const/16 v4, 0x9

    .line 695
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    const/16 v4, 0xb

    .line 697
    :cond_2
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 698
    return-void

    :cond_3
    move v5, v6

    .line 697
    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------mKeyboardHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------mCandHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()V

    .line 298
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    .line 299
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------   ---------   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->C:I

    if-ne v0, v3, :cond_4

    .line 302
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    if-le v0, v1, :cond_3

    .line 303
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    .line 304
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f()V

    .line 305
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    .line 306
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->i:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->G:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    sub-int/2addr v0, v1

    .line 307
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_1

    .line 308
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    if-le v1, v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    .line 309
    :cond_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)V

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----mIsNormalDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------------ mTriangleHeight =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---------   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    .line 322
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b()V

    .line 324
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:I

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a()V

    .line 362
    return-void

    .line 314
    :cond_3
    iput-boolean v3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----mIsNormalDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------------ mTriangleHeight =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---------   mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 318
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->i:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->G:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 319
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Laxo;->b(Landroid/content/Context;I)I

    move-result v0

    .line 320
    :cond_5
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)V

    goto :goto_0

    .line 326
    :pswitch_0
    invoke-static {}, Laxj;->a()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    .line 327
    invoke-static {}, Laxj;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    .line 328
    invoke-static {}, Laxj;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    .line 329
    invoke-static {}, Laxj;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    .line 330
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->x:I

    .line 331
    invoke-static {}, Laxj;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    .line 332
    invoke-static {}, Laxj;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    .line 333
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    .line 334
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    goto/16 :goto_1

    .line 337
    :pswitch_1
    invoke-static {}, Laxi;->a()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    .line 338
    invoke-static {}, Laxi;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    .line 339
    invoke-static {}, Laxi;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    .line 340
    invoke-static {}, Laxi;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    .line 341
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->x:I

    .line 342
    invoke-static {}, Laxi;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    .line 343
    invoke-static {}, Laxi;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    .line 344
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    .line 345
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    goto/16 :goto_1

    .line 348
    :pswitch_2
    invoke-static {}, Laxh;->a()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    .line 349
    invoke-static {}, Laxh;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    .line 350
    invoke-static {}, Laxh;->c()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    .line 351
    invoke-static {}, Laxh;->d()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->s:I

    .line 352
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->r:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->x:I

    .line 353
    invoke-static {}, Laxh;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->y:I

    .line 354
    invoke-static {}, Laxh;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    .line 355
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->n:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->p:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->v:I

    .line 356
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->o:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->q:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->w:I

    goto/16 :goto_1

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    if-eqz v0, :cond_0

    .line 367
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 369
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->l:I

    .line 372
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Laxt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    .line 377
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->i:I

    .line 378
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 379
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    int-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    .line 380
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    invoke-static {v0, v1}, Laxo;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->h:I

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->f()V

    .line 383
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->e()V

    .line 384
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->t:I

    .line 385
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->m:I

    :goto_0
    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->u:I

    .line 386
    const/high16 v0, 0x4302

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->H:I

    .line 387
    const/high16 v0, 0x4220

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->I:I

    .line 388
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->z:I

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:F

    .line 389
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    return v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->E:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c(Landroid/graphics/Canvas;)V

    .line 481
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 428
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 429
    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->j:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->k:I

    if-eq v1, v2, :cond_1

    .line 430
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 441
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(I)I

    move-result v0

    .line 442
    if-ne v0, v2, :cond_2

    .line 443
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    if-eq v0, v2, :cond_1

    .line 444
    :cond_0
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    .line 445
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    .line 446
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->invalidate()V

    .line 448
    :cond_1
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    .line 451
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 473
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 453
    :pswitch_0
    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    .line 454
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->invalidate()V

    goto :goto_1

    .line 457
    :pswitch_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    if-eq v0, v1, :cond_3

    .line 458
    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    .line 459
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->invalidate()V

    goto :goto_1

    .line 463
    :pswitch_2
    if-eq v0, v2, :cond_3

    .line 464
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    .line 465
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b(I)V

    .line 466
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->K:I

    .line 467
    iput v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->J:I

    .line 468
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->invalidate()V

    goto :goto_1

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:I

    .line 145
    return-void
.end method

.method public setData(IIII[II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 152
    iput p1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Z

    .line 154
    invoke-static {p1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isAlphabetMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    .line 156
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->d:I

    .line 159
    iput p2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->A:I

    .line 160
    iput p3, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->B:I

    .line 161
    iput p4, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->D:I

    .line 162
    iput-object p5, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:[I

    .line 163
    iput p6, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->G:I

    .line 164
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->F:I

    .line 165
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->C:I

    .line 166
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:Z

    .line 167
    iget v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->c:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->b:I

    .line 168
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->g()V

    .line 169
    return-void
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 149
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 193
    check-cast v0, Laxc;

    iget v1, p0, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a:I

    invoke-virtual {v0, v1}, Laxc;->a(I)Lawe;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Laxc;

    invoke-virtual {v0}, Laxc;->a()Laxk;

    move-result-object v0

    check-cast p1, Laxc;

    invoke-virtual {p1}, Laxc;->a()Laxt;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sohu/inputmethod/ui/KeyboardSwitchContainer;->a(Lawe;Laxk;Laxt;)V

    .line 196
    :cond_0
    return-void
.end method
