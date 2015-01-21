.class public Lavd;
.super Lavf;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/util/Observer;


# static fields
.field static final synthetic n:Z


# instance fields
.field protected a:F

.field protected a:Landroid/graphics/Canvas;

.field protected a:Landroid/graphics/Paint$FontMetricsInt;

.field protected a:Landroid/graphics/Paint;

.field protected a:Landroid/graphics/Rect;

.field protected a:Landroid/graphics/drawable/Drawable;

.field protected a:Landroid/text/Layout$Alignment;

.field protected a:Laoq;

.field protected a:Laor;

.field protected a:Lapn;

.field protected a:Lave;

.field protected a:Lawk;

.field protected a:Lawv;

.field protected a:Laxn;

.field protected a:Ljava/util/Vector;

.field protected a:[I

.field protected b:F

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

.field protected m:I

.field protected m:Z

.field protected n:I

.field protected o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lavd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lavd;->n:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lavf;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 68
    const/high16 v0, 0x41c0

    iput v0, p0, Lavd;->a:F

    .line 98
    new-array v0, v5, [I

    iput-object v0, p0, Lavd;->a:[I

    .line 133
    iput v2, p0, Lavd;->g:I

    .line 138
    iput-boolean v4, p0, Lavd;->c:Z

    .line 143
    iput-boolean v1, p0, Lavd;->d:Z

    .line 148
    iput v2, p0, Lavd;->h:I

    .line 243
    iput v1, p0, Lavd;->k:I

    .line 248
    iput v1, p0, Lavd;->l:I

    .line 278
    new-array v0, v5, [I

    iput-object v0, p0, Lavd;->b:[I

    .line 298
    iput-boolean v1, p0, Lavd;->h:Z

    .line 303
    iput-boolean v4, p0, Lavd;->i:Z

    .line 308
    new-instance v0, Lave;

    invoke-direct {v0, p0}, Lave;-><init>(Lavd;)V

    iput-object v0, p0, Lavd;->a:Lave;

    .line 328
    iput v2, p0, Lavd;->n:I

    .line 339
    iput-boolean v1, p0, Lavd;->j:Z

    .line 353
    iput-object v3, p0, Lavd;->a:Landroid/graphics/Rect;

    .line 358
    iput-object v3, p0, Lavd;->a:Landroid/graphics/Canvas;

    .line 363
    iput-object v3, p0, Lavd;->a:Lawk;

    .line 375
    iput-boolean v1, p0, Lavd;->k:Z

    .line 380
    iput-boolean v1, p0, Lavd;->l:Z

    .line 385
    iput v2, p0, Lavd;->o:I

    .line 390
    iput-boolean v1, p0, Lavd;->m:Z

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)F
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 634
    if-nez p1, :cond_0

    .line 649
    :goto_0
    return v0

    .line 637
    :cond_0
    if-ltz p2, :cond_1

    .line 638
    invoke-virtual {p0, p2}, Lavd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lavd;->c:F

    .line 640
    :cond_1
    iget-boolean v1, p0, Lavd;->h:Z

    if-eqz v1, :cond_2

    .line 641
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 644
    :cond_2
    iget-object v1, p0, Lavd;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    iget v2, p0, Lavd;->b:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 646
    iget v1, p0, Lavd;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 647
    iget v0, p0, Lavd;->a:F

    .line 648
    :cond_3
    iget v1, p0, Lavd;->f:F

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 649
    goto :goto_0
.end method

.method public a()I
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lavd;->a:Laor;

    if-eqz v0, :cond_0

    iget v0, p0, Lavd;->e:I

    iget-object v1, p0, Lavd;->a:Laor;

    iget-object v1, v1, Laor;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lavd;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 990
    :cond_0
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lavd;->a:Laor;

    iget-object v0, v0, Laor;->a:Ljava/util/Vector;

    iget v1, p0, Lavd;->e:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lavd;->f:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 571
    if-gt v1, v6, :cond_0

    .line 590
    :goto_0
    return-object p1

    .line 573
    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    move v0, v1

    .line 576
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 577
    if-nez v2, :cond_2

    iget-object v3, p0, Lavd;->a:Laor;

    iget-boolean v3, v3, Laor;->a:Z

    if-eqz v3, :cond_4

    .line 578
    :cond_2
    iget-object v3, p0, Lavd;->a:Landroid/graphics/Paint;

    sub-int v4, v1, v0

    invoke-virtual {v3, p1, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 580
    iget v4, p0, Lavd;->e:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-lez v3, :cond_3

    if-lt v6, v0, :cond_1

    .line 582
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

    .line 586
    :cond_4
    iget-object v3, p0, Lavd;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 588
    iget v4, p0, Lavd;->e:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, p2

    if-lez v3, :cond_5

    if-lt v6, v0, :cond_1

    .line 590
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

.method public a(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lavd;->a:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 512
    iput-object p1, p0, Lavd;->a:Landroid/text/Layout$Alignment;

    .line 513
    invoke-virtual {p0}, Lavd;->i()V

    .line 515
    :cond_0
    return-void
.end method

.method public a(Laoq;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lavd;->a:Laoq;

    .line 502
    return-void
.end method

.method public a(Lawc;Lawe;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 741
    return-void
.end method

.method public a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 695
    invoke-virtual {p0}, Lavd;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v1

    .line 698
    :cond_1
    iget-object v2, p0, Lavd;->a:Laor;

    iget-boolean v2, v2, Laor;->a:Z

    if-eq v2, v0, :cond_0

    .line 701
    iget-object v2, p0, Lavd;->a:Laor;

    invoke-virtual {v2, p1}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 702
    if-eqz v2, :cond_0

    .line 704
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 708
    iget-object v2, p0, Lavd;->a:Landroid/content/Context;

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

.method public a(I)[I
    .locals 2
    .parameter

    .prologue
    .line 547
    sget-object v0, Laxr;->i:[I

    .line 548
    iget v1, p0, Lavd;->f:I

    if-eq v1, p1, :cond_0

    iget-boolean v1, p0, Lavd;->m:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lavd;->n:I

    if-ne v1, p1, :cond_1

    .line 549
    :cond_0
    iget-boolean v1, p0, Lavd;->d:Z

    if-eqz v1, :cond_2

    .line 550
    sget-object v0, Laxr;->g:[I

    .line 556
    :cond_1
    :goto_0
    return-object v0

    .line 551
    :cond_2
    iget-boolean v1, p0, Lavd;->c:Z

    if-eqz v1, :cond_1

    .line 552
    iget v1, p0, Lavd;->m:I

    if-nez v1, :cond_1

    .line 553
    sget-object v0, Laxr;->h:[I

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 730
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 1169
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-boolean v0, p0, Lavd;->k:Z

    if-eqz v0, :cond_0

    .line 413
    iput-boolean p1, p0, Lavd;->j:Z

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavd;->j:Z

    goto :goto_0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput p1, p0, Lavd;->m:I

    .line 623
    return-void
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-boolean v0, p0, Lavd;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lavd;->r:Z

    if-nez v0, :cond_1

    .line 427
    iput-boolean v1, p0, Lavd;->k:Z

    .line 431
    :goto_0
    iget-boolean v0, p0, Lavd;->k:Z

    if-nez v0, :cond_0

    .line 432
    iput-boolean v1, p0, Lavd;->j:Z

    .line 434
    :cond_0
    return-void

    .line 429
    :cond_1
    iput-boolean p1, p0, Lavd;->k:Z

    goto :goto_0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 1156
    iget-boolean v0, p0, Lavd;->i:Z

    if-nez v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1158
    :cond_0
    invoke-virtual {p0, p1}, Lavd;->c(I)V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-boolean v0, p0, Lavd;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lavd;->r:Z

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavd;->m:Z

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_0
    iput-boolean p1, p0, Lavd;->m:Z

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lavd;->f:Z

    return v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method

.method public f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-boolean v0, p0, Lavd;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lavd;->r:Z

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavd;->l:Z

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    iput-boolean p1, p0, Lavd;->l:Z

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-boolean p1, p0, Lavd;->b:Z

    .line 491
    if-eqz p1, :cond_0

    iget-object v0, p0, Lavd;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    :goto_0
    iput v0, p0, Lavd;->b:F

    .line 492
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 399
    iget v0, p0, Lavd;->n:I

    if-eq v0, v1, :cond_0

    .line 400
    iput v1, p0, Lavd;->n:I

    .line 401
    invoke-virtual {p0}, Lavd;->l()V

    .line 403
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 885
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public i(Z)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-boolean p1, p0, Lavd;->g:Z

    .line 968
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 1187
    iget-object v0, p0, Lavd;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 1188
    const/4 v0, -0x1

    iput v0, p0, Lavd;->f:I

    .line 1189
    invoke-virtual {p0}, Lavd;->l()V

    .line 1190
    return-void
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1146
    iput-boolean p1, p0, Lavd;->i:Z

    .line 1147
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lavd;->a:Lave;

    invoke-virtual {v0}, Lave;->a()Z

    .line 1199
    iget-object v0, p0, Lavd;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lavd;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 1201
    iget-object v0, p0, Lavd;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 1203
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1329
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1340
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1351
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1362
    return-void
.end method
