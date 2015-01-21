.class public Lcom/sohu/inputmethod/sogou/CandidateCloudView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final a:I

.field private static m:I

.field private static r:I


# instance fields
.field private a:F

.field private a:Landroid/graphics/Paint$FontMetricsInt;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/Shader;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/text/Layout$Alignment;

.field private a:Landroid/view/GestureDetector;

.field private a:Laoc;

.field private a:Laod;

.field private a:Laoq;

.field private a:Lapn;

.field private a:Ljava/lang/CharSequence;

.field private a:Ljava/util/Vector;

.field private a:Z

.field private a:[I

.field private b:F

.field private b:I

.field private b:Landroid/graphics/Paint$FontMetricsInt;

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private b:[I

.field private c:F

.field private c:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:F

.field private e:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:F

.field private f:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:F

.field private g:I

.field private g:Z

.field private h:F

.field private h:I

.field private h:Z

.field private i:F

.field private i:I

.field private j:F

.field private j:I

.field private k:F

.field private k:I

.field private l:F

.field private l:I

.field private m:F

.field private n:F

.field private n:I

.field private o:F

.field private o:I

.field private p:F

.field private p:I

.field private q:I

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 234
    const/4 v0, -0x1

    sput v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    .line 245
    const/high16 v0, 0x41a0

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:I

    .line 251
    const/16 v0, 0x14

    sput v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:[I

    .line 113
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    .line 120
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 121
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 186
    new-instance v0, Laod;

    invoke-direct {v0, p0}, Laod;-><init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laod;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:[I

    .line 194
    iput-boolean v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Z

    .line 214
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:F

    .line 215
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    .line 217
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    .line 218
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Z

    .line 235
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->n:I

    .line 236
    iput-boolean v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:Z

    .line 243
    iput v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:F

    .line 250
    const/16 v0, 0x14

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    .line 255
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    .line 256
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    .line 257
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:Z

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 475
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    .line 476
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    .line 477
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 479
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    .line 480
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 481
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setFootnoteShown(Z)V

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    .line 486
    iput v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:F

    .line 487
    sget v0, Laox;->a:I

    int-to-float v0, v0

    const v1, 0x3d99999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    .line 488
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/text/Layout$Alignment;

    .line 490
    new-instance v0, Lapn;

    invoke-direct {v0, p1, p0, v3}, Lapn;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    .line 492
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Laob;

    invoke-direct {v1, p0}, Laob;-><init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/view/GestureDetector;

    .line 526
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 527
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setWillNotDraw(Z)V

    .line 528
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setHorizontalScrollBarEnabled(Z)V

    .line 529
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setVerticalScrollBarEnabled(Z)V

    .line 530
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setClickable(Z)V

    .line 531
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/Paint;F)F
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1264
    if-nez p1, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return v1

    .line 1268
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_3

    const-string v2, "\\u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1270
    const-string v2, "\\\\u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1271
    aget-object v0, v2, v5

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v0, v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v1, v0

    .line 1272
    const/4 v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1273
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_2

    .line 1274
    add-float/2addr v1, p3

    .line 1275
    aget-object v3, v2, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1276
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v1, v3

    .line 1272
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1278
    :cond_2
    aget-object v3, v2, v0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_2

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 1954
    .line 1955
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    .line 1956
    if-gez p1, :cond_0

    .line 1957
    const/4 p1, 0x0

    .line 1958
    :cond_0
    add-int v1, p1, v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    if-le v1, v2, :cond_1

    .line 1959
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    sub-int p1, v1, v0

    .line 1960
    :cond_1
    return p1
.end method

.method private a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1312
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1318
    :goto_0
    return v0

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 1315
    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, p1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    int-to-float v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v1

    .line 1316
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1318
    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)Laoc;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)Laod;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laod;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1416
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    .line 1418
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    .line 1420
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 1421
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h()V

    .line 1422
    return-void
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1964
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->r:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    .line 1965
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 1966
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 1967
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 801
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 807
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    int-to-float v2, v0

    .line 810
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 811
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:F

    sub-float v1, v2, v1

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 816
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, v0

    .line 817
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:F

    .line 819
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:F

    sub-float/2addr v1, v4

    mul-float v4, v5, v0

    sub-float/2addr v1, v4

    .line 821
    add-float v4, v1, v0

    .line 824
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 825
    add-float v0, v3, v2

    move v1, v0

    .line 829
    :goto_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:F

    add-float/2addr v5, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 833
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    float-to-int v2, v4

    float-to-int v3, v3

    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 835
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    .line 836
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 814
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    .line 827
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:F

    add-float/2addr v0, v3

    move v1, v0

    goto :goto_2
.end method

.method private final a(Landroid/graphics/Canvas;IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1010
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    .line 1011
    if-eqz v3, :cond_0

    .line 1013
    iget v4, v3, Laoc;->c:I

    .line 1015
    if-nez v4, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    if-ne v4, v7, :cond_7

    .line 1023
    iget-object v0, v3, Laoc;->a:[F

    if-nez v0, :cond_2

    .line 1024
    new-array v0, v1, [F

    iput-object v0, v3, Laoc;->a:[F

    .line 1027
    :cond_2
    iget-object v0, v3, Laoc;->a:[F

    .line 1029
    iget-object v5, v3, Laoc;->a:Landroid/graphics/Interpolator;

    invoke-virtual {v5, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_6

    .line 1031
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    .line 1033
    long-to-int v5, v5

    .line 1040
    iget-boolean v0, v3, Laoc;->b:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Laoc;->b:Z

    .line 1042
    iget-boolean v0, v3, Laoc;->b:Z

    if-eqz v0, :cond_5

    .line 1044
    iget-object v0, v3, Laoc;->a:Landroid/graphics/Interpolator;

    invoke-static {v3}, Laoc;->a(Laoc;)[F

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1046
    iget v0, v3, Laoc;->b:I

    add-int/2addr v0, v5

    .line 1047
    iget-object v2, v3, Laoc;->a:Landroid/graphics/Interpolator;

    invoke-static {v3}, Laoc;->b(Laoc;)[F

    move-result-object v5

    invoke-virtual {v2, v1, v0, v5}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1048
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 1072
    :goto_2
    if-ne v4, v7, :cond_3

    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setAlpha(I)V

    .line 1074
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 1076
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    .line 1077
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1080
    :cond_3
    if-eqz v1, :cond_0

    .line 1081
    const-wide/16 v1, 0x64

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->postInvalidateDelayed(JIIII)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1040
    goto :goto_1

    .line 1051
    :cond_5
    iget-object v0, v3, Laoc;->a:Landroid/graphics/Interpolator;

    invoke-static {v3}, Laoc;->b(Laoc;)[F

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1053
    iget v0, v3, Laoc;->b:I

    add-int/2addr v0, v5

    .line 1054
    iget-object v5, v3, Laoc;->a:Landroid/graphics/Interpolator;

    invoke-static {v3}, Laoc;->a(Laoc;)[F

    move-result-object v6

    invoke-virtual {v5, v1, v0, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 1055
    iget-object v0, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto :goto_2

    .line 1058
    :cond_6
    iget-object v5, v3, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    iget-boolean v0, v0, Laoc;->a:Z

    if-nez v0, :cond_1

    .line 1790
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, v0, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2012
    return-void
.end method

.method private a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 1254
    sget-object v0, Laxr;->i:[I

    .line 1255
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    if-ne v1, p1, :cond_0

    .line 1256
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    if-eqz v1, :cond_0

    .line 1257
    sget-object v0, Laxr;->g:[I

    .line 1260
    :cond_0
    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 841
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 847
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    int-to-float v2, v0

    .line 850
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 851
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:F

    sub-float v1, v2, v1

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 856
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, v0

    .line 857
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:F

    .line 859
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:F

    sub-float/2addr v1, v4

    mul-float v4, v5, v0

    sub-float/2addr v1, v4

    .line 861
    add-float v4, v1, v0

    .line 864
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 865
    add-float v0, v3, v2

    move v1, v0

    .line 869
    :goto_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:F

    add-float/2addr v5, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v3, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 873
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    float-to-int v2, v4

    float-to-int v3, v3

    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 875
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    .line 876
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 854
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    .line 867
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:F

    add-float/2addr v0, v3

    move v1, v0

    goto :goto_2
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    return v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/CandidateCloudView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(I)I

    move-result v0

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 882
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 887
    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    .line 888
    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    .line 889
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    .line 890
    const/16 v0, 0xff

    .line 891
    if-eqz v1, :cond_2

    iget v1, v1, Laoc;->c:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 892
    const/16 v0, 0x3f

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 895
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 896
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    .line 897
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    .line 898
    invoke-direct/range {v0 .. v5}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Landroid/graphics/Canvas;IIII)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/sogou/CandidateCloudView;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    return v0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 954
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 959
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:F

    float-to-int v0, v0

    .line 960
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    .line 961
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 962
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 963
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    .line 964
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1811
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    .line 1813
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Laoc;->a:Z

    if-eqz v3, :cond_0

    iget v3, v2, Laoc;->c:I

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 1833
    :goto_0
    return v0

    .line 1818
    :cond_1
    iget-object v3, v2, Laoc;->a:Landroid/graphics/drawable/ClipDrawable;

    if-nez v3, :cond_2

    .line 1819
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1821
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 1825
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget v5, v2, Laoc;->a:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 1826
    iput-wide v3, v2, Laoc;->a:J

    .line 1827
    iput v1, v2, Laoc;->c:I

    .line 1828
    iput-boolean v0, v2, Laoc;->b:Z

    .line 1832
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    iget v2, v2, Laoc;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Laoc;->a(J)V

    goto :goto_0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1091
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    int-to-float v3, v0

    .line 1092
    const/4 v0, 0x0

    .line 1095
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v1, v3, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float v6, v1, v2

    .line 1097
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float v9, v1, v2

    .line 1099
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v10, v1, v0

    .line 1101
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/drawable/Drawable;

    .line 1103
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1104
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1114
    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:F

    .line 1116
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float v11, v0, v5

    .line 1117
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    .line 1118
    if-eqz v1, :cond_1

    .line 1120
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    .line 1121
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;F)F

    move-result v0

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:F

    add-float/2addr v2, v0

    .line 1124
    const/4 v0, 0x0

    .line 1125
    iget v7, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_b

    .line 1126
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    .line 1127
    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    move v2, v0

    .line 1130
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    const/high16 v7, 0x4000

    mul-float/2addr v5, v7

    sub-float/2addr v0, v5

    const/high16 v5, 0x4000

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    .line 1131
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    int-to-float v0, v0

    .line 1164
    iget v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    .line 1166
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1167
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    int-to-float v7, v5

    add-float/2addr v7, v11

    add-float v8, v10, v3

    invoke-virtual {v0, v11, v10, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1177
    if-eqz v4, :cond_3

    .line 1178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(I)[I

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1179
    float-to-int v0, v11

    float-to-int v7, v10

    int-to-float v5, v5

    add-float/2addr v5, v11

    float-to-int v5, v5

    add-float v8, v10, v3

    float-to-int v8, v8

    invoke-virtual {v4, v0, v7, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1181
    invoke-static {v4}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1182
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1185
    :cond_3
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    :goto_2
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1187
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    if-eqz v0, :cond_4

    .line 1188
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:I

    invoke-static {v4}, Lawh;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1189
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1192
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1203
    const/4 v0, 0x0

    .line 1204
    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_a

    .line 1205
    float-to-int v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    .line 1208
    :goto_3
    add-float v0, v11, v2

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:F

    add-float v4, v0, v2

    .line 1209
    add-float v5, v10, v6

    .line 1211
    if-eqz v8, :cond_7

    const-string v0, "\\u"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1212
    const-string v0, "\\\\u"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1213
    const/4 v0, 0x0

    aget-object v1, v12, v0

    const/4 v2, 0x0

    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1214
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v4, v0

    .line 1215
    const/4 v0, 0x1

    move v8, v0

    :goto_4
    array-length v0, v12

    if-ge v8, v0, :cond_8

    .line 1216
    aget-object v0, v12, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    .line 1217
    aget-object v0, v12, v8

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1218
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1219
    sget-object v1, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    invoke-virtual {v1, v0, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1220
    float-to-int v1, v4

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    add-int/2addr v3, v7

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1223
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1224
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:I

    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 1226
    aget-object v0, v12, v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset string is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/String;)V

    .line 1228
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1229
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v4, v0

    .line 1215
    :goto_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    .line 1185
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1231
    :cond_6
    aget-object v1, v12, v8

    const/4 v2, 0x0

    aget-object v0, v12, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1232
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    aget-object v1, v12, v8

    const/4 v2, 0x0

    aget-object v3, v12, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    add-float/2addr v4, v0

    goto :goto_5

    .line 1236
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-float v5, v10, v6

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1239
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1241
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Z

    if-eqz v0, :cond_9

    .line 1242
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    add-float v1, v10, v9

    const/high16 v2, 0x4040

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1247
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1248
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1249
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m()V

    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_3

    :cond_b
    move v2, v0

    goto/16 :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    if-eqz v0, :cond_0

    .line 1426
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoq;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Laoq;->b(ILjava/lang/CharSequence;)Z

    .line 1432
    :cond_0
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 1436
    return-void
.end method

.method private j()V
    .locals 8

    .prologue
    const/16 v0, 0x20

    const/4 v2, 0x0

    .line 1566
    sget v1, Laox;->a:I

    int-to-float v1, v1

    const v3, 0x3e19999a

    mul-float/2addr v1, v3

    float-to-int v3, v1

    .line 1567
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    invoke-static {v1}, Lawh;->a(I)I

    move-result v5

    .line 1568
    ushr-int/lit8 v1, v5, 0x18

    .line 1569
    mul-int/lit8 v4, v3, 0x3

    sub-int/2addr v1, v4

    .line 1570
    if-ge v1, v0, :cond_0

    move v4, v0

    .line 1573
    :goto_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    iget v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    iget v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    const v6, 0xffffff

    and-int/2addr v6, v5

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v6, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    .line 1575
    return-void

    :cond_0
    move v4, v1

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    if-nez v0, :cond_0

    .line 1782
    new-instance v0, Laoc;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Laoc;-><init>(Lcom/sohu/inputmethod/sogou/CandidateCloudView;Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    .line 1784
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1970
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v0

    .line 1971
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(I)I

    move-result v1

    .line 1972
    if-eq v1, v0, :cond_0

    .line 1973
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(II)V

    .line 1975
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v0

    .line 1979
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    if-le v1, v0, :cond_2

    .line 1980
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    add-int/2addr v0, v1

    .line 1981
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    if-lt v0, v1, :cond_1

    .line 1982
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 1983
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    .line 1984
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->requestLayout()V

    .line 1998
    :goto_0
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    if-nez v1, :cond_0

    .line 1999
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 2001
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 2002
    return-void

    .line 1986
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    goto :goto_0

    .line 1989
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->q:I

    sub-int/2addr v0, v1

    .line 1990
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    if-gt v0, v1, :cond_3

    .line 1991
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 1992
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    .line 1993
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->requestLayout()V

    goto :goto_0

    .line 1995
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    .line 537
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/CharSequence;ZI)V

    .line 706
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 707
    return-void
.end method

.method public a(Ljava/lang/CharSequence;ZI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 738
    if-nez p2, :cond_0

    .line 739
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:I

    .line 742
    :cond_0
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 743
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    .line 745
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:Z

    .line 746
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g()V

    .line 747
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    packed-switch v0, :pswitch_data_0

    .line 767
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c()V

    .line 768
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->requestLayout()V

    .line 770
    :cond_1
    return-void

    .line 750
    :pswitch_1
    if-eqz p1, :cond_1

    .line 752
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 753
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    .line 754
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->scrollTo(II)V

    goto :goto_0

    .line 757
    :pswitch_2
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:Z

    .line 758
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()Z

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Z

    return v0
.end method

.method public a(ILjava/lang/CharSequence;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/high16 v9, 0x4000

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1579
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    if-gtz v0, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return v1

    .line 1581
    :cond_1
    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:F

    .line 1582
    const/4 v0, 0x0

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloud view mState==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/String;)V

    .line 1584
    sget v2, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    packed-switch v2, :pswitch_data_0

    .line 1619
    :goto_1
    float-to-int v2, v0

    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    .line 1620
    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 1621
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    .line 1628
    :goto_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->s:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:I

    if-le v0, v2, :cond_9

    .line 1629
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j()V

    .line 1630
    :cond_2
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:Z

    goto :goto_0

    .line 1587
    :pswitch_0
    if-eqz p2, :cond_0

    .line 1589
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1590
    const-string v4, "\\u"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1591
    const-string v4, "\\\\u"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1592
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    aget-object v5, v4, v8

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    add-float/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 1593
    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 1594
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_3

    .line 1595
    sget v5, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 1596
    aget-object v5, v4, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1597
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    add-float/2addr v2, v5

    .line 1593
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1599
    :cond_3
    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    aget-object v6, v4, v0

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    add-float/2addr v2, v5

    goto :goto_4

    .line 1603
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p2, v8, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    .line 1605
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:F

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    mul-float v2, v9, v3

    add-float/2addr v0, v2

    .line 1606
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:F

    goto/16 :goto_1

    .line 1610
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    int-to-float v0, v0

    mul-float v2, v9, v3

    add-float/2addr v0, v2

    .line 1611
    goto/16 :goto_1

    .line 1613
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:F

    goto/16 :goto_1

    .line 1616
    :pswitch_3
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:F

    goto/16 :goto_1

    .line 1622
    :cond_6
    sget v2, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    if-eq v2, v10, :cond_7

    sget v2, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    if-ne v2, v10, :cond_8

    :cond_7
    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 1623
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    goto/16 :goto_2

    .line 1625
    :cond_8
    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    goto/16 :goto_2

    .line 1632
    :cond_9
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:Z

    goto/16 :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1642
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->n:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    .line 542
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    .line 543
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    .line 544
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/drawable/Drawable;

    .line 545
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    .line 546
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 548
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()V

    .line 550
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1658
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 711
    if-nez v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 712
    :cond_0
    sget v1, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 723
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 715
    :pswitch_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 719
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 727
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 731
    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1662
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1666
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 774
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 2005
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    return v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 1478
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    if-nez v0, :cond_0

    .line 1703
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    .line 1704
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 1705
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 1706
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    iget-boolean v0, v0, Laoc;->a:Z

    if-nez v0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    iget v0, v0, Laoc;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Z

    .line 1805
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    const/4 v1, 0x0

    iput v1, v0, Laoc;->c:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 779
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 788
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 791
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 794
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/16 v1, 0x15

    .line 590
    const-string v0, "cloud view   onMeasureonMeasureonMeasure"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/String;)V

    .line 591
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    if-lez v0, :cond_0

    .line 592
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 593
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 597
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 598
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    if-lez v0, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    .line 602
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    .line 605
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 569
    if-ne p3, p1, :cond_1

    if-ne p4, p2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    .line 576
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    .line 579
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:F

    .line 581
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1323
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:Z

    .line 1325
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    if-eq v0, v6, :cond_0

    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v6

    .line 1327
    :cond_1
    const-string v0, "onTouchEvent onTouchEvent"

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 1331
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    goto :goto_0

    .line 1336
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1377
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getScrollX()I

    move-result v2

    .line 1378
    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    if-eq v3, v2, :cond_3

    .line 1379
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:I

    .line 1382
    :cond_3
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Z

    .line 1384
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(II)I

    move-result v0

    .line 1385
    if-nez v0, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i()V

    .line 1388
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laod;

    invoke-virtual {v0, v7, v8}, Laod;->a(J)V

    goto :goto_0

    .line 1353
    :pswitch_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l()V

    .line 1354
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Z

    if-nez v2, :cond_0

    .line 1357
    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(II)I

    move-result v2

    .line 1358
    if-ltz v2, :cond_4

    .line 1359
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 1362
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoq;

    if-eqz v3, :cond_4

    .line 1363
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoq;

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v4, v0, v1}, Laoq;->a(ILjava/lang/CharSequence;II)Z

    move-result v0

    .line 1365
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->ae:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->ae:I

    .line 1366
    if-eqz v0, :cond_4

    .line 1367
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 1368
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    .line 1372
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    invoke-virtual {v0, v7, v8}, Lapn;->a(J)V

    goto :goto_0

    .line 1351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1793
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k()V

    .line 1794
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoc;

    .line 1795
    iput-boolean p1, v0, Laoc;->a:Z

    .line 1797
    const/4 v1, 0x0

    iput v1, v0, Laoc;->c:I

    .line 1798
    return-void
.end method

.method public setCandidateCloudTheme(Lawc;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1728
    if-eqz p1, :cond_4

    .line 1730
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIME;->g:Z

    if-eqz v0, :cond_0

    .line 1732
    sget-object v0, Lawd;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_0

    .line 1734
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    .line 1735
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->i:F

    .line 1736
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:F

    .line 1740
    :cond_0
    sget-object v0, Lawd;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1741
    if-eqz v0, :cond_1

    .line 1742
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    .line 1743
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:F

    .line 1744
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:F

    .line 1746
    :cond_1
    sget-object v0, Lawd;->k:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1747
    if-eqz v0, :cond_2

    .line 1748
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    .line 1749
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:F

    .line 1750
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:F

    .line 1751
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1754
    :cond_2
    sget-object v0, Lawd;->w:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1755
    sget-object v1, Lawd;->x:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lawc;->b(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1756
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1757
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Landroid/graphics/drawable/Drawable;

    .line 1760
    :cond_3
    invoke-static {}, Laxs;->a()Laxs;

    move-result-object v0

    const-string v1, "bg_cloud_top.png"

    invoke-virtual {v0, v1}, Laxs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1761
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1762
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->t:I

    .line 1776
    :cond_4
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 1943
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:I

    .line 1944
    return-void
.end method

.method public setCandidateViewListener(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Laoq;

    .line 614
    return-void
.end method

.method public setCloudState(I)V
    .locals 1
    .parameter

    .prologue
    .line 1646
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->n:I

    .line 1648
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 1649
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    .line 1650
    :cond_1
    sput p1, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->m:I

    .line 1651
    return-void
.end method

.method public setContentWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 1670
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    .line 1671
    return-void
.end method

.method public setFocusState(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1711
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    if-eqz v0, :cond_0

    .line 1716
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d:I

    .line 1717
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Z

    .line 1718
    if-eqz p1, :cond_2

    .line 1719
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    .line 1721
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    goto :goto_0

    .line 1720
    :cond_2
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:Z

    goto :goto_1
.end method

.method public setFootnoteShown(Z)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Z

    .line 609
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:F

    .line 610
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsFreeDumCloudResult(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1469
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Z

    .line 1470
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    invoke-virtual {v0, p1}, Lapn;->a(Landroid/view/View;)V

    .line 1474
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1517
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:Z

    .line 1518
    return-void
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 699
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/text/Layout$Alignment;

    .line 700
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->d()V

    .line 702
    :cond_0
    return-void
.end method

.method public setTheme(Lawe;)V
    .locals 7
    .parameter

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 695
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p1}, Lawe;->a()Lawv;

    move-result-object v1

    .line 635
    invoke-virtual {p1}, Lawe;->d()Lawv;

    move-result-object v2

    .line 636
    iget v0, v1, Lawv;->a:I

    invoke-virtual {p1}, Lawe;->b()I

    move-result v3

    add-int/2addr v0, v3

    .line 638
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 639
    int-to-float v3, v0

    iput v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->n:F

    .line 640
    int-to-float v3, v0

    const/high16 v4, 0x3fc0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->o:F

    .line 645
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    iget-object v4, v1, Lawv;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 646
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 647
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint;

    const-string v4, "..."

    const/4 v5, 0x0

    const-string v6, "..."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:F

    .line 650
    int-to-float v0, v0

    const v3, 0x3ecccccd

    mul-float/2addr v0, v3

    .line 651
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 652
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iput-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:Landroid/graphics/Paint$FontMetricsInt;

    .line 655
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Z

    if-eqz v3, :cond_2

    :goto_1
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:F

    .line 657
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:I

    .line 658
    iget v0, v1, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:I

    .line 659
    if-eqz v2, :cond_1

    .line 660
    iget v0, v2, Lawv;->b:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->e:I

    .line 662
    :cond_1
    invoke-virtual {p1}, Lawe;->a()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:I

    .line 664
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->g:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    .line 665
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->b:I

    .line 667
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->c:I

    .line 673
    invoke-virtual {p1}, Lawe;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->f:Landroid/graphics/drawable/Drawable;

    .line 675
    invoke-virtual {p1}, Lawe;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/drawable/Drawable;

    .line 680
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Lapn;

    invoke-virtual {v0, p1}, Lapn;->a(Lawe;)V

    .line 683
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    .line 685
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    .line 686
    const/high16 v0, 0x4000

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->p:F

    .line 688
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v1, Lafp;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->l:I

    .line 689
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->h:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->k:I

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->a:Landroid/graphics/Shader;

    .line 693
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->invalidate()V

    .line 694
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->requestLayout()V

    goto/16 :goto_0

    .line 655
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1947
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 1948
    check-cast p1, Laxc;

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->j:I

    invoke-virtual {p1, v0}, Laxc;->a(I)Lawe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/CandidateCloudView;->setTheme(Lawe;)V

    .line 1951
    :cond_0
    return-void
.end method
