.class public Lcom/sohu/inputmethod/platform/PlatformView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static a:J

.field private static final a:Landroid/graphics/RectF;

.field public static a:Landroid/util/SparseArray;

.field private static final a:[J

.field private static final b:Landroid/graphics/RectF;


# instance fields
.field private a:D

.field private a:F

.field public a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field a:Landroid/os/Handler;

.field private a:Landroid/os/Vibrator;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/HashMap;

.field private a:Z

.field private b:F

.field public b:I

.field private b:Landroid/graphics/Rect;

.field private b:Landroid/util/SparseArray;

.field private b:Z

.field private c:I

.field private c:Landroid/graphics/Rect;

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3d4ccccd

    const/4 v3, 0x0

    const v2, 0x3ca3d70a

    .line 95
    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:J

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:[J

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/RectF;

    return-void

    .line 110
    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 61
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    .line 62
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    .line 63
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->k:I

    .line 64
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    .line 66
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Z

    .line 68
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 69
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 75
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    .line 77
    const/16 v0, 0x4b

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->n:I

    .line 78
    const/16 v0, 0x38

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->o:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->p:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->q:I

    .line 81
    const/16 v0, 0x13

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->r:I

    .line 82
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:F

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Landroid/graphics/Rect;

    .line 93
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    .line 94
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    .line 127
    new-instance v0, Lzb;

    invoke-direct {v0, p0}, Lzb;-><init>(Lcom/sohu/inputmethod/platform/PlatformView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 61
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    .line 62
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    .line 63
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->k:I

    .line 64
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    .line 66
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Z

    .line 68
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 69
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 75
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    .line 77
    const/16 v0, 0x4b

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->n:I

    .line 78
    const/16 v0, 0x38

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->o:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->p:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->q:I

    .line 81
    const/16 v0, 0x13

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->r:I

    .line 82
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:F

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Landroid/graphics/Rect;

    .line 93
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    .line 94
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    .line 127
    new-instance v0, Lzb;

    invoke-direct {v0, p0}, Lzb;-><init>(Lcom/sohu/inputmethod/platform/PlatformView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    .line 155
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 328
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method private a(FF)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 460
    .line 461
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 462
    const/4 v0, 0x0

    move v2, v0

    move v1, v3

    :goto_0
    if-ge v2, v4, :cond_4

    .line 463
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 464
    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_0

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_0

    iget v5, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, p2

    if-gtz v5, :cond_0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    if-ne v1, v3, :cond_1

    move v1, v0

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 468
    :cond_1
    iget-boolean v5, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    if-eqz v5, :cond_3

    .line 469
    if-lt v1, v0, :cond_2

    move v0, v1

    :cond_2
    move v1, v0

    goto :goto_1

    .line 470
    :cond_3
    if-le v1, v0, :cond_0

    move v1, v0

    goto :goto_1

    .line 488
    :cond_4
    return v1
.end method

.method private a(Lxq;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 715
    invoke-virtual {p1}, Lxq;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    invoke-virtual {p1}, Lxq;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 717
    iget-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    if-eqz v1, :cond_2

    .line 722
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    invoke-virtual {p1}, Lxq;->a()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 719
    iget-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    if-nez v1, :cond_0

    .line 722
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 808
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 809
    sub-int v2, p1, v0

    sub-int v3, p2, v1

    if-le v2, v3, :cond_0

    .line 810
    mul-int/2addr v0, p2

    div-int/2addr v0, p1

    sub-int v0, v1, v0

    .line 811
    iget v1, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 812
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 818
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 819
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 820
    return-object p3

    .line 814
    :cond_0
    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    sub-int/2addr v0, v1

    .line 815
    iget v1, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 816
    iget v1, p3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    if-eqz p2, :cond_0

    .line 795
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 796
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 797
    invoke-direct {p0, v0, v1, p3}, Lcom/sohu/inputmethod/platform/PlatformView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 798
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 799
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 800
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 803
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 774
    :cond_0
    :goto_0
    return-object v0

    .line 763
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 764
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 765
    invoke-direct {p0, v0, v1, p4}, Lcom/sohu/inputmethod/platform/PlatformView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 766
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 767
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 768
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    if-eqz p3, :cond_0

    .line 770
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 771
    invoke-static {p3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 772
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private a(Lxq;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1160
    if-nez p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-object v0

    .line 1162
    :cond_1
    invoke-virtual {p1}, Lxq;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lxq;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p1}, Lxq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1164
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1173
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1169
    :cond_3
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->b(Lxq;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1170
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lxq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {p1}, Lxq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 747
    if-nez p1, :cond_1

    move-object p1, v0

    .line 758
    :cond_0
    :goto_0
    return-object p1

    .line 748
    :cond_1
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 749
    cmpg-float v1, v2, p2

    if-ltz v1, :cond_0

    .line 750
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 751
    :goto_1
    cmpl-float v3, v2, p2

    if-lez v3, :cond_2

    .line 752
    cmpg-float v2, v2, v4

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 756
    :cond_2
    if-lez v1, :cond_4

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 754
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 758
    goto :goto_0
.end method

.method private a(Lxq;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1197
    if-nez p1, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-object v0

    .line 1199
    :cond_1
    invoke-virtual {p1}, Lxq;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1200
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p1}, Lxq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1201
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1207
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0464

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1203
    :cond_3
    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1204
    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lxq;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 169
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 172
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 173
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v0, Lxq;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 178
    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->k(I)V

    .line 933
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    if-eqz v0, :cond_4

    .line 934
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge p1, v0, :cond_2

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    .line 943
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    invoke-virtual {v0}, Lxq;->a()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v1, :cond_3

    .line 945
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Ljava/lang/String;)V

    .line 947
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    invoke-virtual {v0}, Lxq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/lang/String;

    goto :goto_0

    .line 950
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge p1, v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 952
    if-eqz v0, :cond_1

    .line 953
    invoke-virtual {v0}, Lxq;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lxq;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 954
    invoke-virtual {v0}, Lxq;->a()I

    move-result v1

    invoke-static {v1, v3}, Lcom/sohu/inputmethod/platform/PlatformView;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 973
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lxq;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1002
    :goto_2
    invoke-virtual {v0}, Lxq;->b()Ljava/lang/String;

    move-result-object v0

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    const-string v1, "com.sogou.inputmethod.wish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1005
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dX:I

    goto/16 :goto_0

    .line 958
    :cond_6
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->n()V

    .line 961
    invoke-virtual {v0}, Lxq;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->c(I)V

    .line 963
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/platform/PlatformTransferActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    const-string v2, "packageName"

    invoke-virtual {v0}, Lxq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v2, "transferType"

    invoke-virtual {v0}, Lxq;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    invoke-virtual {v0}, Lxq;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 967
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 968
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 970
    :cond_7
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 975
    :pswitch_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dS:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dS:I

    goto :goto_2

    .line 978
    :pswitch_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dT:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dT:I

    goto :goto_2

    .line 981
    :pswitch_2
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dU:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dU:I

    goto/16 :goto_2

    .line 984
    :pswitch_3
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dV:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dV:I

    goto/16 :goto_2

    .line 987
    :pswitch_4
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dW:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dW:I

    goto/16 :goto_2

    .line 990
    :pswitch_5
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ax:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ax:I

    goto/16 :goto_2

    .line 993
    :pswitch_6
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ay:I

    goto/16 :goto_2

    .line 996
    :pswitch_7
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ed:I

    goto/16 :goto_2

    .line 999
    :pswitch_8
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dR:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dR:I

    goto/16 :goto_2

    .line 1006
    :cond_8
    const-string v1, "com.sogou.inputmethod.joke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1007
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dY:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dY:I

    goto/16 :goto_0

    .line 1008
    :cond_9
    const-string v1, "com.sogou.inputmethod.baike"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1009
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ea:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ea:I

    goto/16 :goto_0

    .line 1010
    :cond_a
    const-string v1, "com.sogou.inputmethod.translate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1011
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->eb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->eb:I

    goto/16 :goto_0

    .line 1012
    :cond_b
    const-string v1, "com.sogou.inputmethod.poetry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1013
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dZ:I

    goto/16 :goto_0

    .line 1014
    :cond_c
    const-string v1, "com.sogou.inputmethod.screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1015
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ec:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ec:I

    goto/16 :goto_0

    .line 1016
    :cond_d
    const-string v1, "com.sogou.inputmethod.qrencoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fe:I

    goto/16 :goto_0

    .line 973
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
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 727
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x4

    .line 728
    div-int/lit8 v0, v0, 0x2

    .line 729
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 730
    if-lez p1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 732
    invoke-direct {p0, p3, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 734
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 736
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v5, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 737
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v2, v5, v2

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 741
    invoke-direct {p0, p3, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    .line 309
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    .line 310
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->n:I

    .line 313
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->p:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->p:I

    .line 314
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->q:I

    .line 316
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->n:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->t:I

    .line 317
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->r:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->g:I

    .line 318
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->u:I

    .line 319
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->p:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->v:I

    .line 320
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->w:I

    .line 321
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->setTheme()V

    .line 322
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()Z

    .line 323
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->e()V

    .line 324
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 542
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Z

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    if-le v0, v1, :cond_3

    .line 545
    :cond_2
    iput v7, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 549
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 553
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 554
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 555
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 556
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 560
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    int-to-float v6, v0

    .line 563
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v0

    int-to-float v12, v0

    .line 564
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    .line 565
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingLeft()I

    move-result v0

    int-to-float v13, v0

    .line 569
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->k:I

    int-to-float v5, v0

    .line 573
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    .line 574
    if-le v10, v1, :cond_9

    .line 575
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    move v8, v0

    :goto_2
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    if-ge v8, v0, :cond_0

    .line 576
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    mul-int/2addr v0, v8

    int-to-float v0, v0

    add-float v4, v12, v0

    .line 578
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    if-gt v0, v10, :cond_6

    .line 579
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 575
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_5
    move v0, v7

    .line 573
    goto :goto_1

    .line 583
    :cond_6
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_7

    .line 584
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 587
    :cond_7
    int-to-float v0, v11

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_8

    .line 588
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    goto/16 :goto_0

    .line 596
    :cond_8
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    mul-int v2, v8, v0

    move v9, v7

    :goto_3
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge v2, v0, :cond_4

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    if-ge v9, v0, :cond_4

    .line 597
    int-to-float v0, v9

    mul-float/2addr v0, v5

    add-float v3, v13, v0

    move-object v0, p0

    move-object v1, p1

    .line 598
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;IFFFF)V

    .line 596
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    .line 604
    :cond_9
    if-ge v10, v1, :cond_e

    .line 605
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    move v9, v0

    :goto_4
    if-ltz v9, :cond_0

    .line 606
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    mul-int/2addr v0, v9

    int-to-float v0, v0

    add-float v4, v12, v0

    .line 607
    int-to-float v0, v11

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_b

    .line 608
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 605
    :cond_a
    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_4

    .line 613
    :cond_b
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    if-gt v0, v10, :cond_c

    .line 614
    add-int/lit8 v0, v9, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    goto/16 :goto_0

    .line 618
    :cond_c
    if-nez v9, :cond_d

    .line 619
    iput v9, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 624
    :cond_d
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    mul-int v2, v9, v0

    move v8, v7

    :goto_5
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge v2, v0, :cond_a

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    if-ge v8, v0, :cond_a

    .line 625
    int-to-float v0, v8

    mul-float/2addr v0, v5

    add-float v3, v13, v0

    move-object v0, p0

    move-object v1, p1

    .line 626
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;IFFFF)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_5

    .line 630
    :cond_e
    if-ne v10, v1, :cond_0

    .line 631
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    move v8, v0

    :goto_6
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    if-gt v8, v0, :cond_0

    .line 633
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    mul-int/2addr v0, v8

    int-to-float v0, v0

    add-float v4, v12, v0

    .line 635
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    mul-int v2, v8, v0

    move v9, v7

    :goto_7
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge v2, v0, :cond_f

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    if-ge v9, v0, :cond_f

    .line 636
    int-to-float v0, v9

    mul-float/2addr v0, v5

    add-float v3, v13, v0

    move-object v0, p0

    move-object v1, p1

    .line 637
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;IFFFF)V

    .line 635
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_7

    .line 631
    :cond_f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6
.end method

.method private a(Landroid/graphics/Canvas;IFFFF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-lt p2, v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_0

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/drawable/Drawable;

    .line 652
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 653
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 654
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/platform/PlatformView;->a(I)[I

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 655
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 656
    if-eqz v3, :cond_9

    .line 657
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->u:I

    .line 658
    int-to-float v4, v2

    sub-float v4, p5, v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 660
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/platform/PlatformView;->a(I)[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 661
    new-instance v5, Landroid/graphics/Rect;

    float-to-int v6, p3

    add-int/2addr v6, v4

    float-to-int v7, p4

    add-int/lit8 v7, v7, 0x0

    int-to-float v8, v2

    add-float/2addr v8, p3

    int-to-float v4, v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v2, v2

    add-float/2addr v2, p4

    const/4 v8, 0x0

    add-float/2addr v2, v8

    float-to-int v2, v2

    invoke-direct {v5, v6, v7, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 663
    if-eqz v1, :cond_3

    .line 664
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/platform/PlatformView;->b(I)[I

    move-result-object v2

    .line 665
    sget-object v4, Laxr;->i:[I

    if-eq v2, v4, :cond_5

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/lit8 v4, v4, -0x1

    if-eq p2, v4, :cond_5

    .line 666
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 671
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_6

    .line 672
    invoke-direct {p0, p1, v3, v1, v5}, Lcom/sohu/inputmethod/platform/PlatformView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 676
    :goto_2
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    :goto_3
    iget-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    if-eqz v2, :cond_7

    .line 682
    invoke-virtual {v0}, Lxq;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 683
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    .line 684
    div-int/lit8 v2, v2, 0x2

    .line 685
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v7

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 686
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/2addr v4, p2

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200dc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 688
    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/2addr v4, p2

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/platform/PlatformView;->b(I)[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 689
    invoke-direct {p0, p1, v2, v3}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 705
    :cond_4
    :goto_4
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p5, v2}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_0

    .line 708
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 709
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->v:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 710
    sub-float v2, p5, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, p3

    add-float/2addr v1, p4

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 668
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 674
    :cond_6
    invoke-direct {p0, p1, v3, v1, v5}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    goto/16 :goto_2

    .line 692
    :cond_7
    sget-object v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lxq;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 693
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    .line 694
    div-int/lit8 v2, v2, 0x2

    .line 695
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v2

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v7

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 696
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020090

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 697
    invoke-direct {p0, p1, v2, v3}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_4

    .line 699
    :cond_8
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 700
    invoke-direct {p0, v2, v1, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(ILandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->k()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->m(Ljava/lang/String;)V

    .line 909
    :cond_0
    return-void

    .line 903
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 905
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 912
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v3

    .line 928
    :goto_0
    return v0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 914
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxq;

    invoke-virtual {v1}, Lxq;->b()Ljava/lang/String;

    move-result-object v1

    .line 916
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 917
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    .line 919
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    iput-boolean v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    .line 922
    :cond_3
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    .line 923
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->requestLayout()V

    .line 924
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    .line 925
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformScrollView;

    invoke-virtual {v0, v3, v3}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->scrollTo(II)V

    move v0, v2

    .line 926
    goto :goto_0

    :cond_4
    move v0, v3

    .line 928
    goto :goto_0
.end method

.method public static a(IZ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 840
    const/4 v1, 0x1

    .line 841
    sget-object v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 842
    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 843
    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 844
    if-eqz v0, :cond_1

    .line 845
    sget-object v3, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3, v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/multimedia/SogouMedia;Z)Z

    move-result v0

    and-int/2addr v0, v1

    .line 847
    :goto_0
    if-eqz v0, :cond_0

    .line 848
    sget-object v1, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 849
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->V()V

    .line 852
    :cond_0
    :goto_1
    monitor-exit v2

    .line 853
    return v0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lxq;)Z
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lxq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 824
    sget-object v0, Laxr;->i:[I

    .line 825
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    if-ne v1, p1, :cond_0

    .line 826
    sget-object v0, Laxr;->g:[I

    .line 828
    :cond_0
    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 778
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 790
    :cond_0
    :goto_0
    return-object v0

    .line 779
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 780
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 781
    invoke-direct {p0, v0, v1, p4}, Lcom/sohu/inputmethod/platform/PlatformView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 782
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 784
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 785
    if-eqz p3, :cond_0

    .line 786
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 788
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private b(Lxq;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1179
    if-nez p1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-object v0

    .line 1180
    :cond_1
    invoke-virtual {p1}, Lxq;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sogou.inputmethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1186
    :try_start_0
    invoke-virtual {p1}, Lxq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1187
    const-string v2, "logo"

    const-string v3, "drawable"

    invoke-virtual {p1}, Lxq;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1188
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1189
    :catch_0
    move-exception v1

    .line 1191
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1026
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->j()V

    .line 1027
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 1028
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:Z

    .line 1029
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->c(I)V

    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1040
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)[I
    .locals 2
    .parameter

    .prologue
    .line 832
    sget-object v0, Laxr;->i:[I

    .line 833
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    if-ne v1, p1, :cond_0

    .line 834
    sget-object v0, Laxr;->g:[I

    .line 836
    :cond_0
    return-object v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1033
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1034
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    .line 1035
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lafp;->m(Z)V

    .line 1037
    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    .line 260
    :goto_1
    sget-object v1, Lxp;->f:Lxq;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Z

    .line 261
    sget-object v1, Lxp;->g:Lxq;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Z

    .line 262
    sget-object v1, Lxp;->h:Lxq;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Z

    .line 270
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->k()Ljava/lang/String;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 273
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 274
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 275
    aget-object v4, v3, v0

    .line 276
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 277
    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Ljava/lang/String;)Lxq;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_2

    .line 279
    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Z

    .line 274
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 281
    goto :goto_3

    :cond_3
    move v1, v2

    .line 284
    goto :goto_3

    :cond_4
    move v0, v1

    .line 288
    :cond_5
    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    :cond_6
    sget-object v0, Lxp;->i:Lxq;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Lxq;)Z

    .line 292
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 295
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v0, ""

    move v1, v2

    .line 298
    :goto_1
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 299
    if-ne v1, v2, :cond_2

    .line 300
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    invoke-virtual {v0}, Lxq;->b()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    invoke-virtual {v0}, Lxq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 332
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    .line 334
    iget-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->g:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 335
    :goto_0
    iget-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->g:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 336
    sub-float/2addr v0, v5

    .line 337
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 338
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    goto :goto_0

    .line 341
    :cond_0
    :goto_1
    iget-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->g:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 342
    add-float/2addr v0, v5

    .line 343
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    goto :goto_1

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    sub-float/2addr v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 347
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Paint;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    .line 349
    :cond_2
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v2

    .line 353
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformScrollView;

    .line 354
    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_3

    .line 355
    :cond_0
    invoke-virtual {v0, v1, v1}, Lcom/sohu/inputmethod/platform/PlatformScrollView;->scrollTo(II)V

    .line 356
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    move v0, v1

    .line 358
    :goto_0
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    if-ge v0, v1, :cond_1

    .line 359
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 360
    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->f:I

    if-le v1, v3, :cond_4

    .line 361
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 365
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    if-ne v0, v1, :cond_3

    .line 366
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 369
    :cond_3
    return-void

    .line 358
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    .line 373
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->t:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    .line 374
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->k:I

    .line 375
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->u:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->v:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:D

    add-double/2addr v0, v2

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->w:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    .line 376
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    int-to-double v0, v0

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->j:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    .line 379
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Vibrator;

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Vibrator;

    sget-object v1, Lcom/sohu/inputmethod/platform/PlatformView;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1048
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->invalidate()V

    .line 533
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    .line 200
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 203
    sub-long v0, v2, v0

    sget-wide v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-boolean v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    .line 210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:Z

    .line 235
    return v4

    .line 205
    :cond_1
    iput-boolean v5, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Z

    .line 206
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lafp;->j(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->m:I

    if-ge v0, v1, :cond_0

    .line 858
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->x:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(I)Z

    .line 860
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/util/SparseArray;

    .line 1071
    :cond_0
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:I

    .line 1072
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:I

    .line 1073
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1078
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1080
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1085
    :cond_1
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/HashMap;

    .line 1086
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1088
    :cond_2
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Ljava/util/ArrayList;

    .line 1089
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->c()V

    .line 1090
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/drawable/Drawable;

    .line 1091
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(Landroid/graphics/Canvas;)V

    .line 539
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 499
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 505
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 506
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 529
    :goto_0
    return-void

    .line 510
    :cond_1
    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 511
    iget v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 512
    iget-boolean v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:I

    if-ne v4, v1, :cond_2

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->f:I

    if-ne v4, v2, :cond_2

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:I

    if-eq v2, v3, :cond_3

    .line 514
    :cond_2
    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:I

    .line 515
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->e:I

    .line 516
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->i()V

    .line 517
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->l:I

    iget v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->s:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    .line 518
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->f:I

    .line 519
    const/4 v1, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    move v0, v1

    .line 522
    :cond_3
    if-nez v0, :cond_4

    .line 523
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 527
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->d:I

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->setMeasuredDimension(II)V

    .line 528
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->h()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 494
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 419
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/platform/PlatformView;->a(FF)I

    move-result v0

    .line 420
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v4

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 451
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    :cond_2
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 453
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    goto :goto_0

    .line 425
    :pswitch_0
    if-eq v0, v2, :cond_0

    .line 426
    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 427
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 429
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 430
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    goto :goto_0

    .line 436
    :pswitch_1
    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    if-eq v0, v1, :cond_0

    .line 437
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 438
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    goto :goto_0

    .line 443
    :pswitch_2
    if-eq v0, v2, :cond_4

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    if-ne v0, v1, :cond_4

    .line 444
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->a(I)V

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_5
    iput v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->h:I

    .line 448
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->a()V

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanScrollVertical(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1128
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Z

    .line 1129
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput p1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:I

    .line 406
    return-void
.end method

.method public setScrollDrawRect(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1133
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1134
    return-void
.end method

.method public setService(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 166
    return-void
.end method

.method public setTheme()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 382
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/sohu/inputmethod/platform/PlatformView;->b:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lxr;->a(ILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    .line 386
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    .line 387
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 389
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->g()V

    .line 394
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformView;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/drawable/Drawable;

    .line 398
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/platform/PlatformView;->setPadding(IIII)V

    .line 399
    iput-boolean v4, p0, Lcom/sohu/inputmethod/platform/PlatformView;->b:Z

    .line 400
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformView;->requestLayout()V

    .line 402
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lxr;->a(ILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/graphics/Rect;

    goto :goto_0
.end method
