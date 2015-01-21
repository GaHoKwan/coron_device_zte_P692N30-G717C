.class public Lcom/sohu/inputmethod/ui/EditViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final a:[I

.field private static final b:[I


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

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

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

.field private a:Lawi;

.field private a:Laxt;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Z

.field private b:F

.field private b:I

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;

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
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:[I

    return-void

    .line 61
    :array_0
    .array-data 0x4
        0xc8t 0x1t 0x0t 0x0t
        0xc8t 0x1t 0x0t 0x0t
        0xc8t 0x1t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
    .end array-data

    .line 62
    :array_1
    .array-data 0x4
        0x1t 0x1t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->E:I

    .line 79
    iput v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->F:I

    .line 94
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    .line 96
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    .line 98
    iput v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    .line 99
    iput v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    .line 120
    new-instance v0, Lawj;

    invoke-direct {v0, p0}, Lawj;-><init>(Lcom/sohu/inputmethod/ui/EditViewContainer;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    .line 138
    iput-boolean v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    .line 143
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:F

    .line 145
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 607
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

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
    .line 611
    const/4 v1, -0x1

    .line 613
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 614
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 615
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 616
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

    .line 617
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 627
    :goto_1
    return v0

    .line 614
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 627
    goto :goto_1
.end method

.method private a(I)I
    .locals 0
    .parameter

    .prologue
    .line 631
    return p1
.end method

.method private a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    sget-object v1, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:[I

    aget v1, v1, p1

    invoke-static {v0, p2, v1}, Laxo;->a(Landroid/content/Context;II)I

    move-result p2

    .line 231
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    .line 236
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    int-to-float v0, v0

    sget-object v1, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:[I

    aget v1, v1, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------------------moffsetScale-------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:[I

    aget v0, v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------------------------------------mButtonAreaWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      mButtonAreaHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mOffsetScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 240
    return p2

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    goto :goto_0
.end method

.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 662
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correctRect----------------------rectWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    rectHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correctRect----------------------drawWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    drawHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 665
    sub-int v2, p1, v0

    sub-int v3, p2, v1

    if-le v2, v3, :cond_0

    .line 666
    mul-int/2addr v0, p2

    div-int/2addr v0, p1

    sub-int v0, v1, v0

    .line 667
    iget v1, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 668
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 674
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 675
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end--------correctRect----------------------rectWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    rectHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 678
    return-object p3

    .line 670
    :cond_0
    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    sub-int/2addr v0, v1

    .line 671
    iget v1, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 672
    iget v1, p3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 220
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 221
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    sget-object v2, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:[I

    aget v2, v2, p1

    invoke-static {v0, v1, v2}, Laxo;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 222
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    .line 223
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    int-to-float v0, v0

    sget-object v1, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:[I

    aget v1, v1, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    .line 224
    sget-object v0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:[I

    aget v0, v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------------------------------------mButtonAreaWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      mButtonAreaHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mOffsetScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1021
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1022
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1024
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 1025
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 729
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int v2, p2, v0

    .line 730
    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 732
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 733
    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------!!!!!!!!!---------------   xPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 737
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 738
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v3, p3, v0

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIII)V

    .line 741
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 742
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 743
    return-void

    .line 725
    :cond_0
    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lawi;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p2, p4

    add-int v4, p3, p5

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 685
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIIIIIIIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    add-int v4, p2, p4

    int-to-float v4, v4

    add-int v5, p3, p5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p9}, Lawi;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 698
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 700
    invoke-direct {p0, p8}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)[I

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background    --id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  -----rect left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   bottom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "      width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p9}, Lawi;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 706
    new-instance v4, Landroid/graphics/Rect;

    sub-int v0, p4, p6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    sub-int v1, p5, p7

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    sub-int v3, p4, p6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    add-int/2addr v3, p6

    sub-int v5, p5, p7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    add-int/2addr v5, p7

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 711
    invoke-direct {p0, p8}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;I)V

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image    --id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -----rect left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "      width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 792
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->E:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->F:I

    sub-int/2addr v3, v4

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 794
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)[I

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back    --id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  -----rect left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   bottom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "      width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 799
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    add-int v6, p3, v0

    .line 800
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 801
    new-instance v4, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    add-int/2addr v3, v6

    invoke-direct {v4, v0, v6, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 803
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;I)V

    .line 806
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 807
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v1, p5}, Lawi;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 808
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 809
    int-to-float v3, p2

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    int-to-float v4, v4

    sub-float v2, v4, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    int-to-double v3, v0

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    sub-int/2addr v0, v5

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    sub-double/2addr v5, v7

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    int-to-double v7, v0

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v5, v0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v0

    sget-object v4, Laxr;->e:[I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 812
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    if-eqz p2, :cond_0

    .line 636
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 637
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 638
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 639
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 641
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    if-eqz p2, :cond_0

    .line 645
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 651
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 652
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 653
    invoke-direct {p0, v0, v1, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 654
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 655
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 656
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 658
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->g()V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 546
    :pswitch_0
    iput p2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->U:I

    .line 547
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 551
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->U:I

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->g()V

    goto :goto_0

    .line 554
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lawe;Lawi;Laxt;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 445
    const-string v0, " set theme for function candidate view"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 446
    if-nez p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 447
    :cond_0
    iput-object p2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    .line 448
    iput-object p3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    .line 450
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    .line 451
    invoke-virtual {p1}, Lawe;->b()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------------- padding rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------------------------- margin rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 458
    invoke-virtual {p1}, Lawe;->a()Lawv;

    move-result-object v0

    .line 459
    iget v1, v0, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    .line 460
    iget v0, v0, Lawv;->a:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 461
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    .line 462
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    invoke-virtual {p1}, Lawe;->b()Lawv;

    move-result-object v1

    .line 467
    iget v1, v1, Lawv;->b:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    .line 468
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    .line 469
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 471
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->invalidate()V

    .line 473
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->requestLayout()V

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/ui/EditViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1302
    return-void
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 574
    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 578
    sget-object v0, Laxr;->i:[I

    .line 579
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    if-ne v1, p1, :cond_2

    .line 580
    :cond_0
    sget-object v0, Laxr;->g:[I

    .line 586
    :cond_1
    :goto_0
    return-object v0

    .line 583
    :cond_2
    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 584
    sget-object v0, Laxr;->e:[I

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 191
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    iget-object v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Laxo;->a(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    .line 193
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->Q:I

    .line 194
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

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          mShowXPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 195
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    .line 196
    return-void
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, -0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1073
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 1075
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1159
    :cond_1
    :goto_0
    return-void

    .line 1077
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v1, 0xf172

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1079
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aK:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aK:I

    goto :goto_0

    .line 1083
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v1, 0xf170

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1085
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aM:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aM:I

    goto :goto_0

    .line 1089
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v1, 0xf171

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1091
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aN:I

    goto :goto_0

    .line 1095
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const v1, 0xf173

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1097
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aL:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aL:I

    goto :goto_0

    .line 1101
    :pswitch_4
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1102
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    .line 1103
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x25

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1104
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cO:I

    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 1102
    goto :goto_1

    .line 1109
    :pswitch_5
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1112
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->l()V

    .line 1113
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->setSelectingState(Z)V

    .line 1121
    :goto_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cN:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cN:I

    .line 1122
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPhoneKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1123
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eJ:I

    goto/16 :goto_0

    .line 1115
    :cond_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eqz v0, :cond_4

    .line 1116
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->l()V

    .line 1117
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->setSelectingState(Z)V

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    goto :goto_2

    .line 1124
    :cond_5
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isQwertyKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eK:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eK:I

    goto/16 :goto_0

    .line 1131
    :pswitch_6
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x2b

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1133
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aJ:I

    goto/16 :goto_0

    .line 1138
    :pswitch_7
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x20

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1140
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eW:I

    goto/16 :goto_0

    .line 1145
    :pswitch_8
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x1e

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1147
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aH:I

    goto/16 :goto_0

    .line 1151
    :pswitch_9
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/16 v1, -0x1f

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(I[IZII)V

    .line 1153
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aI:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aI:I

    goto/16 :goto_0

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1030
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    .line 1032
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    invoke-virtual {v1, v5}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1033
    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    .line 1034
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1035
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triangle    -------rect left = "

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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int v2, p2, v0

    .line 748
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 752
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 753
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 757
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 758
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 762
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 763
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 765
    return-void
.end method

.method private b(Landroid/graphics/Canvas;IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lawi;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p2, p4

    add-int v4, p3, p5

    invoke-direct {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 691
    return-void
.end method

.method private b(Landroid/graphics/Canvas;IIIIZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 906
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v3, p3

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 908
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)[I

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 911
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    add-int v6, p2, v0

    .line 912
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 913
    new-instance v4, Landroid/graphics/Rect;

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    add-int/2addr v1, v6

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    invoke-direct {v4, v6, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 915
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;I)V

    .line 918
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 920
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    add-int/2addr v0, v6

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-double v3, p3

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v5, v0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)[I

    move-result-object v0

    sget-object v4, Laxr;->e:[I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 924
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private b(I)[I
    .locals 2
    .parameter

    .prologue
    .line 590
    sget-object v0, Laxr;->i:[I

    .line 591
    iget-boolean v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eqz v1, :cond_1

    .line 592
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 593
    :cond_0
    sget-object v0, Laxr;->e:[I

    .line 595
    :cond_1
    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 199
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    .line 201
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 202
    :goto_0
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 203
    sub-float/2addr v0, v5

    .line 204
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    goto :goto_0

    .line 208
    :cond_0
    :goto_1
    iget-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 209
    add-float/2addr v0, v5

    .line 210
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    goto :goto_1

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    sub-float/2addr v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:D

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 1040
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->J:I

    .line 1041
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->K:I

    .line 1043
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1045
    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;)V

    .line 1048
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;)V

    .line 1050
    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:I

    packed-switch v2, :pswitch_data_0

    .line 1070
    :goto_0
    return-void

    .line 1053
    :pswitch_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->j(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 1057
    :pswitch_1
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->f(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 1061
    :pswitch_2
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->g(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 1065
    :pswitch_3
    invoke-direct {p0, p1, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 770
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int v2, p2, v0

    .line 771
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int v3, p3, v0

    .line 772
    const/4 v4, 0x3

    const/16 v5, 0xb

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 775
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    add-int/2addr v0, v2

    .line 776
    invoke-direct {p0, p1, v0, v3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;II)V

    .line 779
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v1, v2

    add-int v6, v0, v1

    .line 780
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v7, v3, v0

    iget v8, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v9, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIII)V

    .line 783
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 784
    invoke-direct {p0, p1, v0, v3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;II)V

    .line 785
    return-void
.end method

.method private c(Landroid/graphics/Canvas;IIIIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->p:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lawi;

    invoke-virtual {v0, p5}, Lawi;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 961
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->p:I

    add-int/2addr v3, p3

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 963
    invoke-direct {p0, p4}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)[I

    move-result-object v2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;[ILandroid/graphics/Rect;)V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background    --id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  -----rect left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   bottom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "      width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/high16 v7, 0x4140

    const/high16 v6, 0x4080

    const/4 v5, 0x2

    const/high16 v4, 0x4200

    const/high16 v3, 0x4180

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------mKeyboardHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------mCandHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    .line 247
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->O:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 248
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 249
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    if-le v1, v2, :cond_1

    .line 253
    add-int/lit8 v0, v0, 0x1

    .line 254
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 255
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 257
    if-ne v0, v5, :cond_0

    .line 259
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    if-le v1, v2, :cond_2

    if-ne v0, v5, :cond_2

    .line 260
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)V

    .line 261
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 303
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b()V

    .line 307
    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_1
    return-void

    .line 265
    :cond_3
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->O:I

    if-ne v1, v5, :cond_2

    .line 266
    const/4 v0, 0x0

    .line 267
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->d:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 268
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 271
    :cond_4
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    if-le v1, v2, :cond_5

    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 273
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 274
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 275
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 284
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    if-le v1, v2, :cond_2

    .line 285
    if-ne v0, v5, :cond_8

    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_8

    .line 286
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)V

    .line 287
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 294
    :cond_6
    :goto_3
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    if-le v1, v2, :cond_2

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 296
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)V

    .line 297
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 299
    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 278
    :cond_7
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->d:I

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 279
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 282
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_4

    if-ne v0, v5, :cond_4

    goto/16 :goto_2

    .line 289
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 290
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)V

    .line 291
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ---------   mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 309
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:I

    .line 310
    const/high16 v0, 0x4204

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    .line 311
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c()V

    .line 312
    const/high16 v0, 0x4280

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    .line 313
    const/high16 v0, 0x4280

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    .line 314
    const/high16 v0, 0x4208

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    .line 315
    const/high16 v0, 0x4240

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    .line 316
    const/high16 v0, 0x42b8

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    .line 317
    const/high16 v0, 0x4280

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->p:I

    .line 318
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    .line 319
    const/high16 v0, 0x4190

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    .line 320
    const/high16 v0, 0x4160

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    .line 321
    const/high16 v0, 0x4190

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    .line 322
    const/high16 v0, 0x40a0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->u:I

    .line 324
    const/high16 v0, 0x4314

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    .line 325
    const/high16 v0, 0x4248

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    .line 326
    const/high16 v0, 0x4220

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    .line 327
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    .line 328
    const/high16 v0, 0x4150

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    .line 329
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    .line 330
    const/high16 v0, 0x4100

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    .line 331
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    .line 332
    const/high16 v0, 0x41b8

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    goto/16 :goto_1

    .line 335
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:I

    .line 336
    const/high16 v0, 0x4204

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    .line 337
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c()V

    .line 338
    const/high16 v0, 0x428c

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    .line 339
    const/high16 v0, 0x4278

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    .line 340
    const/high16 v0, 0x4208

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    .line 341
    const/high16 v0, 0x4240

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    .line 342
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    .line 343
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    .line 344
    const/high16 v0, 0x40c0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    .line 345
    const/high16 v0, 0x4110

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    .line 346
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->u:I

    .line 348
    const/high16 v0, 0x428c

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    .line 349
    const/high16 v0, 0x42ac

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    .line 350
    const/high16 v0, 0x4220

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    .line 351
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    .line 352
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    .line 353
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    .line 354
    const/high16 v0, 0x4130

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    .line 355
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    .line 356
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    .line 357
    const/high16 v0, 0x4268

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    .line 358
    const/high16 v0, 0x43d7

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    goto/16 :goto_1

    .line 361
    :pswitch_2
    iput v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:I

    .line 362
    const/high16 v0, 0x41d8

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    .line 363
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c()V

    .line 364
    const/high16 v0, 0x4298

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    .line 365
    const/high16 v0, 0x4220

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    .line 366
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    .line 367
    const/high16 v0, 0x41b0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    .line 368
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    .line 369
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    .line 370
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    .line 371
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    .line 372
    const/high16 v0, 0x40a0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->u:I

    .line 374
    const/high16 v0, 0x4298

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    .line 375
    const/high16 v0, 0x4270

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    .line 376
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->E:I

    .line 377
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->F:I

    .line 378
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    .line 379
    const/high16 v0, 0x41d0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    .line 380
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    .line 381
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    .line 382
    const/4 v0, 0x0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    .line 383
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    .line 384
    const/high16 v0, 0x40c0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    .line 385
    const/high16 v0, 0x422c

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    .line 386
    const/high16 v0, 0x43d7

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    goto/16 :goto_1

    .line 389
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:I

    .line 390
    const/high16 v0, 0x41d8

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->L:I

    .line 391
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c()V

    .line 392
    const/high16 v0, 0x4288

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    .line 393
    const/high16 v0, 0x4298

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    .line 394
    const/high16 v0, 0x4220

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    .line 395
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    .line 396
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    .line 397
    const/high16 v0, 0x4100

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    .line 398
    const/high16 v0, 0x4100

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    .line 399
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    .line 400
    const/high16 v0, 0x40a0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->u:I

    .line 402
    const/high16 v0, 0x42a0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    .line 403
    const/high16 v0, 0x4298

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    .line 404
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->x:I

    .line 405
    const/high16 v0, 0x41d0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->y:I

    .line 406
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    .line 407
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    .line 408
    const/high16 v0, 0x40c0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    .line 409
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    .line 410
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->D:I

    .line 411
    const/high16 v0, 0x4284

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    goto/16 :goto_1

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d(Landroid/graphics/Canvas;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 816
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int v2, p2, v0

    .line 817
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int v7, p3, v0

    .line 818
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->u:I

    sub-int v3, v7, v0

    const/4 v4, 0x3

    const/16 v5, 0xb

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 820
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 821
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int v3, v7, v0

    .line 822
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 826
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 827
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 831
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 832
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 836
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 837
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 839
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    invoke-virtual {v0}, Laxt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->a()Laxt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    invoke-virtual {v0}, Laxt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Laxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laxt;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    .line 426
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->g:I

    .line 429
    :cond_2
    return-void
.end method

.method private e(Landroid/graphics/Canvas;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    add-int v2, p2, v0

    .line 844
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    add-int v3, p3, v0

    .line 849
    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 852
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 853
    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 856
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 857
    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 860
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 861
    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------!!!!!!!!!---------------   xPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 865
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v6, v2, v0

    .line 866
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v7, v3, v0

    iget v8, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v9, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->H:I

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIII)V

    .line 869
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->A:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v2, v6, v0

    .line 870
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIZ)V

    .line 871
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    .line 433
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->d:I

    .line 434
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 435
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    int-to-float v0, v0

    const v1, 0x3f333333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->c:I

    .line 437
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    .line 438
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->e()V

    .line 439
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->d()V

    .line 440
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->J:I

    .line 441
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->h:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->K:I

    .line 442
    return-void
.end method

.method private f(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->e(Landroid/graphics/Canvas;II)V

    .line 879
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int/2addr v0, v1

    add-int v3, p3, v0

    .line 880
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v2, p2, v0

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 883
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    add-int/2addr v0, v3

    .line 884
    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->d(Landroid/graphics/Canvas;II)V

    .line 885
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 569
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->U:I

    .line 570
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    return-void
.end method

.method private g(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 890
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->e(Landroid/graphics/Canvas;II)V

    .line 893
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    add-int/2addr v0, v1

    add-int v3, p3, v0

    .line 894
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->i:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v2, p2, v0

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->G:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 897
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    add-int/2addr v0, v3

    .line 898
    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->d(Landroid/graphics/Canvas;II)V

    .line 899
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->U:I

    packed-switch v0, :pswitch_data_0

    .line 1194
    :goto_0
    :pswitch_0
    return-void

    .line 1177
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    goto :goto_0

    .line 1180
    :pswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    goto :goto_0

    .line 1183
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    goto :goto_0

    .line 1186
    :pswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    goto :goto_0

    .line 1189
    :pswitch_5
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    goto :goto_0

    .line 1175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private h(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->z:I

    add-int v2, p2, v0

    .line 929
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    add-int v3, p3, v0

    .line 930
    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIIIZ)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------!!!!!!!!!---------------   yPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 934
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 935
    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->v:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIII)V

    .line 937
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 940
    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIIIZ)V

    .line 948
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 949
    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIIIZ)V

    .line 952
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->w:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->C:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 953
    const/16 v4, 0xa

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIIIZ)V

    .line 954
    return-void

    .line 943
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->B:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 944
    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIIIZ)V

    goto :goto_0
.end method

.method private i(Landroid/graphics/Canvas;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int v3, p3, v0

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 982
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int v2, p2, v0

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int v3, v0, v1

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 988
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int v2, v0, v1

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int v3, v0, v1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c(Landroid/graphics/Canvas;IIIIZ)V

    .line 993
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int v2, v0, v1

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int v3, v0, v1

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 999
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->t:I

    add-int v3, v0, v1

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    iget v5, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->l:I

    iget v6, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    iget v7, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->n:I

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/graphics/Canvas;IIIIIIIIZ)V

    .line 1003
    return-void
.end method

.method private j(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1007
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->i(Landroid/graphics/Canvas;II)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dividing line  vertical -------------------------- xpos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 1010
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->k:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    add-int/2addr v0, v1

    add-int v2, p2, v0

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dividing line  vertical-------------- mDirectionMarginSX= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mDirectionWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mDirectionMarginLX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mSelectWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dividing line  vertical end-------------------------- xpos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Ljava/lang/String;)V

    .line 1013
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    add-int v3, p3, v0

    iget v4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->j:I

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->s:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(Landroid/graphics/Canvas;IIII)V

    .line 1015
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->I:I

    add-int/2addr v0, v2

    .line 1016
    invoke-direct {p0, p1, v0, p3}, Lcom/sohu/inputmethod/ui/EditViewContainer;->h(Landroid/graphics/Canvas;II)V

    .line 1017
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 562
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->U:I

    .line 563
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    .line 564
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    .line 565
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->Q:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 533
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->c(Landroid/graphics/Canvas;)V

    .line 534
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 480
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 481
    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->e:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->f:I

    if-eq v1, v2, :cond_1

    .line 482
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 493
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(I)I

    move-result v0

    .line 495
    if-ne v0, v2, :cond_2

    .line 496
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    if-eq v0, v2, :cond_1

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a()V

    .line 498
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->invalidate()V

    .line 500
    :cond_1
    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    .line 502
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Landroid/view/MotionEvent;I)V

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 526
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 506
    :pswitch_0
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    .line 507
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->invalidate()V

    goto :goto_1

    .line 510
    :pswitch_1
    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    if-eq v0, v1, :cond_3

    .line 511
    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    .line 512
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->invalidate()V

    goto :goto_1

    .line 516
    :pswitch_2
    if-eq v0, v2, :cond_3

    .line 517
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    .line 518
    iget v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->b(I)V

    .line 519
    iput v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->T:I

    .line 520
    iput v2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->S:I

    .line 521
    invoke-virtual {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->invalidate()V

    goto :goto_1

    .line 504
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
    .line 148
    iput p1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:I

    .line 149
    return-void
.end method

.method public setData(ZIII[I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    .line 158
    iput p2, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->M:I

    .line 159
    iput p3, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->N:I

    .line 160
    iput p4, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->P:I

    .line 161
    const/4 v0, 0x0

    aget v0, p5, v0

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->R:I

    .line 162
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->O:I

    .line 163
    invoke-direct {p0}, Lcom/sohu/inputmethod/ui/EditViewContainer;->f()V

    .line 164
    return-void
.end method

.method public setSelectingState(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1162
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Z

    if-eqz v0, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k()V

    .line 1172
    :cond_1
    :goto_0
    return-void

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1167
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 1168
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v2, v3, :cond_1

    .line 1169
    iget v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto :goto_0
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 153
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 183
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 184
    check-cast v0, Laxc;

    iget v1, p0, Lcom/sohu/inputmethod/ui/EditViewContainer;->a:I

    invoke-virtual {v0, v1}, Laxc;->a(I)Lawe;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Laxc;

    invoke-virtual {v0}, Laxc;->a()Lawi;

    move-result-object v0

    check-cast p1, Laxc;

    invoke-virtual {p1}, Laxc;->a()Laxt;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sohu/inputmethod/ui/EditViewContainer;->a(Lawe;Lawi;Laxt;)V

    .line 187
    :cond_0
    return-void
.end method
