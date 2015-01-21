.class public Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;
.super Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.source "VideoEventCamera.java"


# static fields
.field private static mOverlayShader:Ljava/lang/String;


# instance fields
.field private mCopyProgram:Landroid/filterfw/core/ShaderProgram;

.field private mIsGotPreviousFrame:Z

.field private mPreviousFrame:Landroid/filterfw/core/GLFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float center_r;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(0.5);\n  vec4 original = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float rrr = length(coord);\n  if (0.0 <= center_r) {    mask = vec4(0.0);\n  }\n  if (rrr > center_r) {\n    original = vec4(0.0);\n  }\n  gl_FragColor = original + mask;\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mOverlayShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "name"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 84
    const-string v1, "Camera"

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 85
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 1
    .parameter "context"
    .parameter "myfilter"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 189
    :cond_0
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 3
    .parameter "context"
    .parameter "myfilter"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 90
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mOverlayShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 91
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "center_r"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    .line 94
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 15
    .parameter "context"
    .parameter "myfilter"
    .parameter "isRenderOutput"
    .parameter "output"

    .prologue
    .line 98
    invoke-super/range {p0 .. p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputCameraGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v1

    .line 103
    .local v1, camera:Landroid/filterfw/core/GLFrame;
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    .line 105
    .local v8, inputFormat:Landroid/filterfw/core/FrameFormat;
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    if-nez v11, :cond_0

    .line 106
    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v9

    .line 107
    .local v9, outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    check-cast v11, Landroid/filterfw/core/GLFrame;

    iput-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 108
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 109
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11, v1, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 112
    .end local v9           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    :cond_0
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-nez v11, :cond_1

    .line 113
    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v9

    .line 114
    .restart local v9       #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v11

    check-cast v11, Landroid/filterfw/core/GLFrame;

    iput-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 115
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 118
    .end local v9           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    :cond_1
    const/4 v11, 0x2

    new-array v10, v11, [Landroid/filterfw/core/Frame;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    aput-object v12, v10, v11

    .line 120
    .local v10, subtractInputs:[Landroid/filterfw/core/Frame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v5

    .line 123
    .local v5, currentTimeStamp:J
    const-string v11, "camera_photo"

    invoke-virtual {p0, v11}, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 125
    :try_start_0
    const-string v11, "camera_photo"

    invoke-virtual {p0, v11}, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v13, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    add-long v2, v11, v13

    .line 132
    .local v2, cameraPhoto:J
    cmp-long v11, v5, v2

    if-ltz v11, :cond_3

    .line 133
    iget-boolean v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    if-nez v11, :cond_2

    .line 134
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 135
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    const/4 v12, 0x3

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    .line 136
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "ccc"

    iget-object v13, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11, v1, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 138
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    .line 139
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v12, 0x64

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got CameraInput:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 141
    :cond_2
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v12, v10, v11

    .line 144
    :cond_3
    iget-boolean v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    iget-boolean v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-gez v11, :cond_5

    .line 146
    :cond_4
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 147
    if-eqz p3, :cond_7

    .line 148
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 152
    :goto_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mIsGotPreviousFrame:Z

    .line 153
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const/16 v12, 0x64

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got PreviousInput:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 157
    :cond_5
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-gez v11, :cond_6

    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-gez v11, :cond_8

    .line 158
    :cond_6
    const/4 v11, 0x0

    .line 178
    .end local v2           #cameraPhoto:J
    :goto_1
    return v11

    .line 126
    :catch_0
    move-exception v7

    .line 127
    .local v7, e:Ljava/lang/ClassCastException;
    invoke-virtual {v7}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 128
    const/4 v11, 0x0

    goto :goto_1

    .line 150
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v2       #cameraPhoto:J
    :cond_7
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v11, v1, v12}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto :goto_0

    .line 161
    :cond_8
    const/4 v4, 0x0

    .line 163
    .local v4, center_r:F
    cmp-long v11, v2, v5

    if-ltz v11, :cond_a

    .line 164
    const/high16 v11, 0x3f80

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v5, v12

    long-to-float v12, v12

    iget-object v13, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v2, v13

    long-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v4, v11, v12

    .line 165
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    aput-object v12, v10, v11

    .line 171
    :goto_2
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v12, "center_r"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    if-eqz p4, :cond_9

    if-nez p3, :cond_9

    .line 174
    iget-object v11, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventCamera;->mCopyProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p4

    invoke-virtual {v11, v10, v0}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 176
    :cond_9
    const/4 v11, 0x1

    goto :goto_1

    .line 167
    :cond_a
    sub-long v11, v5, v2

    long-to-float v11, v11

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v2

    long-to-float v12, v12

    div-float v4, v11, v12

    .line 168
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    aput-object v12, v10, v11

    goto :goto_2

    .line 178
    .end local v2           #cameraPhoto:J
    .end local v4           #center_r:F
    :cond_b
    const/4 v11, 0x0

    goto :goto_1
.end method
