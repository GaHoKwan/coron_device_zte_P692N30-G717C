.class public Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field public isLockedToGrid:Z

.field private mTag:Ljava/lang/Object;

.field public tmpCellX:I

.field public tmpCellY:I

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 653
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 647
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 654
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 655
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 656
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 679
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 680
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 681
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 682
    iput p3, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 683
    iput p4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 684
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 659
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 647
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 660
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 661
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 662
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 665
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 666
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 667
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 668
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 672
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 673
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 674
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 675
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 676
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    .line 716
    return-void
.end method

.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 689
    iget-boolean v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_0

    .line 690
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 691
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 692
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 693
    .local v2, myCellX:I
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 695
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 697
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 700
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    .line 702
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    .line 708
    .end local v0           #myCellHSpan:I
    .end local v1           #myCellVSpan:I
    .end local v2           #myCellX:I
    .end local v3           #myCellY:I
    :cond_0
    :goto_0
    return-void

    .line 704
    .restart local v0       #myCellHSpan:I
    .restart local v1       #myCellVSpan:I
    .restart local v2       #myCellX:I
    .restart local v3       #myCellY:I
    :cond_1
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    .line 705
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
