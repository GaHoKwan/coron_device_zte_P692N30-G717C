.class public Lawq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:F

.field public a:I

.field public a:Landroid/graphics/drawable/Drawable;

.field public a:Lawo;

.field public a:Lawq;

.field public a:Laws;

.field public a:Lawx;

.field public a:Laxn;

.field public a:Ljava/lang/CharSequence;

.field public a:Ljava/lang/String;

.field public a:Z

.field public a:[I

.field public a:[Landroid/graphics/drawable/Drawable;

.field public a:[Lawq;

.field public b:F

.field public b:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public b:Lawo;

.field public b:Ljava/lang/CharSequence;

.field public b:Z

.field public b:[Landroid/graphics/drawable/Drawable;

.field public b:[Lawq;

.field public c:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/CharSequence;

.field public c:Z

.field public c:[Landroid/graphics/drawable/Drawable;

.field public c:[Lawq;

.field public d:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public d:Z

.field public d:[Landroid/graphics/drawable/Drawable;

.field public d:[Lawq;

.field public e:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:I

.field public f:Z

.field public g:I

.field public g:Z

.field public h:I

.field public h:Z

.field public i:I

.field public i:Z

.field public j:I

.field public j:Z

.field public k:I

.field public l:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawq;->j:Z

    .line 430
    sget-object v0, Laws;->a:Laws;

    iput-object v0, p0, Lawq;->a:Laws;

    .line 433
    return-void
.end method

.method synthetic constructor <init>(Lawn;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lawq;-><init>()V

    return-void
.end method

.method private a(Lawq;)V
    .locals 1
    .parameter

    .prologue
    .line 494
    if-ne p1, p0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p1, Lawq;->a:Ljava/lang/String;

    iput-object v0, p0, Lawq;->a:Ljava/lang/String;

    .line 499
    iget v0, p1, Lawq;->a:I

    iput v0, p0, Lawq;->a:I

    .line 500
    iget-object v0, p1, Lawq;->a:[I

    iput-object v0, p0, Lawq;->a:[I

    .line 501
    iget-object v0, p1, Lawq;->d:Ljava/lang/CharSequence;

    iput-object v0, p0, Lawq;->d:Ljava/lang/CharSequence;

    .line 502
    iget-object v0, p1, Lawq;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Lawq;->b:Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p1, Lawq;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Lawq;->c:Ljava/lang/CharSequence;

    .line 505
    iget-object v0, p1, Lawq;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->a:Landroid/graphics/drawable/Drawable;

    .line 506
    iget-object v0, p1, Lawq;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->b:Landroid/graphics/drawable/Drawable;

    .line 507
    iget-object v0, p1, Lawq;->a:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->a:[Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v0, p1, Lawq;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->c:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v0, p1, Lawq;->c:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->c:[Landroid/graphics/drawable/Drawable;

    .line 511
    iget-object v0, p1, Lawq;->d:[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lawq;->d:[Landroid/graphics/drawable/Drawable;

    .line 513
    iget-boolean v0, p1, Lawq;->h:Z

    iput-boolean v0, p0, Lawq;->h:Z

    .line 514
    iget-boolean v0, p1, Lawq;->e:Z

    iput-boolean v0, p0, Lawq;->e:Z

    .line 515
    iget-boolean v0, p1, Lawq;->f:Z

    iput-boolean v0, p0, Lawq;->f:Z

    .line 516
    iget-boolean v0, p1, Lawq;->g:Z

    iput-boolean v0, p0, Lawq;->g:Z

    .line 518
    iget-boolean v0, p1, Lawq;->i:Z

    iput-boolean v0, p0, Lawq;->i:Z

    .line 520
    iget-boolean v0, p1, Lawq;->d:Z

    iput-boolean v0, p0, Lawq;->d:Z

    .line 521
    iget-boolean v0, p1, Lawq;->c:Z

    iput-boolean v0, p0, Lawq;->c:Z

    .line 522
    iget-boolean v0, p1, Lawq;->b:Z

    iput-boolean v0, p0, Lawq;->b:Z

    .line 523
    iget-boolean v0, p1, Lawq;->a:Z

    iput-boolean v0, p0, Lawq;->a:Z

    .line 525
    iget v0, p1, Lawq;->f:I

    iput v0, p0, Lawq;->f:I

    .line 526
    iget v0, p1, Lawq;->e:I

    iput v0, p0, Lawq;->e:I

    .line 534
    iget-object v0, p1, Lawq;->a:Lawo;

    iput-object v0, p0, Lawq;->a:Lawo;

    .line 535
    iget-object v0, p1, Lawq;->b:Lawo;

    iput-object v0, p0, Lawq;->b:Lawo;

    .line 536
    iget-object v0, p1, Lawq;->a:Laxn;

    iput-object v0, p0, Lawq;->a:Laxn;

    .line 537
    iget-object v0, p1, Lawq;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lawq;->a:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 667
    iget-boolean v0, p0, Lawq;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawq;->a:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lawq;->a:I

    goto :goto_0
.end method

.method public a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    iget v0, p0, Lawq;->a:F

    iget v1, p0, Lawq;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 607
    iget v1, p0, Lawq;->b:F

    iget v2, p0, Lawq;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 608
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 674
    iget-boolean v1, p0, Lawq;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lawq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 675
    iget-object v0, p0, Lawq;->b:Landroid/graphics/drawable/Drawable;

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 676
    :cond_1
    iget-boolean v1, p0, Lawq;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lawq;->a:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 677
    iget v1, p0, Lawq;->e:I

    iget-object v2, p0, Lawq;->a:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lawq;->a:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lawq;->e:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 678
    :cond_2
    iget-object v1, p0, Lawq;->c:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 679
    iget-object v0, p0, Lawq;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 681
    :cond_3
    iget v1, p0, Lawq;->e:I

    iget-object v2, p0, Lawq;->c:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lawq;->c:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lawq;->e:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lawq;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lawq;->a:Z

    .line 548
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 460
    iget v0, p0, Lawq;->g:I

    .line 461
    iput p1, p0, Lawq;->g:I

    .line 463
    iget v1, p0, Lawq;->g:I

    if-eq v0, v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lawq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lawq;->a:[Lawq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawq;->a:[Lawq;

    array-length v0, v0

    iget v1, p0, Lawq;->g:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lawq;->a:[Lawq;

    iget v1, p0, Lawq;->g:I

    aget-object v0, v0, v1

    .line 467
    :goto_0
    invoke-direct {p0, v0}, Lawq;->a(Lawq;)V

    .line 469
    :cond_0
    invoke-virtual {p0}, Lawq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lawq;->b:[Lawq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lawq;->b:[Lawq;

    array-length v0, v0

    iget v1, p0, Lawq;->g:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lawq;->b:[Lawq;

    iget v1, p0, Lawq;->g:I

    aget-object v0, v0, v1

    :goto_1
    iput-object v0, p0, Lawq;->a:Lawq;

    .line 474
    :cond_1
    return-void

    :cond_2
    move-object v0, p0

    .line 465
    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lawq;->a:Lawq;

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lawq;->a(ZZ)V

    .line 561
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 564
    iget-boolean v1, p0, Lawq;->h:Z

    if-nez v1, :cond_2

    .line 566
    iput-boolean v0, p0, Lawq;->a:Z

    .line 567
    iget-boolean v1, p0, Lawq;->g:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 568
    iget-boolean v1, p0, Lawq;->b:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lawq;->b:Z

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iput-boolean v0, p0, Lawq;->a:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lawq;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 591
    iget v0, p0, Lawq;->a:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lawq;->a:F

    iget v1, p0, Lawq;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lawq;->b:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lawq;->b:F

    iget v1, p0, Lawq;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[I
    .locals 2

    .prologue
    .line 621
    sget-object v0, Laxr;->i:[I

    .line 623
    iget-boolean v1, p0, Lawq;->c:Z

    if-eqz v1, :cond_1

    .line 624
    sget-object v0, Laxr;->j:[I

    .line 647
    :cond_0
    :goto_0
    return-object v0

    .line 626
    :cond_1
    iget-boolean v1, p0, Lawq;->b:Z

    if-eqz v1, :cond_3

    .line 627
    iget-boolean v0, p0, Lawq;->a:Z

    if-eqz v0, :cond_2

    .line 628
    sget-object v0, Laxr;->a:[I

    goto :goto_0

    .line 630
    :cond_2
    sget-object v0, Laxr;->b:[I

    goto :goto_0

    .line 633
    :cond_3
    iget-boolean v1, p0, Lawq;->g:Z

    if-eqz v1, :cond_5

    .line 634
    iget-boolean v0, p0, Lawq;->a:Z

    if-eqz v0, :cond_4

    .line 635
    sget-object v0, Laxr;->d:[I

    goto :goto_0

    .line 637
    :cond_4
    sget-object v0, Laxr;->c:[I

    goto :goto_0

    .line 640
    :cond_5
    iget-boolean v1, p0, Lawq;->a:Z

    if-eqz v1, :cond_0

    .line 641
    sget-object v0, Laxr;->g:[I

    goto :goto_0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lawq;->d:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lawq;->c:Landroid/graphics/drawable/Drawable;

    .line 691
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lawq;->e:I

    iget-object v1, p0, Lawq;->d:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lawq;->d:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lawq;->e:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 477
    iget v0, p0, Lawq;->h:I

    .line 478
    iput p1, p0, Lawq;->h:I

    .line 480
    iget v1, p0, Lawq;->h:I

    if-eq v0, v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lawq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lawq;->c:[Lawq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lawq;->c:[Lawq;

    array-length v0, v0

    iget v1, p0, Lawq;->h:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lawq;->c:[Lawq;

    iget v1, p0, Lawq;->h:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawq;->c:[Lawq;

    iget v1, p0, Lawq;->h:I

    aget-object v0, v0, v1

    .line 484
    :goto_0
    invoke-direct {p0, v0}, Lawq;->a(Lawq;)V

    .line 487
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 482
    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-boolean p1, p0, Lawq;->d:Z

    .line 656
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lawq;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lawq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lawq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 695
    const/4 v1, 0x0

    .line 697
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :try_start_1
    iget-object v1, p0, Lawq;->a:Lawq;

    if-ne v1, p0, :cond_0

    .line 699
    iput-object v0, v0, Lawq;->a:Lawq;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    :cond_0
    :goto_0
    return-object v0

    .line 701
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 702
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 701
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lawq;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lawq;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
