.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field private static final HW_ROTATION:Ljava/lang/String; = "ro.sf.hwrotation"

.field static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private mAssignedDefaultExternal:Z

.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mCanAdjustDeviceRotation:Z

.field private mChange:Z

.field private mDefaultExternal:Z

.field private final mDisplayId:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field private mThumbnailExternal:Z

.field private final mVirtualDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/VirtualLogicalDisplay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 2
    .parameter "displayId"
    .parameter "layerStack"
    .parameter "primaryDisplayDevice"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 297
    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mCanAdjustDeviceRotation:Z

    .line 100
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 101
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 102
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 103
    return-void
.end method


# virtual methods
.method public addVirtualDisplayLocked(ILcom/android/server/display/VirtualLogicalDisplay;)Z
    .locals 2
    .parameter "displayId"
    .parameter "virtualDisplay"

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p2}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayIdLocked()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    goto :goto_0
.end method

.method public canAdjustDeviceRotationLocked()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mCanAdjustDeviceRotation:Z

    return v0
.end method

.method public clearVirtualDisplayLocked()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 162
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    .line 163
    return-void
.end method

.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 26
    .parameter "device"
    .parameter "isBlanked"

    .prologue
    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 444
    .local v4, displayInfo:Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    .line 445
    .local v3, displayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    const/16 v17, 0x0

    .line 448
    .local v17, projectVirtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz p2, :cond_5

    const/16 v20, -0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v9

    .local v9, i:I
    move v10, v9

    .end local v9           #i:I
    .local v10, i:I
    :goto_1
    add-int/lit8 v9, v10, -0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    if-lez v10, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 455
    .local v19, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/VirtualLogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v16

    .line 457
    .local v16, primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_0

    .line 458
    move-object/from16 v17, v19

    .line 461
    :cond_0
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 462
    if-eqz v17, :cond_e

    .line 482
    .end local v16           #primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    .end local v19           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_1
    if-nez v17, :cond_8

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    iget v0, v4, Landroid/view/DisplayInfo;->logicalLeft:I

    move/from16 v21, v0

    iget v0, v4, Landroid/view/DisplayInfo;->logicalTop:I

    move/from16 v22, v0

    iget v0, v4, Landroid/view/DisplayInfo;->logicalLeft:I

    move/from16 v23, v0

    iget v0, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v24, v0

    add-int v23, v23, v24

    iget v0, v4, Landroid/view/DisplayInfo;->logicalTop:I

    move/from16 v24, v0

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Rect;->set(IIII)V

    .line 493
    :goto_2
    const/4 v13, 0x0

    .line 494
    .local v13, orientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_2

    .line 496
    iget v13, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 499
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->canAdjustDeviceRotationLocked()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->canAdjustRotationLocked()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 500
    iget v0, v4, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getAdjustRotationLocked()I

    move-result v21

    add-int v13, v20, v21

    .line 504
    :cond_3
    iget v0, v3, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    move/from16 v20, v0

    add-int v20, v20, v13

    rem-int/lit8 v13, v20, 0x4

    .line 511
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v13, v0, :cond_9

    :cond_4
    const/16 v18, 0x1

    .line 513
    .local v18, rotated:Z
    :goto_3
    if-eqz v18, :cond_a

    iget v15, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 514
    .local v15, physWidth:I
    :goto_4
    if-eqz v18, :cond_b

    iget v14, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 526
    .local v14, physHeight:I
    :goto_5
    if-nez v17, :cond_c

    .line 527
    iget v12, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 528
    .local v12, logicalWidth:I
    iget v11, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 534
    .local v11, logicalHeight:I
    :goto_6
    mul-int v20, v15, v11

    mul-int v21, v14, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 537
    move v8, v15

    .line 538
    .local v8, displayRectWidth:I
    mul-int v20, v11, v15

    div-int v5, v20, v12

    .line 544
    .local v5, displayRectHeight:I
    :goto_7
    sub-int v20, v14, v5

    div-int/lit8 v7, v20, 0x2

    .line 545
    .local v7, displayRectTop:I
    sub-int v20, v15, v8

    div-int/lit8 v6, v20, 0x2

    .line 546
    .local v6, displayRectLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    add-int v21, v6, v8

    add-int v22, v7, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 550
    .end local v5           #displayRectHeight:I
    .end local v6           #displayRectLeft:I
    .end local v7           #displayRectTop:I
    .end local v8           #displayRectWidth:I
    .end local v11           #logicalHeight:I
    .end local v12           #logicalWidth:I
    .end local v13           #orientation:I
    .end local v14           #physHeight:I
    .end local v15           #physWidth:I
    .end local v18           #rotated:Z
    :goto_8
    return-void

    .line 448
    .end local v9           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    move/from16 v20, v0

    goto/16 :goto_0

    .line 471
    .restart local v9       #i:I
    .restart local v16       #primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v19       #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/VirtualLogicalDisplay;->getFocusLocked()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_7

    .line 474
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualLogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    goto :goto_8

    :cond_7
    move v10, v9

    .line 477
    .end local v9           #i:I
    .restart local v10       #i:I
    goto/16 :goto_1

    .line 486
    .end local v10           #i:I
    .end local v16           #primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    .end local v19           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v9       #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getLeft()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getRight()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getBottom()I

    move-result v24

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 511
    .restart local v13       #orientation:I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 513
    .restart local v18       #rotated:Z
    :cond_a
    iget v15, v3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto/16 :goto_4

    .line 514
    .restart local v15       #physWidth:I
    :cond_b
    iget v14, v3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto/16 :goto_5

    .line 530
    .restart local v14       #physHeight:I
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getWidth()I

    move-result v12

    .line 531
    .restart local v12       #logicalWidth:I
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/VirtualLogicalDisplay;->getHeight()I

    move-result v11

    .restart local v11       #logicalHeight:I
    goto/16 :goto_6

    .line 541
    :cond_d
    mul-int v20, v12, v14

    div-int v8, v20, v11

    .line 542
    .restart local v8       #displayRectWidth:I
    move v5, v14

    .restart local v5       #displayRectHeight:I
    goto/16 :goto_7

    .end local v5           #displayRectHeight:I
    .end local v8           #displayRectWidth:I
    .end local v11           #logicalHeight:I
    .end local v12           #logicalWidth:I
    .end local v13           #orientation:I
    .end local v14           #physHeight:I
    .end local v15           #physWidth:I
    .end local v18           #rotated:Z
    .restart local v16       #primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    .restart local v19       #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_e
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto/16 :goto_1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLayerStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHasContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPrimaryDisplayDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBaseDisplayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOverrideDisplayInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_1

    .line 617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVirtualDisplays #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 620
    .local v2, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v2, p1}, Lcom/android/server/display/VirtualLogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    move v1, v0

    .line 621
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 611
    .end local v1           #i:I
    .end local v2           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_0
    const-string v3, "null"

    goto :goto_0

    .line 622
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 6

    .prologue
    const/high16 v5, 0x2000

    const/high16 v4, 0x1000

    const v3, -0x10000001

    const v2, -0x20000001

    .line 208
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_3

    .line 209
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 215
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_8

    .line 237
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 238
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    .line 241
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 260
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    .line 222
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v0, :cond_5

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 228
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_3

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    goto :goto_2

    .line 246
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v0, :cond_a

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 252
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_2

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_4

    .line 256
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_2
.end method

.method public getLayerStackLocked()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    return v0
.end method

.method public getPrejectVirtualDisplay()Lcom/android/server/display/VirtualLogicalDisplay;
    .locals 4

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 183
    .local v2, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 188
    .end local v2           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :goto_1
    return-object v2

    .restart local v2       #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_0
    move v1, v0

    .line 186
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 188
    .end local v1           #i:I
    .end local v2           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v0       #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPrimaryDeviceTypeLocked()I
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 603
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public hasProjectVirtualDisplay()Z
    .locals 4

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 172
    .local v2, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 173
    const/4 v3, 0x1

    .line 177
    .end local v2           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :goto_1
    return v3

    .restart local v2       #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_0
    move v1, v0

    .line 175
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 177
    .end local v1           #i:I
    .end local v2           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v0       #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isAssignedDefaultExternalLocked()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    return v0
.end method

.method public isDefaultExternalLocked()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailExternalLocked()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needChangeLocked()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    return v0
.end method

.method public removeVirtualDisplayLocked(I)Z
    .locals 6
    .parameter "displayId"

    .prologue
    const/4 v4, 0x1

    .line 134
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_1

    .line 135
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 136
    .local v2, tempDisplayId:I
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 137
    .local v3, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    if-ne v2, p1, :cond_0

    .line 138
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 144
    .end local v2           #tempDisplayId:I
    .end local v3           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :goto_1
    return v4

    .restart local v2       #tempDisplayId:I
    .restart local v3       #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    :cond_0
    move v1, v0

    .line 141
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 143
    .end local v1           #i:I
    .end local v2           #tempDisplayId:I
    .end local v3           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v0       #i:I
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    .line 144
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAdjustDeviceRotationLocked(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanAdjustDeviceRotation:Z

    .line 300
    return-void
.end method

.method public setAssignedDefaultExternalLocked(Z)V
    .locals 0
    .parameter "isDefaultExternal"

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    .line 577
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 274
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 277
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 280
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 281
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .parameter "hasContent"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 573
    return-void
.end method

.method public setIsDefaultExternalLocked(Z)V
    .locals 0
    .parameter "isDefaultExternal"

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    .line 589
    return-void
.end method

.method public setIsThumbnailExternalLocked(Z)V
    .locals 0
    .parameter "isThumbnailExternal"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    .line 597
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 315
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v6, :cond_0

    .line 316
    iput-boolean v9, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    .line 422
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 322
    iput-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 323
    iput-boolean v9, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    goto :goto_0

    .line 327
    :cond_1
    const/4 v4, 0x0

    .line 328
    .local v4, projectVirtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    if-lez v3, :cond_3

    .line 329
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 330
    .local v5, vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    invoke-virtual {v5, p1}, Lcom/android/server/display/VirtualLogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 331
    invoke-virtual {v5}, Lcom/android/server/display/VirtualLogicalDisplay;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 332
    move-object v4, v5

    :cond_2
    move v3, v2

    .line 334
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 341
    .end local v3           #i:I
    .end local v5           #vdisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    .restart local v2       #i:I
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 343
    .local v0, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    const-string v6, "ro.sf.hwrotation"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, hworientation:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v6, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 345
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v7, v6, Landroid/view/DisplayInfo;->layerStack:I

    .line 346
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v6, Landroid/view/DisplayInfo;->flags:I

    .line 347
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    .line 348
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    .line 350
    :cond_4
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    .line 351
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    .line 354
    :cond_5
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v7, v6, Landroid/view/DisplayInfo;->type:I

    .line 356
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v7, v6, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 357
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 358
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->appWidth:I

    .line 359
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->appHeight:I

    .line 360
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v6, Landroid/view/DisplayInfo;->logicalLeft:I

    .line 361
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v6, Landroid/view/DisplayInfo;->logicalTop:I

    .line 362
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 363
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 364
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 366
    const-string v6, "270"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 367
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->appWidth:I

    .line 368
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->appHeight:I

    .line 369
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 370
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 371
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v7, 0x3

    iput v7, v6, Landroid/view/DisplayInfo;->rotation:I

    .line 382
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v7, v6, Landroid/view/DisplayInfo;->refreshRate:F

    .line 383
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 384
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v7, v6, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 385
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v7, v6, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 386
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 387
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 388
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 389
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 390
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v7, -0x1

    iput v7, v6, Landroid/view/DisplayInfo;->parentDisplayId:I

    .line 392
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-eq v6, v8, :cond_7

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_d

    .line 393
    :cond_7
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    sput v6, Lcom/android/server/display/DisplayManagerService;->defaultDensityXDpi:F

    .line 394
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    sput v6, Lcom/android/server/display/DisplayManagerService;->defaultDensityYDpi:F

    .line 395
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    sput v6, Lcom/android/server/display/DisplayManagerService;->defaultDensityDpi:I

    .line 402
    :goto_3
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 403
    iput-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 406
    :cond_8
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v6, :cond_a

    .line 407
    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mDefaultExternal:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v6, :cond_e

    .line 408
    :cond_9
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    const/high16 v8, 0x2000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    .line 413
    :goto_4
    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplay;->mThumbnailExternal:Z

    if-eqz v6, :cond_f

    .line 414
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    const/high16 v8, 0x1000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    .line 421
    :cond_a
    :goto_5
    iput-boolean v9, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    goto/16 :goto_0

    .line 372
    :cond_b
    const-string v6, "180"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 373
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v7, 0x2

    iput v7, v6, Landroid/view/DisplayInfo;->rotation:I

    goto/16 :goto_2

    .line 374
    :cond_c
    const-string v6, "90"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 375
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->appWidth:I

    .line 376
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->appHeight:I

    .line 377
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 378
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 379
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v6, Landroid/view/DisplayInfo;->rotation:I

    goto/16 :goto_2

    .line 397
    :cond_d
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v7, Lcom/android/server/display/DisplayManagerService;->defaultDensityXDpi:F

    iput v7, v6, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 398
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v7, Lcom/android/server/display/DisplayManagerService;->defaultDensityYDpi:F

    iput v7, v6, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 399
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v7, Lcom/android/server/display/DisplayManagerService;->defaultDensityDpi:I

    iput v7, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    goto :goto_3

    .line 410
    :cond_e
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    const v8, -0x20000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    goto :goto_4

    .line 417
    :cond_f
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v6, Landroid/view/DisplayInfo;->flags:I

    const v8, -0x10000001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/view/DisplayInfo;->flags:I

    goto :goto_5
.end method

.method public updateVirtualDisplayLocked(IIIII)V
    .locals 2
    .parameter "displayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualLogicalDisplay;

    .line 150
    .local v0, virtualDisplay:Lcom/android/server/display/VirtualLogicalDisplay;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/display/VirtualLogicalDisplay;->updateDisplayLocked(IIII)V

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mChange:Z

    .line 155
    :cond_0
    return-void
.end method
