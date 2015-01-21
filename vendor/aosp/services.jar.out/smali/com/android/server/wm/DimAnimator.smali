.class Lcom/android/server/wm/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimAnimator$Parameters;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DimAnimator"


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimLeft:I

.field mLastDimTop:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;I)V
    .locals 8
    .parameter "session"
    .parameter "layerStack"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 50
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "DimAnimator"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 60
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setLayerStack(I)V

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    .line 69
    :goto_1
    return-void

    .line 56
    :cond_2
    new-instance v0, Landroid/view/Surface;

    const-string v2, "DimAnimator"

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v7

    .line 67
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public kill()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 234
    :cond_0
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 239
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, "mDimShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 243
    const-string v0, " current="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 244
    const-string v0, " target="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 245
    const-string v0, " delta="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 246
    const-string v0, " lastAnimTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 247
    return-void
.end method

.method updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V
    .locals 21
    .parameter "res"
    .parameter "params"
    .parameter "currentTime"

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 77
    const-string v17, "DimAnimator"

    const-string v18, "updateParameters: no Surface"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWidth:I

    .line 85
    .local v6, dmax:I
    :goto_1
    int-to-double v0, v6

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v9, v0

    .line 86
    .local v9, dw:I
    int-to-double v0, v6

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v3, v0

    .line 87
    .local v3, dh:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    .line 88
    .local v16, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimTarget:F

    .line 91
    .local v12, target:F
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 93
    .local v15, win:Lcom/android/server/wm/WindowState;
    mul-int/lit8 v17, v9, -0x1

    div-int/lit8 v11, v17, 0x6

    .line 94
    .local v11, left:I
    mul-int/lit8 v17, v3, -0x1

    div-int/lit8 v13, v17, 0x6

    .line 95
    .local v13, top:I
    if-eqz v15, :cond_2

    .line 96
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v4

    .line 97
    .local v4, displayId:I
    if-eqz v4, :cond_2

    .line 99
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    .line 101
    .local v5, displayInfo:Landroid/view/DisplayInfo;
    iget v9, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 102
    iget v3, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 103
    iget v11, v5, Landroid/view/DisplayInfo;->logicalLeft:I

    .line 104
    iget v13, v5, Landroid/view/DisplayInfo;->logicalTop:I

    .line 109
    .end local v4           #displayId:I
    .end local v5           #displayInfo:Landroid/view/DisplayInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 110
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v17, :cond_3

    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  DIM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": SHOW pos=(0,0) ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    .line 114
    :try_start_0
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 115
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 116
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/DimAnimator;->mLastDimLeft:I

    .line 117
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/DimAnimator;->mLastDimTop:I

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v13}, Landroid/view/Surface;->setPosition(II)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3}, Landroid/view/Surface;->setSize(II)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/Surface;->setLayer(I)V

    .line 136
    sget-boolean v17, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v17, :cond_5

    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  DIM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": layer="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " target="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    move/from16 v17, v0

    cmpl-float v17, v17, v12

    if-eqz v17, :cond_0

    .line 141
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 142
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v7

    .line 145
    .local v7, duration:J
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    move/from16 v17, v0

    cmpl-float v17, v12, v17

    if-lez v17, :cond_6

    .line 146
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 147
    .local v14, tv:Landroid/util/TypedValue;
    const/high16 v17, 0x112

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 149
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 150
    long-to-float v0, v7

    move/from16 v17, v0

    long-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-long v7, v0

    .line 156
    .end local v14           #tv:Landroid/util/TypedValue;
    :cond_6
    :goto_4
    const-wide/16 v17, 0x1

    cmp-long v17, v7, v17

    if-gez v17, :cond_7

    .line 158
    const-wide/16 v7, 0x1

    .line 160
    :cond_7
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    long-to-float v0, v7

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    goto/16 :goto_0

    .line 84
    .end local v3           #dh:I
    .end local v6           #dmax:I
    .end local v7           #duration:J
    .end local v9           #dw:I
    .end local v11           #left:I
    .end local v12           #target:F
    .end local v13           #top:I
    .end local v15           #win:Lcom/android/server/wm/WindowState;
    .end local v16           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimHeight:I

    goto/16 :goto_1

    .line 121
    .restart local v3       #dh:I
    .restart local v6       #dmax:I
    .restart local v9       #dw:I
    .restart local v11       #left:I
    .restart local v12       #target:F
    .restart local v13       #top:I
    .restart local v15       #win:Lcom/android/server/wm/WindowState;
    .restart local v16       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catch_0
    move-exception v10

    .line 122
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v17, "WindowManager"

    const-string v18, "Failure showing dim surface"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 124
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v9, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mLastDimLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v11, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/DimAnimator;->mLastDimTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v13, :cond_4

    .line 126
    :cond_a
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/wm/DimAnimator;->mLastDimWidth:I

    .line 127
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/DimAnimator;->mLastDimHeight:I

    .line 128
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/DimAnimator;->mLastDimLeft:I

    .line 129
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/DimAnimator;->mLastDimTop:I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v3}, Landroid/view/Surface;->setSize(II)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v13}, Landroid/view/Surface;->setPosition(II)V

    goto/16 :goto_2

    .line 142
    :cond_b
    const-wide/16 v7, 0xc8

    goto/16 :goto_3

    .line 151
    .restart local v7       #duration:J
    .restart local v14       #tv:Landroid/util/TypedValue;
    :cond_c
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 153
    iget v0, v14, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v7, v0

    goto/16 :goto_4
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v3, :cond_1

    .line 171
    const-string v3, "DimAnimator"

    const-string v4, "updateSurface: no Surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    if-nez p1, :cond_2

    .line 176
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_2

    .line 177
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 178
    iput v7, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    .line 179
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    .line 183
    :cond_2
    iget-wide v3, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    .line 184
    .local v0, animating:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 185
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 187
    if-eqz p4, :cond_6

    .line 189
    const/4 v0, 0x0

    .line 203
    :cond_3
    :goto_2
    if-eqz v0, :cond_9

    .line 204
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  DIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4
    iput-wide p2, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 207
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setAlpha(F)V

    goto :goto_0

    .end local v0           #animating:Z
    :cond_5
    move v0, v2

    .line 183
    goto :goto_1

    .line 190
    .restart local v0       #animating:Z
    :cond_6
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_7

    .line 191
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 192
    const/4 v0, 0x0

    goto :goto_2

    .line 194
    :cond_7
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_8

    .line 195
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 196
    const/4 v0, 0x0

    goto :goto_2

    .line 199
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 209
    :cond_9
    iget v3, p0, Lcom/android/server/wm/DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    .line 210
    iput-wide v8, p0, Lcom/android/server/wm/DimAnimator;->mLastDimAnimTime:J

    .line 211
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": final alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/wm/DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_b

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  DIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": HIDE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_b
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    goto/16 :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
