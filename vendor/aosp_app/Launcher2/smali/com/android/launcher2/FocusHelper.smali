.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 620
    .local v0, count:I
    add-int v1, p1, p2

    .line 621
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 622
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 623
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 628
    .end local v2           #newV:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 626
    .restart local v2       #newV:Landroid/view/View;
    :cond_1
    add-int/2addr v1, p2

    .line 627
    goto :goto_0

    .line 628
    .end local v2           #newV:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 80
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 81
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 125
    check-cast p0, Lcom/android/launcher2/PagedView;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 583
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 594
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 595
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 597
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 648
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 649
    .local v14, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 650
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 651
    .local v2, cellCountY:I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 652
    .local v10, row:I
    add-int v8, v10, p3

    .line 653
    .local v8, newRow:I
    if-ltz v8, :cond_8

    if-ge v8, v2, :cond_8

    .line 654
    const v3, 0x7f7fffff

    .line 655
    .local v3, closestDistance:F
    const/4 v4, -0x1

    .line 656
    .local v4, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 657
    .local v6, index:I
    if-gez p3, :cond_2

    const/4 v5, -0x1

    .line 658
    .local v5, endIndex:I
    :goto_0
    if-eq v6, v5, :cond_7

    .line 659
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 660
    .local v9, newV:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 661
    .local v13, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_4

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_3

    const/4 v11, 0x1

    .line 662
    .local v11, satisfiesRow:Z
    :goto_1
    if-eqz v11, :cond_1

    instance-of v15, v9, Lcom/android/launcher2/BubbleTextView;

    if-nez v15, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/FolderIcon;

    if-eqz v15, :cond_1

    .line 664
    :cond_0
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 666
    .local v12, tmpDistance:F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_1

    .line 667
    move v4, v6

    .line 668
    move v3, v12

    .line 671
    .end local v12           #tmpDistance:F
    :cond_1
    if-gt v6, v5, :cond_6

    .line 672
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 657
    .end local v5           #endIndex:I
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 661
    .restart local v5       #endIndex:I
    .restart local v9       #newV:Landroid/view/View;
    .restart local v13       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    :cond_4
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 674
    .restart local v11       #satisfiesRow:Z
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 677
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_7
    const/4 v15, -0x1

    if-le v4, v15, :cond_8

    .line 678
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 681
    .end local v3           #closestDistance:F
    .end local v4           #closestIndex:I
    .end local v5           #endIndex:I
    .end local v6           #index:I
    :goto_2
    return-object v15

    :cond_8
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 632
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 633
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 637
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 638
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 25
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 292
    const-string v22, "FocusHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleAppsCustomizeKeyEvent: v = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", keyCode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", parent = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 298
    .local v10, itemContainer:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 299
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, countX:I
    move-object/from16 v22, v16

    .line 300
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 309
    .local v7, countY:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    .line 310
    .local v5, container:Lcom/android/launcher2/PagedView;
    invoke-static {v5}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 311
    .local v17, tabHost:Landroid/widget/TabHost;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    .line 312
    .local v18, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 313
    .local v9, iconIndex:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 314
    .local v11, itemCount:I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v15

    .line 315
    .local v15, pageIndex:I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 317
    .local v14, pageCount:I
    rem-int v20, v9, v6

    .line 318
    .local v20, x:I
    div-int v21, v9, v6

    .line 320
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 321
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 322
    .local v8, handleKeyEvent:Z
    :goto_1
    const/4 v12, 0x0

    .line 325
    .local v12, newParent:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 326
    .local v3, child:Landroid/view/View;
    const/16 v19, 0x0

    .line 327
    .local v19, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 445
    :goto_2
    return v19

    .line 302
    .end local v2           #action:I
    .end local v3           #child:Landroid/view/View;
    .end local v5           #container:Lcom/android/launcher2/PagedView;
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v8           #handleKeyEvent:Z
    .end local v9           #iconIndex:I
    .end local v10           #itemContainer:Landroid/view/ViewGroup;
    .end local v11           #itemCount:I
    .end local v12           #newParent:Landroid/view/ViewGroup;
    .end local v14           #pageCount:I
    .end local v15           #pageIndex:I
    .end local v16           #parentLayout:Landroid/view/ViewGroup;
    .end local v17           #tabHost:Landroid/widget/TabHost;
    .end local v18           #tabs:Landroid/widget/TabWidget;
    .end local v19           #wasHandled:Z
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16       #parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10       #itemContainer:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 303
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6       #countX:I
    move-object/from16 v22, v16

    .line 304
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7       #countY:I
    goto :goto_0

    .line 321
    .restart local v2       #action:I
    .restart local v5       #container:Lcom/android/launcher2/PagedView;
    .restart local v9       #iconIndex:I
    .restart local v11       #itemCount:I
    .restart local v14       #pageCount:I
    .restart local v15       #pageIndex:I
    .restart local v17       #tabHost:Landroid/widget/TabHost;
    .restart local v18       #tabs:Landroid/widget/TabWidget;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 329
    .restart local v3       #child:Landroid/view/View;
    .restart local v8       #handleKeyEvent:Z
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    .restart local v19       #wasHandled:Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 331
    if-lez v9, :cond_3

    .line 332
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 344
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 345
    goto :goto_2

    .line 334
    :cond_3
    if-lez v15, :cond_2

    .line 335
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 336
    if-eqz v12, :cond_2

    .line 337
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 338
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 347
    :sswitch_1
    if-eqz v8, :cond_4

    .line 349
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 350
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 362
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 363
    goto :goto_2

    .line 352
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 353
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 354
    if-eqz v12, :cond_4

    .line 355
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 356
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 365
    :sswitch_2
    if-eqz v8, :cond_6

    .line 367
    if-lez v21, :cond_7

    .line 368
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 369
    .local v13, newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 374
    .end local v13           #newiconIndex:I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 375
    goto/16 :goto_2

    .line 371
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 377
    :sswitch_3
    if-eqz v8, :cond_8

    .line 379
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 380
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 381
    .restart local v13       #newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 384
    .end local v13           #newiconIndex:I
    :cond_8
    const/16 v19, 0x1

    .line 385
    goto/16 :goto_2

    .line 388
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 390
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 391
    .local v4, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 393
    .end local v4           #clickListener:Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 394
    goto/16 :goto_2

    .line 396
    :sswitch_5
    if-eqz v8, :cond_a

    .line 399
    if-lez v15, :cond_b

    .line 400
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 401
    if-eqz v12, :cond_a

    .line 402
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 403
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 410
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 411
    goto/16 :goto_2

    .line 407
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 413
    :sswitch_6
    if-eqz v8, :cond_c

    .line 416
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 417
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 418
    if-eqz v12, :cond_c

    .line 419
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 420
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 421
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 427
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 428
    goto/16 :goto_2

    .line 424
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 430
    :sswitch_7
    if-eqz v8, :cond_e

    .line 432
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 434
    :cond_e
    const/16 v19, 0x1

    .line 435
    goto/16 :goto_2

    .line 437
    :sswitch_8
    if-eqz v8, :cond_f

    .line 439
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 441
    :cond_f
    const/16 v19, 0x1

    .line 442
    goto/16 :goto_2

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 91
    .local v4, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 92
    .local v1, contents:Landroid/view/ViewGroup;
    const v6, 0x7f07000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, shop:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 96
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v5, 0x0

    .line 97
    .local v5, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 95
    .end local v2           #handleKeyEvent:Z
    .end local v5           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    .restart local v2       #handleKeyEvent:Z
    .restart local v5       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 101
    if-eq p0, v3, :cond_2

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 105
    :cond_2
    const/4 v5, 0x1

    .line 106
    goto :goto_1

    .line 108
    :pswitch_2
    if-eqz v2, :cond_0

    .line 110
    if-ne p0, v3, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 112
    const/4 v5, 0x1

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 849
    const-string v9, "FocusHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleFolderKeyEvent: v = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 853
    .local v5, parent:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 854
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 855
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v6, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 857
    .local v6, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 858
    .local v0, action:I
    if-eq v0, v8, :cond_0

    move v2, v8

    .line 859
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 860
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 928
    :goto_1
    return v7

    .line 858
    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 862
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 864
    invoke-static {v3, v5, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 865
    .local v4, newIcon:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 869
    .end local v4           #newIcon:Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    .line 870
    goto :goto_1

    .line 872
    :sswitch_1
    if-eqz v2, :cond_2

    .line 874
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 875
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 876
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 881
    .end local v4           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 882
    goto :goto_1

    .line 878
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 884
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 886
    invoke-static {v3, v5, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 887
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 888
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 891
    .end local v4           #newIcon:Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    .line 892
    goto :goto_1

    .line 894
    :sswitch_3
    if-eqz v2, :cond_5

    .line 896
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 897
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_6

    .line 898
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 903
    .end local v4           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 904
    goto :goto_1

    .line 900
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 906
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 908
    invoke-static {v3, v5, v12, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 909
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_7

    .line 910
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 913
    .end local v4           #newIcon:Landroid/view/View;
    :cond_7
    const/4 v7, 0x1

    .line 914
    goto :goto_1

    .line 916
    :sswitch_5
    if-eqz v2, :cond_8

    .line 918
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-static {v3, v5, v8, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 920
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_8

    .line 921
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 924
    .end local v4           #newIcon:Landroid/view/View;
    :cond_8
    const/4 v7, 0x1

    .line 925
    goto :goto_1

    .line 860
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 16
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 513
    const-string v13, "FocusHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleHotseatButtonKeyEvent: v = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tag = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", event = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", orientation = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 518
    .local v10, parent:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 519
    .local v6, launcher:Landroid/view/ViewGroup;
    const v13, 0x7f070027

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Workspace;

    .line 520
    .local v12, workspace:Lcom/android/launcher2/Workspace;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 521
    .local v3, buttonIndex:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 522
    .local v2, buttonCount:I
    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v9

    .line 528
    .local v9, pageIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 529
    .local v1, action:I
    const/4 v13, 0x1

    if-eq v1, v13, :cond_0

    const/4 v5, 0x1

    .line 530
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v11, 0x0

    .line 531
    .local v11, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 574
    :goto_1
    return v11

    .line 529
    .end local v5           #handleKeyEvent:Z
    .end local v11           #wasHandled:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 533
    .restart local v5       #handleKeyEvent:Z
    .restart local v11       #wasHandled:Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 535
    if-lez v3, :cond_2

    .line 536
    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 541
    :cond_1
    :goto_2
    const/4 v11, 0x1

    .line 542
    goto :goto_1

    .line 538
    :cond_2
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 544
    :pswitch_1
    if-eqz v5, :cond_3

    .line 546
    add-int/lit8 v13, v2, -0x1

    if-ge v3, v13, :cond_4

    .line 547
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 552
    :cond_3
    :goto_3
    const/4 v11, 0x1

    .line 553
    goto :goto_1

    .line 549
    :cond_4
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 555
    :pswitch_2
    if-eqz v5, :cond_5

    .line 557
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 558
    .local v7, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 559
    .local v4, children:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v7, v4, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v8

    .line 560
    .local v8, newIcon:Landroid/view/View;
    if-eqz v8, :cond_6

    .line 561
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 566
    .end local v4           #children:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v7           #layout:Lcom/android/launcher2/CellLayout;
    .end local v8           #newIcon:Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v11, 0x1

    .line 567
    goto :goto_1

    .line 563
    .restart local v4       #children:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .restart local v7       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v8       #newIcon:Landroid/view/View;
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 570
    .end local v4           #children:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v7           #layout:Lcom/android/launcher2/CellLayout;
    .end local v8           #newIcon:Landroid/view/View;
    :pswitch_3
    const/4 v11, 0x1

    .line 571
    goto :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 689
    const-string v13, "FocusHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleIconKeyEvent: v = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tag = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", event = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 694
    .local v9, parent:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 695
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Workspace;

    .line 696
    .local v12, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 697
    .local v4, launcher:Landroid/view/ViewGroup;
    const v13, 0x7f070030

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 698
    .local v10, tabs:Landroid/view/ViewGroup;
    const v13, 0x7f07002f

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 699
    .local v3, hotseat:Landroid/view/ViewGroup;
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 700
    .local v8, pageIndex:I
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 702
    .local v7, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 703
    .local v1, action:I
    const/4 v13, 0x1

    if-eq v1, v13, :cond_1

    const/4 v2, 0x1

    .line 704
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v11, 0x0

    .line 705
    .local v11, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 841
    :cond_0
    :goto_1
    return v11

    .line 703
    .end local v2           #handleKeyEvent:Z
    .end local v11           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 707
    .restart local v2       #handleKeyEvent:Z
    .restart local v11       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_2

    .line 709
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-static {v5, v9, v0, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 710
    .local v6, newIcon:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 711
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 726
    .end local v6           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v11, 0x1

    .line 727
    goto :goto_1

    .line 713
    .restart local v6       #newIcon:Landroid/view/View;
    :cond_3
    if-lez v8, :cond_2

    .line 714
    add-int/lit8 v13, v8, -0x1

    invoke-static {v12, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 715
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, -0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 717
    if-eqz v6, :cond_4

    .line 718
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 721
    :cond_4
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 729
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_1
    if-eqz v2, :cond_5

    .line 731
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v5, v9, v0, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 732
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_6

    .line 733
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 747
    .end local v6           #newIcon:Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v11, 0x1

    .line 748
    goto :goto_1

    .line 735
    .restart local v6       #newIcon:Landroid/view/View;
    :cond_6
    add-int/lit8 v13, v7, -0x1

    if-ge v8, v13, :cond_5

    .line 736
    add-int/lit8 v13, v8, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 737
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 738
    if-eqz v6, :cond_7

    .line 739
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 742
    :cond_7
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 750
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_0

    .line 752
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-static {v5, v9, v0, v13}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 753
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_8

    .line 754
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 755
    const/4 v11, 0x1

    goto :goto_1

    .line 757
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 762
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v2, :cond_0

    .line 764
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v5, v9, v0, v13}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    .line 765
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_9

    .line 766
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 767
    const/4 v11, 0x1

    goto :goto_1

    .line 768
    :cond_9
    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 774
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_a

    .line 777
    if-lez v8, :cond_c

    .line 778
    add-int/lit8 v13, v8, -0x1

    invoke-static {v12, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 779
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 780
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_b

    .line 781
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 793
    .end local v6           #newIcon:Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v11, 0x1

    .line 794
    goto/16 :goto_1

    .line 784
    .restart local v6       #newIcon:Landroid/view/View;
    :cond_b
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 787
    .end local v6           #newIcon:Landroid/view/View;
    :cond_c
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 788
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_a

    .line 789
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 796
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_5
    if-eqz v2, :cond_d

    .line 799
    add-int/lit8 v13, v7, -0x1

    if-ge v8, v13, :cond_f

    .line 800
    add-int/lit8 v13, v8, 0x1

    invoke-static {v12, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 801
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 802
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_e

    .line 803
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 816
    .end local v6           #newIcon:Landroid/view/View;
    :cond_d
    :goto_5
    const/4 v11, 0x1

    .line 817
    goto/16 :goto_1

    .line 806
    .restart local v6       #newIcon:Landroid/view/View;
    :cond_e
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_5

    .line 809
    .end local v6           #newIcon:Landroid/view/View;
    :cond_f
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, -0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 811
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_d

    .line 812
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 819
    .end local v6           #newIcon:Landroid/view/View;
    :sswitch_6
    if-eqz v2, :cond_10

    .line 821
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 822
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_10

    .line 823
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 826
    .end local v6           #newIcon:Landroid/view/View;
    :cond_10
    const/4 v11, 0x1

    .line 827
    goto/16 :goto_1

    .line 829
    :sswitch_7
    if-eqz v2, :cond_11

    .line 831
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, -0x1

    invoke-static {v5, v9, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 833
    .restart local v6       #newIcon:Landroid/view/View;
    if-eqz v6, :cond_11

    .line 834
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 837
    .end local v6           #newIcon:Landroid/view/View;
    :cond_11
    const/4 v11, 0x1

    .line 838
    goto/16 :goto_1

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "w"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 139
    const-string v21, "FocusHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handlePagedViewGridLayoutWidgetKeyEvent: w = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", keyCode = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", event = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/PagedViewGridLayout;

    .line 144
    .local v13, parent:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 145
    .local v7, container:Lcom/android/launcher2/PagedView;
    invoke-static {v7}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v14

    .line 146
    .local v14, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    .line 147
    .local v15, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 148
    .local v18, widgetIndex:I
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    .line 149
    .local v17, widgetCount:I
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v12

    .line 150
    .local v12, pageIndex:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 151
    .local v11, pageCount:I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 152
    .local v3, cellCountX:I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 153
    .local v4, cellCountY:I
    rem-int v19, v18, v3

    .line 154
    .local v19, x:I
    div-int v20, v18, v3

    .line 156
    .local v20, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 157
    .local v2, action:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    const/4 v8, 0x1

    .line 158
    .local v8, handleKeyEvent:Z
    :goto_0
    const/4 v9, 0x0

    .line 161
    .local v9, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 162
    .local v5, child:Landroid/view/View;
    const/16 v16, 0x0

    .line 163
    .local v16, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 280
    :goto_1
    return v16

    .line 157
    .end local v5           #child:Landroid/view/View;
    .end local v8           #handleKeyEvent:Z
    .end local v9           #newParent:Landroid/view/ViewGroup;
    .end local v16           #wasHandled:Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 165
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #handleKeyEvent:Z
    .restart local v9       #newParent:Landroid/view/ViewGroup;
    .restart local v16       #wasHandled:Z
    :sswitch_0
    if-eqz v8, :cond_1

    .line 167
    if-lez v18, :cond_2

    .line 168
    add-int/lit8 v21, v18, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 179
    :cond_1
    :goto_2
    const/16 v16, 0x1

    .line 180
    goto :goto_1

    .line 170
    :cond_2
    if-lez v12, :cond_1

    .line 171
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 172
    if-eqz v9, :cond_1

    .line 173
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 182
    :sswitch_1
    if-eqz v8, :cond_3

    .line 184
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 185
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 196
    :cond_3
    :goto_3
    const/16 v16, 0x1

    .line 197
    goto :goto_1

    .line 187
    :cond_4
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 188
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 189
    if-eqz v9, :cond_3

    .line 190
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 191
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 199
    :sswitch_2
    if-eqz v8, :cond_5

    .line 201
    if-lez v20, :cond_6

    .line 202
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v3

    add-int v10, v21, v19

    .line 203
    .local v10, newWidgetIndex:I
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 204
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 209
    .end local v10           #newWidgetIndex:I
    :cond_5
    :goto_4
    const/16 v16, 0x1

    .line 210
    goto :goto_1

    .line 206
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 212
    :sswitch_3
    if-eqz v8, :cond_7

    .line 214
    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 215
    add-int/lit8 v21, v17, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v3

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 216
    .restart local v10       #newWidgetIndex:I
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 217
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 220
    .end local v10           #newWidgetIndex:I
    :cond_7
    const/16 v16, 0x1

    .line 221
    goto/16 :goto_1

    .line 224
    :sswitch_4
    if-eqz v8, :cond_8

    move-object v6, v7

    .line 226
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 227
    .local v6, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 229
    .end local v6           #clickListener:Landroid/view/View$OnClickListener;
    :cond_8
    const/16 v16, 0x1

    .line 230
    goto/16 :goto_1

    .line 232
    :sswitch_5
    if-eqz v8, :cond_a

    .line 235
    if-lez v12, :cond_b

    .line 236
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 237
    if-eqz v9, :cond_9

    .line 238
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 243
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 245
    :cond_a
    const/16 v16, 0x1

    .line 246
    goto/16 :goto_1

    .line 241
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 248
    :sswitch_6
    if-eqz v8, :cond_d

    .line 251
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_e

    .line 252
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 253
    if-eqz v9, :cond_c

    .line 254
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 259
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 261
    :cond_d
    const/16 v16, 0x1

    .line 262
    goto/16 :goto_1

    .line 257
    :cond_e
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 264
    :sswitch_7
    if-eqz v8, :cond_f

    .line 266
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 267
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 269
    :cond_f
    const/16 v16, 0x1

    .line 270
    goto/16 :goto_1

    .line 272
    :sswitch_8
    if-eqz v8, :cond_10

    .line 274
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 276
    :cond_10
    const/16 v16, 0x1

    .line 277
    goto/16 :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 452
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v9

    if-nez v9, :cond_0

    .line 505
    :goto_0
    return v8

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 455
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 456
    .local v5, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 457
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v4

    .line 458
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 460
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 461
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 462
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 464
    .local v7, wasHandled:Z
    const-string v8, "FocusHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleTabKeyEvent: action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tabCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tabIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", handleKeyEvent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", keyCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", v = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    packed-switch p1, :pswitch_data_0

    :goto_2
    move v8, v7

    .line 505
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v8

    .line 461
    goto :goto_1

    .line 471
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v2, :cond_2

    .line 473
    if-lez v6, :cond_2

    .line 474
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 477
    :cond_2
    const/4 v7, 0x1

    .line 478
    goto :goto_2

    .line 480
    :pswitch_1
    if-eqz v2, :cond_3

    .line 482
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 483
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 490
    :cond_3
    :goto_3
    const/4 v7, 0x1

    .line 491
    goto :goto_2

    .line 485
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 494
    :pswitch_2
    const/4 v7, 0x1

    .line 495
    goto :goto_2

    .line 497
    :pswitch_3
    if-eqz v2, :cond_5

    .line 499
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 501
    :cond_5
    const/4 v7, 0x1

    .line 502
    goto :goto_2

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
