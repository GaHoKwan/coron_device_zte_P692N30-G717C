.class public Lcom/sohu/inputmethod/sogou/CandidateView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/util/Observer;


# static fields
.field public static final q:I

.field static final synthetic r:Z


# instance fields
.field protected a:F

.field protected a:I

.field protected a:Landroid/graphics/Canvas;

.field protected a:Landroid/graphics/Paint$FontMetricsInt;

.field protected a:Landroid/graphics/Paint;

.field protected a:Landroid/graphics/Rect;

.field protected a:Landroid/graphics/drawable/Drawable;

.field protected a:Landroid/text/Layout$Alignment;

.field public a:Laom;

.field protected a:Laoq;

.field protected a:Laor;

.field protected a:Lapn;

.field protected a:Lawk;

.field protected a:Lawv;

.field protected a:Laxn;

.field public a:Ljava/lang/String;

.field protected a:Ljava/util/Vector;

.field protected a:Z

.field protected a:[I

.field protected b:F

.field protected b:I

.field protected b:Landroid/graphics/Paint$FontMetricsInt;

.field protected b:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected b:Z

.field protected b:[I

.field protected c:F

.field protected c:I

.field protected c:Landroid/graphics/drawable/Drawable;

.field protected c:Z

.field protected d:F

.field protected d:I

.field protected d:Z

.field protected e:F

.field protected e:I

.field protected e:Z

.field protected f:F

.field protected f:I

.field protected f:Z

.field protected g:F

.field protected g:I

.field protected g:Z

.field protected h:I

.field protected h:Z

.field protected i:I

.field protected i:Z

.field protected j:I

.field protected j:Z

.field protected k:I

.field protected k:Z

.field protected l:I

.field protected l:Z

.field public m:I

.field protected m:Z

.field protected n:I

.field protected n:Z

.field protected o:I

.field protected o:Z

.field protected p:I

.field protected p:Z

.field protected q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/sohu/inputmethod/sogou/CandidateView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sohu/inputmethod/sogou/CandidateView;->r:Z

    .line 342
    const/high16 v0, 0x41d0

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/sogou/CandidateView;->q:I

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:F

    .line 104
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:[I

    .line 135
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->f:I

    .line 142
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    .line 143
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:Z

    .line 148
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:I

    .line 241
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->j:I

    .line 242
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->k:I

    .line 249
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:[I

    .line 264
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->h:Z

    .line 266
    iput-boolean v5, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->i:Z

    .line 268
    new-instance v0, Laom;

    invoke-direct {v0, p0}, Laom;-><init>(Lcom/sohu/inputmethod/sogou/CandidateView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laom;

    .line 285
    iput v3, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->m:I

    .line 302
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->l:Z

    .line 304
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->o:I

    .line 306
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->m:Z

    .line 307
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->n:Z

    .line 308
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->o:Z

    .line 310
    iput v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:I

    .line 318
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:Z

    .line 330
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Rect;

    .line 335
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Canvas;

    .line 337
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    .line 347
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)F
    .locals 1
    .parameter

    .prologue
    .line 520
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(Ljava/lang/CharSequence;I)F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;I)F
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 498
    if-nez p1, :cond_0

    .line 516
    :goto_0
    return v0

    .line 500
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/CandidateView;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    sget v0, Lcom/sohu/inputmethod/sogou/CandidateView;->q:I

    int-to-float v0, v0

    goto :goto_0

    .line 504
    :cond_1
    if-ltz p2, :cond_2

    .line 505
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:F

    .line 507
    :cond_2
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->h:Z

    if-eqz v1, :cond_3

    .line 508
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 511
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 513
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 514
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:F

    .line 515
    :cond_4
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->f:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 516
    goto :goto_0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->d:I

    return v0
.end method

.method protected a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 455
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 457
    if-gt v1, v6, :cond_0

    .line 476
    :goto_0
    return-object p1

    .line 459
    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    move v0, v1

    .line 462
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 463
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-boolean v3, v3, Laor;->a:Z

    if-eqz v3, :cond_4

    .line 464
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Paint;

    sub-int v4, v1, v0

    invoke-virtual {v3, p1, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 466
    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-lez v3, :cond_3

    if-lt v6, v0, :cond_1

    .line 468
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v0, v1, v0

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 472
    :cond_4
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 474
    iget v4, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-lez v3, :cond_5

    if-lt v6, v0, :cond_1

    .line 476
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 350
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:I

    if-eq v0, v1, :cond_0

    .line 351
    iput v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:I

    .line 352
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->invalidate()V

    .line 354
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 583
    return-void
.end method

.method protected a(IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 744
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:Z

    return v0
.end method

.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 524
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->n:I

    if-ne v1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->d:I

    if-gt p1, v1, :cond_0

    .line 527
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ZZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 632
    const/4 v0, 0x0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->l:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZI)Z

    move-result v0

    return v0
.end method

.method public final a(ZZZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZI)Z

    move-result v0

    return v0
.end method

.method public a(ZZZI)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 441
    sget-object v0, Laxr;->i:[I

    .line 442
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    if-eq v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->j:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:I

    if-ne v1, p1, :cond_1

    .line 443
    :cond_0
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:Z

    if-eqz v1, :cond_2

    .line 444
    sget-object v0, Laxr;->g:[I

    .line 450
    :cond_1
    :goto_0
    return-object v0

    .line 445
    :cond_2
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    if-eqz v1, :cond_1

    .line 446
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->n:I

    if-nez v1, :cond_1

    .line 447
    sget-object v0, Laxr;->h:[I

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->i:Z

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/CandidateView;->c(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->f:Z

    return v0
.end method

.method public b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-boolean v2, v2, Laor;->a:Z

    if-eq v2, v0, :cond_0

    .line 541
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    invoke-virtual {v2, p1}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_0

    .line 544
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidateInfo(II)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b(ZZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 638
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->l:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZI)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(ZZZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(II)I

    .line 626
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 627
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZI)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:I

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 827
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    invoke-virtual {v0}, Laor;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-boolean v2, v2, Laor;->a:Z

    if-eq v2, v1, :cond_0

    .line 559
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    invoke-virtual {v2, p1}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 560
    if-eqz v2, :cond_0

    .line 562
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getCandidateInfo(II)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 567
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 568
    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 569
    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 595
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 602
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    return v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Rect;

    .line 657
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Canvas;

    .line 658
    new-instance v0, Lawk;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lawk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    .line 659
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CandidateView::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawk;->a(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 611
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->d(I)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 711
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Canvas;

    .line 665
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/graphics/Rect;

    .line 666
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->a()V

    .line 668
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lawk;

    .line 669
    return-void
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:Z

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v0, v1}, Laor;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 771
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(ZZ)Z

    move-result v0

    .line 773
    if-eqz v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 776
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZ)Z

    goto :goto_0

    .line 778
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 779
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZ)Z

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 732
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v1, v2}, Laor;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v2, v3}, Laor;->a(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 734
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(IIZ)V

    .line 738
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 784
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v2, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZ)Z

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 787
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(ZZZ)Z

    goto :goto_0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 747
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laor;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    invoke-virtual {v1, v2}, Laor;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    if-lez v1, :cond_0

    .line 749
    iget v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->c:I

    iget v2, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(IIZ)V

    .line 753
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 792
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(ZZ)Z

    move-result v0

    .line 794
    if-eqz v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 797
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZ)Z

    goto :goto_0

    .line 799
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 800
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZZ)Z

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 762
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(ZZ)Z

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    if-eqz v0, :cond_0

    .line 809
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Z

    invoke-virtual {p0, v1, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->b(ZZZ)Z

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 766
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 767
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/CandidateView;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:I

    .line 836
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->invalidate()V

    .line 837
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laom;

    invoke-virtual {v0}, Laom;->a()Z

    .line 841
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 843
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 845
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 908
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    return-void
.end method

.method public setCandidateId(I)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->n:I

    .line 495
    return-void
.end method

.method public setCandidateViewListener(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Laoq;

    .line 420
    return-void
.end method

.method public setFootnoteShown(Z)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Z

    .line 415
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->b:F

    .line 416
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHardKeyboardEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 654
    return-void
.end method

.method public setIfDrawContactSign(Z)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->e:Z

    .line 399
    return-void
.end method

.method public setIfDrawEmojiWord(Z)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->f:Z

    .line 407
    return-void
.end method

.method public setKeepSameTextSize(Z)V
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->k:Z

    if-eqz v0, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:Z

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:Z

    goto :goto_0
.end method

.method public setMeasureEarlier(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->m:Z

    if-nez v0, :cond_1

    .line 373
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->k:Z

    .line 377
    :goto_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->k:Z

    if-nez v0, :cond_0

    .line 378
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->p:Z

    .line 380
    :cond_0
    return-void

    .line 375
    :cond_1
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->k:Z

    goto :goto_0
.end method

.method public setMeasureViewOnce(Z)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->m:Z

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->l:Z

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->l:Z

    goto :goto_0
.end method

.method public setPageCircular(Z)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->g:Z

    .line 700
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Lapn;

    invoke-virtual {v0, p1}, Lapn;->a(Landroid/view/View;)V

    .line 831
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->i:Z

    .line 817
    return-void
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 424
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->a:Landroid/text/Layout$Alignment;

    .line 425
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/CandidateView;->b()V

    .line 427
    :cond_0
    return-void
.end method

.method public setTheme(Lawc;Lawe;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 591
    return-void
.end method

.method public setUpdateWhenUp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->m:Z

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->j:Z

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->j:Z

    goto :goto_0
.end method

.method public setUseUpperCaseWidth(Z)V
    .locals 0
    .parameter

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/CandidateView;->h:Z

    .line 704
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 917
    return-void
.end method
