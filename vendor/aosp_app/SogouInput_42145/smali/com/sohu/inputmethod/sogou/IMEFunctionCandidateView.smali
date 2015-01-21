.class public Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static a:J


# instance fields
.field private A:I

.field private a:D

.field private a:F

.field public a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Laoq;

.field private a:Lapl;

.field private a:Lawl;

.field private a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

.field private a:Ljava/util/Vector;

.field private a:Z

.field private a:[Landroid/graphics/drawable/Drawable;

.field public b:I

.field private b:Landroid/graphics/Rect;

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

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 160
    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 103
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    .line 104
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 105
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Z

    .line 106
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    .line 108
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Z

    .line 110
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 111
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->n:I

    .line 113
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->o:I

    .line 114
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->p:I

    .line 116
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->q:I

    .line 117
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    .line 123
    const/16 v0, 0x10

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->t:I

    .line 125
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->u:I

    .line 126
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->v:I

    .line 128
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->w:I

    .line 129
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->x:I

    .line 131
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 158
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:Z

    .line 164
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    .line 165
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Landroid/graphics/Rect;

    .line 173
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:Z

    .line 177
    new-instance v0, Lapl;

    invoke-direct {v0, p0}, Lapl;-><init>(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lapl;

    .line 181
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    .line 182
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 103
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    .line 104
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 105
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Z

    .line 106
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    .line 108
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Z

    .line 110
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 111
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->n:I

    .line 113
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->o:I

    .line 114
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->p:I

    .line 116
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->q:I

    .line 117
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    .line 123
    const/16 v0, 0x10

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->t:I

    .line 125
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->u:I

    .line 126
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->v:I

    .line 128
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->w:I

    .line 129
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->x:I

    .line 131
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 158
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:Z

    .line 164
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    .line 165
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Landroid/graphics/Rect;

    .line 173
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:Z

    .line 177
    new-instance v0, Lapl;

    invoke-direct {v0, p0}, Lapl;-><init>(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lapl;

    .line 191
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    .line 192
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method private a(Landroid/graphics/Paint;)D
    .locals 2
    .parameter

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 895
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

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
    .line 524
    const/4 v1, -0x1

    .line 525
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v1

    .line 534
    :goto_0
    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 528
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 529
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 530
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    move v0, v2

    .line 531
    goto :goto_0

    .line 528
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 534
    goto :goto_0
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 541
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 818
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 819
    sub-int v2, p1, v0

    sub-int v3, p2, v1

    if-le v2, v3, :cond_0

    .line 820
    mul-int/2addr v0, p2

    div-int/2addr v0, p1

    sub-int v0, v1, v0

    .line 821
    iget v1, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 822
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 828
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 829
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 830
    return-object p3

    .line 824
    :cond_0
    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    sub-int/2addr v0, v1

    .line 825
    iget v1, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 826
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
    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 806
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 807
    invoke-direct {p0, v0, v1, p3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 808
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 809
    invoke-static {p2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 810
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 813
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    invoke-virtual {v0}, Lawl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Laxc;->a(Landroid/content/Context;)Laxc;

    move-result-object v0

    invoke-virtual {v0}, Laxc;->a()Lawl;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    .line 269
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Lawl;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Lawl;)V

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-le v0, p1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 276
    if-eqz v0, :cond_3

    .line 279
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;)Lapl;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lapl;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->A:I

    .line 205
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->t:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->s:I

    .line 206
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    .line 207
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->t:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->i()V

    .line 211
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:Z

    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    .line 644
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 648
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 649
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c()V

    .line 652
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 653
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 654
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 655
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Landroid/graphics/Rect;

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 657
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    int-to-float v6, v0

    .line 660
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v0

    .line 661
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 665
    iget v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    .line 669
    if-le v7, v9, :cond_9

    .line 670
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    :goto_1
    const/4 v0, 0x4

    if-gt v2, v0, :cond_7

    .line 671
    int-to-float v0, v2

    mul-float/2addr v0, v5

    add-float v3, v11, v0

    .line 673
    add-float v0, v3, v5

    float-to-int v0, v0

    if-gt v0, v7, :cond_5

    .line 674
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    .line 670
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 679
    :cond_5
    const/4 v0, 0x4

    if-ne v2, v0, :cond_6

    .line 680
    const/4 v0, 0x4

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 684
    :cond_6
    int-to-float v0, v8

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_8

    .line 685
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 725
    :cond_7
    :goto_3
    invoke-direct {p0, p1, v8}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;I)V

    .line 727
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getMeasuredWidth()I

    move-result v2

    .line 728
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:Z

    if-eqz v0, :cond_10

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:Z

    .line 730
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    if-eqz v0, :cond_0

    .line 731
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    if-lez v7, :cond_e

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-ge v8, v2, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v3, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(ZZ)V

    goto/16 :goto_0

    :cond_8
    move-object v0, p0

    move-object v1, p1

    .line 690
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;IFFFF)V

    goto :goto_2

    .line 696
    :cond_9
    if-ge v7, v9, :cond_d

    .line 697
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    :goto_6
    if-ltz v2, :cond_7

    .line 698
    int-to-float v0, v2

    mul-float/2addr v0, v5

    add-float v3, v11, v0

    .line 699
    int-to-float v0, v8

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_a

    .line 700
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 697
    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 705
    :cond_a
    add-float v0, v3, v5

    float-to-int v0, v0

    if-gt v0, v7, :cond_b

    .line 706
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    goto :goto_3

    .line 710
    :cond_b
    if-nez v2, :cond_c

    .line 711
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    :cond_c
    move-object v0, p0

    move-object v1, p1

    .line 713
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;IFFFF)V

    goto :goto_7

    .line 716
    :cond_d
    if-ne v7, v9, :cond_7

    .line 717
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    :goto_8
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    if-gt v2, v0, :cond_7

    .line 719
    int-to-float v0, v2

    mul-float/2addr v0, v5

    add-float v3, v11, v0

    move-object v0, p0

    move-object v1, p1

    .line 720
    invoke-direct/range {v0 .. v6}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;IFFFF)V

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 731
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 733
    :cond_10
    if-lez v7, :cond_11

    if-lez v9, :cond_11

    if-ge v8, v2, :cond_11

    if-lt v10, v2, :cond_0

    .line 735
    :cond_11
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    if-lez v7, :cond_12

    const/4 v0, 0x1

    move v1, v0

    :goto_9
    if-ge v8, v2, :cond_13

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v3, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a(ZZ)V

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    move v1, v0

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 743
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 745
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    if-lez v1, :cond_0

    .line 746
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v8

    float-to-int v0, v0

    .line 747
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 748
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 749
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->q:I

    div-int/lit8 v5, v2, 0x4

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->q:I

    mul-int/lit8 v7, v2, 0x3

    div-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    add-int/2addr v2, v7

    add-int/2addr v0, v2

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 754
    invoke-direct {p0, p1, v1, v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 756
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 757
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 758
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 759
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v2, v5, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 762
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;IFFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 766
    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 770
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 771
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    invoke-virtual {v2}, Lawl;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b(I)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 777
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    .line 778
    int-to-float v3, v2

    sub-float v3, p5, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 779
    int-to-float v4, v2

    sub-float v4, p6, v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 780
    if-eqz v0, :cond_2

    .line 781
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(I)[I

    move-result-object v5

    .line 782
    sget-object v6, Laxr;->i:[I

    if-eq v5, v6, :cond_2

    .line 785
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(I)[I

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 787
    float-to-int v5, p3

    const/high16 v6, 0x4000

    add-float/2addr v6, p4

    float-to-int v6, v6

    add-float v7, p3, p5

    float-to-int v7, v7

    add-float v8, p4, p6

    const/high16 v9, 0x4000

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 789
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 790
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v5, p3

    add-int/2addr v5, v3

    float-to-int v6, p4

    add-int/2addr v6, v4

    int-to-float v7, v2

    add-float/2addr v7, p3

    int-to-float v3, v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v2, v2

    add-float/2addr v2, p4

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v5, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 795
    invoke-direct {p0, p1, v1, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private a(Lawl;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 283
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Lawl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lawl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v3}, Lawl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v4}, Lawl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1, v6}, Lawl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:[Landroid/graphics/drawable/Drawable;

    .line 291
    return-void
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 834
    sget-object v0, Laxr;->i:[I

    .line 835
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    if-eq v1, p1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    if-ne v1, p1, :cond_1

    .line 836
    :cond_0
    sget-object v0, Laxr;->g:[I

    .line 838
    :cond_1
    return-object v0
.end method

.method private b(I)I
    .locals 0
    .parameter

    .prologue
    .line 563
    return p1
.end method

.method private b(I)[I
    .locals 3
    .parameter

    .prologue
    .line 842
    sget-object v0, Laxr;->i:[I

    .line 843
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 844
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 846
    sget-object v0, Laxr;->j:[I

    .line 849
    :cond_0
    return-object v0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 263
    int-to-float v1, p1

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->z:I

    .line 264
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 214
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    .line 216
    iget-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->s:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 217
    :goto_0
    iget-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->s:I

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 218
    sub-float/2addr v0, v5

    .line 219
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    goto :goto_0

    .line 223
    :cond_0
    :goto_1
    iget-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->s:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 224
    add-float/2addr v0, v5

    .line 225
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Paint;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    goto :goto_1

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    sub-float/2addr v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Paint;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:D

    .line 231
    :cond_2
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 295
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    .line 296
    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->getScrollX()I

    move-result v3

    if-nez v3, :cond_3

    .line 298
    :cond_0
    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->b()V

    .line 299
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    move v0, v1

    .line 301
    :goto_0
    if-gt v0, v5, :cond_1

    .line 302
    int-to-float v1, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 303
    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->g:I

    if-lt v1, v3, :cond_4

    .line 304
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 308
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 309
    :cond_2
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 317
    :cond_3
    return-void

    .line 301
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 12

    .prologue
    const/high16 v4, 0x40a0

    const/4 v11, 0x0

    const-wide v5, 0x3ffb333333333333L

    .line 321
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 322
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    .line 323
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x44

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    .line 325
    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    .line 326
    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 345
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    .line 348
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 349
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    int-to-double v3, v0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    .line 351
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    sget-object v3, Laxr;->i:[I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 355
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lawl;

    invoke-virtual {v3}, Lawl;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 357
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 358
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    .line 359
    iget v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 360
    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    .line 361
    new-instance v7, Landroid/graphics/Rect;

    int-to-float v8, v1

    iget v9, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    int-to-float v9, v5

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int v9, v2, v6

    int-to-float v1, v1

    iget v10, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    mul-float/2addr v10, v11

    add-float/2addr v1, v10

    int-to-float v5, v5

    add-float/2addr v1, v5

    int-to-float v5, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr v2, v6

    add-int/2addr v2, v4

    invoke-direct {v7, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 365
    invoke-direct {p0, v3, v0, v7}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 366
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->q:I

    .line 367
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->r:I

    .line 369
    :cond_2
    return-void

    .line 323
    :cond_3
    const/16 v0, 0x34

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->z:I

    return v0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 430
    sget-object v3, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 432
    :try_start_0
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 433
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 434
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 435
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    .line 438
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 441
    sub-long v3, v5, v3

    sget-wide v5, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    .line 447
    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Z

    .line 455
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 456
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 432
    goto :goto_0

    :cond_4
    move v0, v2

    .line 433
    goto :goto_1

    :cond_5
    move v0, v2

    .line 434
    goto :goto_2

    .line 435
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 443
    :cond_6
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    .line 444
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->j(Z)V

    goto :goto_3
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 869
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h()V

    .line 870
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 871
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 872
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 873
    const/4 v0, 0x3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 875
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    if-ne v0, v1, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 609
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    if-eq v0, v1, :cond_1

    .line 610
    :cond_0
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 611
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 612
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d()V

    .line 614
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 913
    iput p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 914
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 915
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d()V

    .line 916
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    if-ne v0, v1, :cond_1

    .line 466
    :cond_0
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public c()V
    .locals 7

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 620
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    .line 621
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    .line 622
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-gt v1, v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 624
    int-to-float v0, v1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    float-to-int v4, v0

    .line 625
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    int-to-float v5, v4

    int-to-float v4, v4

    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 627
    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->invalidate()V

    .line 632
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 853
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    .line 857
    :cond_0
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:I

    .line 858
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:I

    .line 859
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    .line 863
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e()V

    .line 864
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 865
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 878
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 879
    sget-object v3, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 881
    :try_start_0
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    add-int/2addr v2, v4

    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 882
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    add-int/2addr v2, v4

    iput v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 883
    iget v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    sget-object v4, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 884
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->m:I

    .line 887
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 881
    goto :goto_0

    :cond_3
    move v2, v1

    .line 882
    goto :goto_1

    :cond_4
    move v0, v1

    .line 883
    goto :goto_2

    .line 884
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lapl;

    invoke-virtual {v0}, Lapl;->a()Z

    .line 920
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(Landroid/graphics/Canvas;)V

    .line 638
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 576
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 577
    const/4 v2, 0x0

    .line 578
    iget v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 579
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v5

    .line 580
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    .line 581
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    .line 582
    iget v6, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    if-ne v6, v1, :cond_0

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->g:I

    if-eq v3, v0, :cond_6

    .line 584
    :cond_0
    iput v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    .line 585
    iput v5, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    .line 586
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->g:I

    .line 587
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->i:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->i:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->h:I

    .line 588
    :cond_1
    const/4 v0, 0x1

    .line 590
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setMeasuredDimension(II)V

    .line 606
    :goto_2
    return-void

    .line 580
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    goto :goto_0

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k()V

    .line 596
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c()V

    .line 598
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:F

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 599
    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 600
    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setMeasuredDimension(II)V

    .line 601
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/CandidateViewContainer;->a()Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setViewHeight(I)V

    .line 604
    :cond_4
    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c(I)V

    .line 605
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j()V

    goto :goto_2

    .line 599
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:I

    int-to-float v0, v0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 571
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 476
    invoke-direct {p0, v4, v5}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(FF)I

    move-result v0

    .line 477
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Z

    if-ne v1, v6, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_1
    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    .line 485
    if-ltz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lapl;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3, v0}, Lapl;->a(JI)V

    goto :goto_0

    .line 496
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    if-ltz v0, :cond_2

    .line 497
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->l:I

    .line 498
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Laoq;

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Laoq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b(I)I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a(I)I

    move-result v3

    float-to-int v4, v4

    float-to-int v5, v5

    invoke-interface/range {v0 .. v5}, Laoq;->a(ILjava/lang/CharSequence;III)Z

    .line 515
    :cond_2
    iput v7, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->k:I

    .line 516
    iput v7, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->j:I

    .line 517
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d()V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCanScrollhorizontal(Z)V
    .locals 0
    .parameter

    .prologue
    .line 899
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:Z

    .line 900
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:I

    .line 421
    return-void
.end method

.method public setCandidateViewContainer(Lcom/sohu/inputmethod/sogou/CandidateViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Lcom/sohu/inputmethod/sogou/CandidateViewContainer;

    .line 909
    return-void
.end method

.method public setCandidateViewListener(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Laoq;

    .line 235
    return-void
.end method

.method public setCurrentMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Z

    .line 425
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a()V

    .line 426
    return-void
.end method

.method public setForceUpdateButtonStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->e:Z

    .line 187
    return-void
.end method

.method public setRealHeight(I)V
    .locals 4
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 239
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 240
    :goto_0
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_1

    .line 241
    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    .line 245
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->i:I

    .line 246
    return-void

    .line 239
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:I

    goto :goto_0

    .line 243
    :cond_1
    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    goto :goto_1
.end method

.method public setScrollDrawRect(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 904
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 905
    return-void
.end method

.method public setTheme(Lawe;)V
    .locals 5
    .parameter

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p1}, Lawe;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:I

    .line 381
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    .line 390
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-virtual {p1}, Lawe;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/drawable/Drawable;

    .line 396
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;

    .line 397
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateScrollView;->setTheme(IIII)V

    .line 403
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->y:I

    .line 404
    :goto_1
    sget-boolean v1, Laox;->a:Z

    if-eqz v1, :cond_3

    .line 405
    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    .line 409
    :goto_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->i:I

    .line 411
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->invalidate()V

    .line 412
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->requestLayout()V

    goto :goto_0

    .line 403
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->d:I

    goto :goto_1

    .line 407
    :cond_3
    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->f:I

    goto :goto_2
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Laxc;

    iget v0, p0, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->c:I

    invoke-virtual {p1, v0}, Laxc;->a(I)Lawe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/IMEFunctionCandidateView;->setTheme(Lawe;)V

    .line 200
    :cond_0
    return-void
.end method
