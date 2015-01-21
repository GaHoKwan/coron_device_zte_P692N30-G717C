.class Lcom/android/launcher2/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V
    .locals 1
    .parameter
    .parameter
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1606
    .local p2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1599
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountY:I
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    .line 1600
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountY:I
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    .line 1601
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountX:I
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    .line 1602
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountX:I
    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1792
    new-instance v0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher2/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    .line 1607
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1608
    iput-object p3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .line 1609
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1610
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1732
    return-void
.end method

.method computeEdge(I[I)V
    .locals 10
    .parameter "which"
    .parameter "edge"

    .prologue
    .line 1629
    iget-object v8, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1630
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_7

    .line 1631
    iget-object v8, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1632
    .local v2, cs:Lcom/android/launcher2/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1630
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1634
    :pswitch_0
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1635
    .local v5, left:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .local v4, j:I
    :goto_1
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1636
    aget v8, p2, v4

    if-lt v5, v8, :cond_1

    aget v8, p2, v4

    if-gez v8, :cond_2

    .line 1637
    :cond_1
    aput v5, p2, v4

    .line 1635
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1642
    .end local v4           #j:I
    .end local v5           #left:I
    :pswitch_1
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    .line 1643
    .local v6, right:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .restart local v4       #j:I
    :goto_2
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1644
    aget v8, p2, v4

    if-le v6, v8, :cond_3

    .line 1645
    aput v6, p2, v4

    .line 1643
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1650
    .end local v4           #j:I
    .end local v6           #right:I
    :pswitch_2
    iget v7, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 1651
    .local v7, top:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v4       #j:I
    :goto_3
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1652
    aget v8, p2, v4

    if-lt v7, v8, :cond_4

    aget v8, p2, v4

    if-gez v8, :cond_5

    .line 1653
    :cond_4
    aput v7, p2, v4

    .line 1651
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1658
    .end local v4           #j:I
    .end local v7           #top:I
    :pswitch_3
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    .line 1659
    .local v0, bottom:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v4       #j:I
    :goto_4
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_0

    .line 1660
    aget v8, p2, v4

    if-le v0, v8, :cond_6

    .line 1661
    aput v0, p2, v4

    .line 1659
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1667
    .end local v0           #bottom:I
    .end local v2           #cs:Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v4           #j:I
    :cond_7
    return-void

    .line 1632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    .prologue
    .line 1786
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1787
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 1735
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v4, :cond_1

    .line 1736
    const/4 v1, 0x1

    .line 1737
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1738
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1739
    .local v0, c:Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v1, :cond_0

    .line 1740
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1741
    const/4 v1, 0x0

    goto :goto_0

    .line 1743
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1747
    .end local v0           #c:Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v4
.end method

.method public getEdge(I)[I
    .locals 1
    .parameter "which"

    .prologue
    .line 1751
    packed-switch p1, :pswitch_data_0

    .line 1760
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 1753
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1755
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1757
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1766
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    .prologue
    .line 1772
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1773
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1780
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7
    .parameter "v"
    .parameter "whichEdge"

    .prologue
    const/4 v3, 0x1

    .line 1670
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1672
    .local v0, cs:Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v1

    .line 1674
    .local v1, edge:[I
    packed-switch p2, :pswitch_data_0

    .line 1704
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 1676
    :pswitch_0
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .local v2, i:I
    :goto_0
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1677
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    .end local v2           #i:I
    :pswitch_1
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .restart local v2       #i:I
    :goto_1
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1684
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    .line 1683
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1690
    .end local v2           #i:I
    :pswitch_2
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v2       #i:I
    :goto_2
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1691
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1690
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1697
    .end local v2           #i:I
    :pswitch_3
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v2       #i:I
    :goto_3
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1698
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    .line 1697
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1674
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1613
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountX:I
    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    .line 1615
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    .line 1613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1617
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    #getter for: Lcom/android/launcher2/CellLayout;->mCountY:I
    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1619
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 1617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1621
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1622
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1623
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1624
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1625
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1626
    return-void
.end method

.method shift(II)V
    .locals 4
    .parameter "whichEdge"
    .parameter "delta"

    .prologue
    .line 1708
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1709
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1710
    .local v0, c:Lcom/android/launcher2/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1722
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1712
    :pswitch_0
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1715
    :pswitch_1
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1718
    :pswitch_2
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1726
    .end local v0           #c:Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1727
    return-void

    .line 1710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2
    .parameter "edge"

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1814
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1815
    return-void
.end method
