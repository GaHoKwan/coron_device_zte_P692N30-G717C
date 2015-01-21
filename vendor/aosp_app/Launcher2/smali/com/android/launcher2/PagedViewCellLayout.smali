.class public Lcom/android/launcher2/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewCellLayout$CellInfo;,
        Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDragCell:[I

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragging:Z

.field private mHeightGap:I

.field private mMaxGap:I

.field private mOccupied:[[Z

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mOriginalWidthGap:I

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragging:Z

    .line 80
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragCell:[I

    .line 82
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-direct {v1}, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mRect:Landroid/graphics/Rect;

    .line 86
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpXY:[I

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 94
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpPoint:[I

    .line 95
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 110
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 116
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 120
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    .line 121
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    .line 123
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 124
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 126
    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    .line 128
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {v1, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 129
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 132
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    const-string v1, "PagedViewCellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: mCellCountX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCellCountY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMaxGap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/android/launcher2/LauncherExtPlugin;->getInstance()Lcom/android/launcher2/LauncherExtPlugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherExtPlugin;->getOperatorCheckerExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IOperatorChecker;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/launcher2/ext/IOperatorChecker;->supportEditAndHideApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    .line 144
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    .line 145
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpOccupied:[[Z

    .line 146
    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    new-instance v1, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v1, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PagedViewCellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 994
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-ge v0, v2, :cond_1

    .line 995
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-ge v1, v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 994
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1513
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 1514
    .local v0, cellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1515
    iput v2, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    .line 1516
    iput v2, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    .line 1517
    iput v2, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->pos:I

    .line 1518
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1519
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "result"

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v5, 0x3fe0

    const/4 v4, 0x0

    .line 1380
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1382
    .local v0, angle:D
    aput v4, p3, v4

    .line 1383
    aput v4, p3, v7

    .line 1384
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_0

    .line 1385
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 1387
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_1

    .line 1388
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v7

    .line 1390
    :cond_1
    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 20
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "direction"
    .parameter "occupied"
    .parameter "blockOccupied"
    .parameter "result"

    .prologue
    .line 1326
    if-eqz p8, :cond_1

    move-object/from16 v5, p8

    .line 1327
    .local v5, bestXY:[I
    :goto_0
    const v4, 0x7f7fffff

    .line 1328
    .local v4, bestDistance:F
    const/high16 v3, -0x8000

    .line 1330
    .local v3, bestDirectionScore:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 1331
    .local v6, countX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 1333
    .local v7, countY:I
    const/16 v16, 0x0

    .local v16, y:I
    :goto_1
    add-int/lit8 v17, p4, -0x1

    sub-int v17, v7, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 1334
    const/4 v15, 0x0

    .local v15, x:I
    :goto_2
    add-int/lit8 v17, p3, -0x1

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    .line 1336
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    .line 1337
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v14, v0, :cond_3

    .line 1338
    add-int v17, v15, v13

    aget-object v17, p6, v17

    add-int v18, v16, v14

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_2

    if-eqz p7, :cond_0

    aget-object v17, p7, v13

    aget-boolean v17, v17, v14

    if-eqz v17, :cond_2

    .line 1334
    .end local v14           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1326
    .end local v3           #bestDirectionScore:I
    .end local v4           #bestDistance:F
    .end local v5           #bestXY:[I
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v13           #i:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    goto :goto_0

    .line 1337
    .restart local v3       #bestDirectionScore:I
    .restart local v4       #bestDistance:F
    .restart local v5       #bestXY:[I
    .restart local v6       #countX:I
    .restart local v7       #countY:I
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1336
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1345
    .end local v14           #j:I
    :cond_4
    sub-int v17, v15, p1

    sub-int v18, v15, p1

    mul-int v17, v17, v18

    sub-int v18, v16, p2

    sub-int v19, v16, p2

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v11, v0

    .line 1347
    .local v11, distance:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpPoint:[I

    .line 1348
    .local v8, curDirection:[I
    sub-int v17, v15, p1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v16, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/launcher2/PagedViewCellLayout;->computeDirectionVector(FF[I)V

    .line 1351
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    mul-int v17, v17, v18

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    mul-int v18, v18, v19

    add-int v9, v17, v18

    .line 1353
    .local v9, curDirectionScore:I
    const/4 v12, 0x0

    .line 1354
    .local v12, exactDirectionOnly:Z
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v10, 0x1

    .line 1356
    .local v10, directionMatches:Z
    :goto_6
    if-nez v10, :cond_5

    if-nez v12, :cond_6

    :cond_5
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-ltz v17, :cond_7

    :cond_6
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_0

    if-le v9, v3, :cond_0

    .line 1359
    :cond_7
    move v4, v11

    .line 1360
    move v3, v9

    .line 1361
    const/16 v17, 0x0

    aput v15, v5, v17

    .line 1362
    const/16 v17, 0x1

    aput v16, v5, v17

    goto/16 :goto_5

    .line 1354
    .end local v10           #directionMatches:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 1333
    .end local v8           #curDirection:[I
    .end local v9           #curDirectionScore:I
    .end local v11           #distance:F
    .end local v12           #exactDirectionOnly:Z
    .end local v13           #i:I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1368
    .end local v15           #x:I
    :cond_a
    const v17, 0x7f7fffff

    cmpl-float v17, v4, v17

    if-nez v17, :cond_b

    .line 1369
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1370
    const/16 v17, 0x1

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1372
    :cond_b
    return-object v5
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "occupied"
    .parameter "value"

    .prologue
    .line 1059
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1067
    :cond_0
    return-void

    .line 1062
    :cond_1
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-ge v0, v2, :cond_0

    .line 1063
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-ge v1, v2, :cond_2

    .line 1064
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 1063
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1062
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, used:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1109
    :cond_0
    return-void
.end method

.method private setTagToCellInfoForPoint(II)V
    .locals 17
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 1461
    .local v1, cellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PagedViewCellLayout;->mRect:Landroid/graphics/Rect;

    .line 1462
    .local v6, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v13

    add-int v11, p1, v13

    .line 1463
    .local v11, x:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v13

    add-int v12, p2, v13

    .line 1464
    .local v12, y:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1466
    .local v4, count:I
    const/4 v5, 0x0

    .line 1467
    .local v5, found:Z
    add-int/lit8 v7, v4, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_1

    .line 1468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v13, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1469
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/ApplicationInfo;

    .line 1470
    .local v8, info:Lcom/android/launcher2/ApplicationInfo;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 1472
    .local v9, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1473
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1475
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v10

    .line 1476
    .local v10, scale:F
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #frame:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1481
    .restart local v6       #frame:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1482
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v10

    mul-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v10

    mul-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 1485
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1486
    iput-object v3, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1487
    iget v13, v8, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->screen:I

    .line 1488
    iget v13, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    .line 1489
    iget v13, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    .line 1490
    iget v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    mul-int/2addr v13, v14

    iget v14, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    add-int/2addr v13, v14

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->pos:I

    .line 1491
    const/4 v5, 0x1

    .line 1497
    .end local v3           #child:Landroid/view/View;
    .end local v8           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v9           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    .end local v10           #scale:F
    :cond_1
    if-nez v5, :cond_2

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpXY:[I

    .line 1499
    .local v2, cellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/launcher2/PagedViewCellLayout;->pointToCellExact(II[I)V

    .line 1501
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1502
    const/4 v13, 0x0

    aget v13, v2, v13

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    .line 1503
    const/4 v13, 0x1

    aget v13, v2, v13

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    .line 1504
    iget v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    mul-int/2addr v13, v14

    iget v14, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    add-int/2addr v13, v14

    iput v13, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->pos:I

    .line 1506
    .end local v2           #cellXY:[I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1507
    return-void

    .line 1467
    .restart local v3       #child:Landroid/view/View;
    .restart local v8       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local v9       #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"

    .prologue
    .line 192
    move-object v0, p4

    .line 194
    .local v0, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    const-string v1, "PagedViewCellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addViewToCellLayout: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 203
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 204
    :cond_0
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 206
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 207
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 13
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"
    .parameter "permanent"
    .parameter "adjustOccupied"

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v9

    .line 900
    .local v9, clc:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    iget-object v11, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    .line 901
    .local v11, occupied:[[Z
    if-nez p6, :cond_0

    .line 902
    iget-object v11, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpOccupied:[[Z

    .line 904
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 905
    :cond_1
    const-string v1, "PagedViewCellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateChildToPosition cellX = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "cellY = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v1, "PagedViewCellLayout"

    const-string v2, "realTimeReorder: invalid parameters! return!"

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const/4 v1, 0x1

    .line 987
    :goto_0
    return v1

    .line 909
    :cond_2
    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 911
    .local v3, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ApplicationInfo;

    .line 914
    .local v10, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 915
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 916
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_3
    iget v4, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    .line 920
    .local v4, oldX:I
    iget v6, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    .line 921
    .local v6, oldY:I
    if-eqz p7, :cond_4

    .line 922
    iget v1, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    aget-object v1, v11, v1

    iget v2, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    const/4 v8, 0x0

    aput-boolean v8, v1, v2

    .line 923
    aget-object v1, v11, p2

    const/4 v2, 0x1

    aput-boolean v2, v1, p3

    .line 925
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 926
    if-eqz p6, :cond_5

    .line 927
    iput p2, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 928
    iput p2, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 930
    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 931
    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 932
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    mul-int v1, v1, p3

    add-int/2addr v1, p2

    iput v1, v10, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 937
    :goto_1
    invoke-virtual {v9, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setupLp(Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;)V

    .line 938
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 939
    iget v5, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    .line 940
    .local v5, newX:I
    iget v7, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    .line 942
    .local v7, newY:I
    iput v4, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    .line 943
    iput v6, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    .line 946
    if-ne v4, v5, :cond_6

    if-ne v6, v7, :cond_6

    .line 947
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isLockedToGrid:Z

    .line 948
    const/4 v1, 0x1

    goto :goto_0

    .line 934
    .end local v5           #newX:I
    .end local v7           #newY:I
    :cond_5
    iput p2, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->tmpCellX:I

    .line 935
    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    .line 951
    .restart local v5       #newX:I
    .restart local v7       #newY:I
    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 952
    .local v12, va:Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 953
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout$1;

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/PagedViewCellLayout$1;-><init>(Lcom/android/launcher2/PagedViewCellLayout;Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 964
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout$2;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/launcher2/PagedViewCellLayout$2;-><init>(Lcom/android/launcher2/PagedViewCellLayout;Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 984
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 985
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 987
    .end local v3           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    .end local v4           #oldX:I
    .end local v5           #newX:I
    .end local v6           #oldY:I
    .end local v7           #newY:I
    .end local v10           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v12           #va:Landroid/animation/ValueAnimator;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 951
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public calculateCellCount(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "maxCellCountX"
    .parameter "maxCellCountY"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 532
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 539
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 540
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 184
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 185
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 1432
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/PagedViewCellLayout;->regionToCenterPoint(IIII[I)V

    .line 1433
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 573
    instance-of v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method createHardwareLayers()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 176
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 167
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 753
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 755
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 756
    .local v3, countX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 758
    .local v4, countY:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 759
    .local v7, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 760
    .local v6, crossWidth:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 761
    .local v5, crossHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 762
    .local v9, measuredWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 763
    .local v8, measuredHeight:I
    sub-int v14, v9, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    div-int v2, v14, v15

    .line 764
    .local v2, colGap:I
    sub-int v14, v8, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    div-int v11, v14, v15

    .line 766
    .local v11, rowGap:I
    const/4 v12, 0x0

    .line 767
    .local v12, x:I
    const/4 v1, 0x0

    .local v1, col:I
    :goto_0
    if-gt v1, v3, :cond_1

    .line 768
    const/4 v13, 0x0

    .line 769
    .local v13, y:I
    const/4 v10, 0x0

    .local v10, row:I
    :goto_1
    if-gt v10, v4, :cond_0

    .line 770
    add-int v14, v12, v6

    add-int v15, v13, v5

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 771
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 772
    add-int/2addr v13, v11

    .line 769
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 774
    :cond_0
    add-int/2addr v12, v2

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v1           #col:I
    .end local v2           #colGap:I
    .end local v3           #countX:I
    .end local v4           #countY:I
    .end local v5           #crossHeight:I
    .end local v6           #crossWidth:I
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #measuredHeight:I
    .end local v9           #measuredWidth:I
    .end local v10           #row:I
    .end local v11           #rowGap:I
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 778
    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 426
    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 6
    .parameter "width"

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 487
    .local v0, availWidth:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 495
    .local v1, n:I
    return v1
.end method

.method public estimateCellHeight(I)I
    .locals 1
    .parameter "vSpan"

    .prologue
    .line 563
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public estimateCellPosition(II)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 519
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 527
    .local v0, result:[I
    return-object v0
.end method

.method public estimateCellVSpan(I)I
    .locals 6
    .parameter "height"

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 507
    .local v0, availHeight:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 514
    .local v1, n:I
    return v1
.end method

.method public estimateCellWidth(I)I
    .locals 1
    .parameter "hSpan"

    .prologue
    .line 551
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 33
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "minSpanX"
    .parameter "minSpanY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"
    .parameter "resultSpan"
    .parameter "occupied"

    .prologue
    .line 1174
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->lazyInitTempRectStack()V

    .line 1176
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 1182
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p5, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p1, v0

    .line 1183
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int/lit8 v29, p6, -0x1

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1186
    if-eqz p9, :cond_1

    move-object/from16 v7, p9

    .line 1187
    .local v7, bestXY:[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL

    .line 1188
    .local v4, bestDistance:D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1189
    .local v6, bestRect:Landroid/graphics/Rect;
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 1191
    .local v22, validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 1192
    .local v10, countX:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 1194
    .local v11, countY:I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 1293
    :cond_0
    :goto_1
    return-object v7

    .line 1186
    .end local v4           #bestDistance:D
    .end local v6           #bestRect:Landroid/graphics/Rect;
    .end local v7           #bestXY:[I
    .end local v10           #countX:I
    .end local v11           #countY:I
    .end local v22           #validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v7, v0, [I

    goto :goto_0

    .line 1199
    .restart local v4       #bestDistance:D
    .restart local v6       #bestRect:Landroid/graphics/Rect;
    .restart local v7       #bestXY:[I
    .restart local v10       #countX:I
    .restart local v11       #countY:I
    .restart local v22       #validRegions:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v25, 0x0

    .local v25, y:I
    :goto_2
    add-int/lit8 v27, p4, -0x1

    sub-int v27, v11, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    .line 1200
    const/16 v23, 0x0

    .local v23, x:I
    :goto_3
    add-int/lit8 v27, p3, -0x1

    sub-int v27, v10, v27

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    .line 1201
    const/16 v26, -0x1

    .line 1202
    .local v26, ySize:I
    const/16 v24, -0x1

    .line 1203
    .local v24, xSize:I
    if-eqz p8, :cond_16

    .line 1205
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 1206
    const/16 v20, 0x0

    .local v20, j:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_5

    .line 1207
    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_4

    .line 1200
    .end local v17           #i:I
    .end local v20           #j:I
    :cond_3
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1206
    .restart local v17       #i:I
    .restart local v20       #j:I
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1205
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1212
    .end local v20           #j:I
    :cond_6
    move/from16 v24, p3

    .line 1213
    move/from16 v26, p4

    .line 1220
    const/16 v19, 0x1

    .line 1221
    .local v19, incX:Z
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_a

    const/4 v15, 0x1

    .line 1222
    .local v15, hitMaxX:Z
    :goto_7
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_b

    const/16 v16, 0x1

    .line 1223
    .local v16, hitMaxY:Z
    :goto_8
    if-eqz v15, :cond_7

    if-nez v16, :cond_15

    .line 1224
    :cond_7
    if-eqz v19, :cond_e

    if-nez v15, :cond_e

    .line 1225
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_9
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 1226
    add-int v27, v23, v24

    add-int/lit8 v28, v10, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    add-int v27, v23, v24

    aget-object v27, p11, v27

    add-int v28, v25, v20

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_9

    .line 1228
    :cond_8
    const/4 v15, 0x1

    .line 1225
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 1221
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v20           #j:I
    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 1222
    .restart local v15       #hitMaxX:Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_8

    .line 1231
    .restart local v16       #hitMaxY:Z
    .restart local v20       #j:I
    :cond_c
    if-nez v15, :cond_d

    .line 1232
    add-int/lit8 v24, v24, 0x1

    .line 1245
    .end local v20           #j:I
    :cond_d
    :goto_a
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_12

    const/16 v27, 0x1

    :goto_b
    or-int v15, v15, v27

    .line 1246
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_13

    const/16 v27, 0x1

    :goto_c
    or-int v16, v16, v27

    .line 1247
    if-nez v19, :cond_14

    const/16 v19, 0x1

    :goto_d
    goto :goto_8

    .line 1234
    :cond_e
    if-nez v16, :cond_d

    .line 1235
    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1236
    add-int v27, v25, v26

    add-int/lit8 v28, v11, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_f

    add-int v27, v23, v17

    aget-object v27, p11, v27

    add-int v28, v25, v26

    aget-boolean v27, v27, v28

    if-eqz v27, :cond_10

    .line 1238
    :cond_f
    const/16 v16, 0x1

    .line 1235
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 1241
    :cond_11
    if-nez v16, :cond_d

    .line 1242
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    .line 1245
    :cond_12
    const/16 v27, 0x0

    goto :goto_b

    .line 1246
    :cond_13
    const/16 v27, 0x0

    goto :goto_c

    .line 1247
    :cond_14
    const/16 v19, 0x0

    goto :goto_d

    .line 1249
    :cond_15
    const/16 v19, 0x1

    .line 1250
    move/from16 v0, v24

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v15, 0x1

    .line 1251
    :goto_f
    move/from16 v0, v26

    move/from16 v1, p6

    if-lt v0, v1, :cond_16

    .line 1253
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v17           #i:I
    .end local v19           #incX:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpXY:[I

    .line 1254
    .local v8, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/PagedViewCellLayout;->cellToCenterPoint(II[I)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1260
    .local v12, currentRect:Landroid/graphics/Rect;
    add-int v27, v23, v24

    add-int v28, v25, v26

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1261
    const/4 v9, 0x0

    .line 1262
    .local v9, contained:Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Rect;

    .line 1263
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1264
    const/4 v9, 0x1

    .line 1268
    .end local v21           #r:Landroid/graphics/Rect;
    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const/16 v27, 0x0

    aget v27, v8, v27

    sub-int v27, v27, p1

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    const/16 v29, 0x1

    aget v29, v8, v29

    sub-int v29, v29, p2

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x4000

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v29

    add-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 1272
    .local v13, distance:D
    cmpg-double v27, v13, v4

    if-gtz v27, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1273
    :cond_1a
    move-wide v4, v13

    .line 1274
    const/16 v27, 0x0

    aput v23, v7, v27

    .line 1275
    const/16 v27, 0x1

    aput v25, v7, v27

    .line 1276
    if-eqz p10, :cond_1b

    .line 1277
    const/16 v27, 0x0

    aput v24, p10, v27

    .line 1278
    const/16 v27, 0x1

    aput v26, p10, v27

    .line 1280
    :cond_1b
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 1250
    .end local v8           #cellXY:[I
    .end local v9           #contained:Z
    .end local v12           #currentRect:Landroid/graphics/Rect;
    .end local v13           #distance:D
    .end local v18           #i$:Ljava/util/Iterator;
    .restart local v15       #hitMaxX:Z
    .restart local v16       #hitMaxY:Z
    .restart local v17       #i:I
    .restart local v19       #incX:Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 1199
    .end local v15           #hitMaxX:Z
    .end local v16           #hitMaxY:Z
    .end local v17           #i:I
    .end local v19           #incX:Z
    .end local v24           #xSize:I
    .end local v26           #ySize:I
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 1285
    .end local v23           #x:I
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1288
    const-wide v27, 0x7fefffffffffffffL

    cmpl-double v27, v4, v27

    if-nez v27, :cond_1f

    .line 1289
    const/16 v27, 0x0

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 1290
    const/16 v27, 0x1

    const/16 v28, -0x1

    aput v28, v7, v27

    .line 1292
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto/16 :goto_1
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 1149
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/PagedViewCellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1128
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/PagedViewCellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 568
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 578
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellCountForDimensions(II)[I
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 455
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 458
    .local v0, smallerSize:I
    add-int v3, p1, v0

    div-int v1, v3, v0

    .line 459
    .local v1, spanX:I
    add-int v3, p2, v0

    div-int v2, v3, v0

    .line 465
    .local v2, spanY:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public getCellCountX()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    return v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method getContentHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 383
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-lez v1, :cond_0

    .line 384
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 386
    :cond_0
    return v0
.end method

.method getContentWidth()I
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastPosition([I)[I
    .locals 3
    .parameter "cell"

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 822
    .local v0, childCount:I
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 823
    add-int/lit8 v0, v0, -0x1

    .line 826
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    rem-int v2, v0, v2

    aput v2, p1, v1

    .line 827
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    div-int v2, v0, v2

    aput v2, p1, v1

    .line 829
    return-object p1
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 390
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-lez v1, :cond_0

    .line 391
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 393
    :cond_0
    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isExceedLastPosition([I)Z
    .locals 6
    .parameter "cell"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 808
    iget-object v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 809
    .local v0, childCount:I
    aget v4, p1, v2

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    mul-int/2addr v4, v5

    aget v5, p1, v3

    add-int v1, v4, v5

    .line 810
    .local v1, pos:I
    if-le v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1008
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .parameter "view"
    .parameter "occupied"

    .prologue
    .line 1017
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 1021
    .local v7, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 1031
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .parameter "view"
    .parameter "occupied"

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 1044
    .local v7, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 475
    .local v0, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 476
    return-void
.end method

.method onDragEnter()V
    .locals 3

    .prologue
    .line 839
    const-string v0, "PagedViewCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnter: mDragging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragging:Z

    .line 844
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 852
    const-string v0, "PagedViewCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragExit: mDragging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 859
    iput-boolean v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragging:Z

    .line 862
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragCell:[I

    aput v3, v0, v4

    .line 863
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 864
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 875
    const-string v1, "PagedViewCellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDropChild: child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    if-eqz p1, :cond_0

    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 880
    .local v0, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->dropped:Z

    .line 881
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 883
    .end local v0           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 728
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 748
    :goto_0
    return v1

    .line 735
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 741
    .local v0, action:I
    if-nez v0, :cond_1

    .line 743
    const-string v1, "PagedViewCellLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent: mCellInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->clearTagCellInfo()V

    .line 746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setTagToCellInfoForPoint(II)V

    .line 748
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 399
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 400
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v5, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 277
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 278
    .local v20, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 280
    .local v21, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 281
    .local v11, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 283
    .local v12, heightSpecSize:I
    if-eqz v20, :cond_0

    if-nez v11, :cond_1

    .line 284
    :cond_0
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPaddingLeft:I

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPaddingRight:I

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v22, v0

    add-int/lit8 v17, v22, -0x1

    .line 293
    .local v17, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v22, v0

    add-int/lit8 v16, v22, -0x1

    .line 295
    .local v16, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v22, v0

    if-ltz v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v22, v0

    if-gez v22, :cond_7

    .line 296
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    sub-int v22, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    sub-int v9, v22, v23

    .line 297
    .local v9, hSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    sub-int v22, v12, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    sub-int v19, v22, v23

    .line 298
    .local v19, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    sub-int v8, v9, v22

    .line 299
    .local v8, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    sub-int v18, v19, v22

    .line 300
    .local v18, vFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    move/from16 v23, v0

    if-lez v17, :cond_5

    div-int v22, v8, v17

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    move/from16 v23, v0

    if-lez v16, :cond_6

    div-int v22, v18, v16

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 316
    .end local v8           #hFreeSpace:I
    .end local v9           #hSpace:I
    .end local v18           #vFreeSpace:I
    .end local v19           #vSpace:I
    :goto_2
    move/from16 v15, v21

    .line 317
    .local v15, newWidth:I
    move v14, v12

    .line 328
    .local v14, newHeight:I
    const/high16 v22, -0x8000

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v15, v22, v23

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v14, v22, v23

    .line 344
    move/from16 v0, v21

    if-eq v15, v0, :cond_3

    .line 345
    sub-int v22, v21, v15

    shr-int/lit8 v10, v22, 0x1

    .line 346
    .local v10, halfGap:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPaddingLeft:I

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v22, v0

    sub-int v23, v21, v15

    sub-int v23, v23, v10

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPaddingRight:I

    .line 348
    move/from16 v15, v21

    .line 350
    .end local v10           #halfGap:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 353
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 361
    .local v7, count:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 362
    .local v4, childMeasureWidth:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v14, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 364
    .local v3, childMeasureHeight:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v7, :cond_8

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, child:Landroid/view/View;
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 367
    .local v5, childWidthMeasureSpec:I
    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 368
    .local v6, childheightMeasureSpec:I
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 364
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 300
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childMeasureHeight:I
    .end local v4           #childMeasureWidth:I
    .end local v5           #childWidthMeasureSpec:I
    .end local v6           #childheightMeasureSpec:I
    .end local v7           #count:I
    .end local v13           #i:I
    .end local v14           #newHeight:I
    .end local v15           #newWidth:I
    .restart local v8       #hFreeSpace:I
    .restart local v9       #hSpace:I
    .restart local v18       #vFreeSpace:I
    .restart local v19       #vSpace:I
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 301
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 311
    .end local v8           #hFreeSpace:I
    .end local v9           #hSpace:I
    .end local v18           #vFreeSpace:I
    .end local v19           #vSpace:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 375
    .restart local v3       #childMeasureHeight:I
    .restart local v4       #childMeasureWidth:I
    .restart local v7       #count:I
    .restart local v13       #i:I
    .restart local v14       #newHeight:I
    .restart local v15       #newWidth:I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 376
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 409
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v2

    .line 410
    .local v2, count:I
    if-lez v2, :cond_2

    .line 412
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 414
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 415
    .local v3, numRows:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 417
    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 419
    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    .line 421
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    .end local v3           #numRows:I
    :cond_2
    :goto_0
    return v4

    .line 419
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #numRows:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1401
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1402
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1404
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 1405
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 1407
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 1408
    .local v2, xAxis:I
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 1410
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_2

    .line 1411
    aput v7, p3, v7

    .line 1416
    :cond_0
    :goto_0
    aget v4, p3, v8

    if-gez v4, :cond_3

    .line 1417
    aput v7, p3, v8

    .line 1421
    :cond_1
    :goto_1
    return-void

    .line 1412
    :cond_2
    aget v4, p3, v7

    if-lt v4, v2, :cond_0

    .line 1413
    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    goto :goto_0

    .line 1418
    :cond_3
    aget v4, p3, v8

    if-lt v4, v3, :cond_1

    .line 1419
    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    goto :goto_1
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1444
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1445
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1446
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 1448
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p5, v2

    .line 1450
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 3

    .prologue
    .line 219
    const-string v0, "PagedViewCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllViewsOnPage: mChildren = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewCellLayout;->clearOccupiedCells()V

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->destroyHardwareLayers()V

    .line 226
    return-void
.end method

.method public removeChildView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 799
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 231
    const-string v0, "PagedViewCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeViewOnPageAt: mChildren = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 237
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .locals 4

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 244
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public setCellCount(II)V
    .locals 2
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    .line 439
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 440
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 441
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOccupied:[[Z

    .line 442
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mTmpOccupied:[[Z

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 444
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 431
    return-void
.end method

.method public setGap(II)V
    .locals 1
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 447
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 448
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 449
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 450
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 586
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingLeft:I

    .line 587
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalPaddingRight:I

    .line 588
    return-void
.end method
