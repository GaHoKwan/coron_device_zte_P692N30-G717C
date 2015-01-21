.class final Lcom/android/server/display/VirtualLogicalDisplay;
.super Ljava/lang/Object;
.source "VirtualLogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field static final TAG:Ljava/lang/String; = "VirtualLogicalDisplay"


# instance fields
.field private mAssignedDefaultExternal:Z

.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mBottom:I

.field private mDefaultExternal:Z

.field private mDisplayId:I

.field private mDisplayRegionChanged:Z

.field private mFlags:I

.field private mFocus:Z

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private mLayerStack:I

.field private mLeft:I

.field private final mLogicalDisplayRect:Landroid/graphics/Rect;

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mParentDisplayId:I

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRight:I

.field private mRotation:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field private mThumbnailExternal:Z

.field private mTop:I

.field private mValidDisplayRect:Z


# direct methods
.method constructor <init>(IIIIII)V
    .locals 3
    .parameter "displayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "flags"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDefaultExternal:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mThumbnailExternal:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mAssignedDefaultExternal:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    .line 89
    iput v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mParentDisplayId:I

    .line 90
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFocus:Z

    .line 92
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    .line 93
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    .line 94
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    .line 95
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    .line 96
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    .line 97
    iput v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRotation:I

    .line 98
    iput-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    .line 101
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayId:I

    .line 102
    iput p2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    .line 103
    iput p3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    .line 104
    iput p4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    .line 105
    iput p5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    .line 106
    iput p6, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    .line 107
    return-void
.end method

.method private validateAndSetDisplayRect(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 110
    if-ge p1, p3, :cond_0

    if-lt p2, p4, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 118
    .local v0, primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 119
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    .line 126
    :goto_1
    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 127
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    .line 134
    :goto_2
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-le p3, v1, :cond_6

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 135
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    .line 139
    :goto_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    if-le p4, v1, :cond_7

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 140
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    .line 144
    :goto_4
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_2
    if-gez p1, :cond_3

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 121
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    goto :goto_1

    .line 123
    :cond_3
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    goto :goto_1

    .line 128
    :cond_4
    if-gez p2, :cond_5

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 129
    iput v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    goto :goto_2

    .line 131
    :cond_5
    iput p2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    goto :goto_2

    .line 137
    :cond_6
    iput p3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    goto :goto_3

    .line 142
    :cond_7
    iput p4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    goto :goto_4
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 19
    .parameter "device"

    .prologue
    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/VirtualLogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 472
    .local v2, displayInfo:Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 473
    .local v1, displayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v12

    .line 474
    .local v12, primaryDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    const/4 v8, 0x0

    .line 475
    .local v8, logicalWidth:I
    const/4 v7, 0x0

    .line 477
    .local v7, logicalHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v14, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 489
    :goto_0
    invoke-static {v12, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 546
    :goto_1
    return-void

    .line 481
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_0

    .line 498
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->set(IIII)V

    .line 503
    const/4 v9, 0x0

    .line 504
    .local v9, orientation:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    iget v14, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_2

    .line 506
    iget v9, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 510
    :cond_2
    iget v14, v1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v14, v9

    rem-int/lit8 v9, v14, 0x4

    .line 517
    const/4 v14, 0x1

    if-eq v9, v14, :cond_3

    const/4 v14, 0x3

    if-ne v9, v14, :cond_4

    :cond_3
    const/4 v13, 0x1

    .line 519
    .local v13, rotated:Z
    :goto_2
    if-eqz v13, :cond_5

    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 520
    .local v11, physWidth:I
    :goto_3
    if-eqz v13, :cond_6

    iget v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 530
    .local v10, physHeight:I
    :goto_4
    mul-int v14, v11, v7

    mul-int v15, v10, v8

    if-ge v14, v15, :cond_7

    .line 533
    move v6, v11

    .line 534
    .local v6, displayRectWidth:I
    mul-int v14, v7, v11

    div-int v3, v14, v8

    .line 540
    .local v3, displayRectHeight:I
    :goto_5
    sub-int v14, v10, v3

    div-int/lit8 v5, v14, 0x2

    .line 541
    .local v5, displayRectTop:I
    sub-int v14, v11, v6

    div-int/lit8 v4, v14, 0x2

    .line 542
    .local v4, displayRectLeft:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v15, v4, v6

    add-int v16, v5, v3

    move/from16 v0, v16

    invoke-virtual {v14, v4, v5, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/display/VirtualLogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v14, v15}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 517
    .end local v3           #displayRectHeight:I
    .end local v4           #displayRectLeft:I
    .end local v5           #displayRectTop:I
    .end local v6           #displayRectWidth:I
    .end local v10           #physHeight:I
    .end local v11           #physWidth:I
    .end local v13           #rotated:Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 519
    .restart local v13       #rotated:Z
    :cond_5
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_3

    .line 520
    .restart local v11       #physWidth:I
    :cond_6
    iget v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_4

    .line 537
    .restart local v10       #physHeight:I
    :cond_7
    mul-int v14, v8, v10

    div-int v6, v14, v7

    .line 538
    .restart local v6       #displayRectWidth:I
    move v3, v10

    .restart local v3       #displayRectHeight:I
    goto :goto_5
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParentDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mParentDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return-void

    .line 600
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalTop:I

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v0, v1

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 315
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    .line 318
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 324
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFocus:Z

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 330
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mAssignedDefaultExternal:Z

    if-eqz v0, :cond_5

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 335
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mThumbnailExternal:Z

    if-eqz v0, :cond_6

    .line 336
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 340
    :goto_3
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    goto :goto_0

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x40000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x20000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_2

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_3
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    return v0
.end method

.method public getFocusLocked()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFocus:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 200
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    .line 212
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentDisplayIdLocked()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mParentDisplayId:I

    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v0, v1

    .line 236
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalTop:I

    .line 224
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/server/display/VirtualLogicalDisplay;->isValidLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 188
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isAssignedDefaultExternalLocked()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mAssignedDefaultExternal:Z

    return v0
.end method

.method public isDefaultExternalLocked()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDefaultExternal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mAssignedDefaultExternal:Z

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
    .line 588
    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mThumbnailExternal:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssignedDefaultExternalLocked(Z)V
    .locals 0
    .parameter "isDefaultExternal"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mAssignedDefaultExternal:Z

    .line 573
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 354
    if-eqz p1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_1

    .line 356
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 357
    iput-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 360
    iput-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    .line 363
    iput-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 364
    iput-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0
.end method

.method public setFocusLocked(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFocus:Z

    .line 256
    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .parameter "hasContent"

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mHasContent:Z

    .line 569
    return-void
.end method

.method public setIsDefaultExternalLocked(Z)V
    .locals 0
    .parameter "isDefaultExternal"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDefaultExternal:Z

    .line 585
    return-void
.end method

.method public setIsThumbnailExternalLocked(Z)V
    .locals 0
    .parameter "isThumbnailExternal"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mThumbnailExternal:Z

    .line 593
    return-void
.end method

.method public setLayerStackAndDeviceLocked(IILcom/android/server/display/DisplayDevice;)V
    .locals 6
    .parameter "parentDisplayId"
    .parameter "layerStack"
    .parameter "primaryDisplayDevice"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mParentDisplayId:I

    .line 151
    iput p2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLayerStack:I

    .line 152
    iput-object p3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 154
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    iget v3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/VirtualLogicalDisplay;->validateAndSetDisplayRect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-boolean v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    .line 156
    iput-boolean v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    .line 160
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public updateDisplayId(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayId:I

    .line 170
    return-void
.end method

.method public updateDisplayLocked(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    .line 264
    iput p2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    .line 265
    iput p3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    .line 266
    iput p4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    .line 268
    iget v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLeft:I

    iget v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mTop:I

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRight:I

    iget v3, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/VirtualLogicalDisplay;->validateAndSetDisplayRect(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    .line 270
    iput-boolean v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    .line 273
    iput-boolean v4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    .line 274
    iget-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public updateFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFlags:I

    .line 174
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iput-object v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 405
    .local v0, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    if-eqz v1, :cond_7

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mValidDisplayRect:Z

    if-eqz v1, :cond_7

    .line 406
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 407
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 408
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 409
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 411
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 415
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mFocus:Z

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v3, 0x4000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 419
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/16 v2, 0x10

    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    .line 421
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 424
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 425
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalLeft:I

    .line 426
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalTop:I

    .line 427
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 428
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 429
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 430
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v2, v1, Landroid/view/DisplayInfo;->refreshRate:F

    .line 431
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 432
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 433
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 434
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 435
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 436
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 437
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mLogicalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 438
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mParentDisplayId:I

    iput v2, v1, Landroid/view/DisplayInfo;->parentDisplayId:I

    .line 440
    sget v1, Lcom/android/server/display/DisplayManagerService;->defaultDensityDpi:I

    if-lez v1, :cond_6

    .line 441
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v2, Lcom/android/server/display/DisplayManagerService;->defaultDensityXDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 442
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v2, Lcom/android/server/display/DisplayManagerService;->defaultDensityYDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 443
    iget-object v1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget v2, Lcom/android/server/display/DisplayManagerService;->defaultDensityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 446
    :cond_6
    iput-object v0, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 447
    iput-object v5, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 450
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mDisplayRegionChanged:Z

    goto/16 :goto_0
.end method

.method public updateRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/server/display/VirtualLogicalDisplay;->mRotation:I

    .line 166
    return-void
.end method
