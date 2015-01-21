.class public Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;
.super Lcom/mediatek/effect/filterpacks/ve/VideoEvent;
.source "VideoEventOverlay.java"


# static fields
.field private static mOverlayShader:Ljava/lang/String;


# instance fields
.field private mEdgeFrame:Landroid/filterfw/core/GLFrame;

.field private mInitOffsetTime:I

.field private mIsSeekToBegin:Z

.field private mIsWaitFirstFrame:Z

.field private mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

.field private mMergeProgram:Landroid/filterfw/core/ShaderProgram;

.field private mPreviousFrame:Landroid/filterfw/core/GLFrame;

.field private mStillBgFrame:Landroid/filterfw/core/GLFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float fgfactor;\nuniform float bgfactor;\nuniform mat3 matrixroll;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 bgcolor = texture2D(tex_sampler_1, v_texcoord);\n  vec2 coord = (matrixroll * vec3(v_texcoord, 1.0)).xy;\n  vec2 coordinside;\n    coordinside.x = ((coord.x-0.5) * 1320.0 / 1280.0) + 0.5;\n    coordinside.y = ((coord.y-0.5) * 760.0 / 720.0) + 0.5;\n  vec4 original = texture2D(tex_sampler_0, coordinside);\n  vec4 edge = texture2D(tex_sampler_2, coord);\n  if ((coordinside.x > 1.0 || coordinside.y > 1.0) ||\n      (coordinside.x < 0.0 || coordinside.y < 0.0)) {\n    original = mix(bgcolor * bgfactor, original, edge.a);\n  }\n  original = mix(original, edge, smoothstep(0.0, 1.0, edge.a));\n  gl_FragColor = mix(bgcolor * bgfactor, original, fgfactor);\n}\n"

    sput-object v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mOverlayShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "name"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 94
    const-string v1, "Overlay"

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 95
    return-void
.end method

.method private getRelatedTimeStamp(JJ)J
    .locals 4
    .parameter "time"
    .parameter "offset"

    .prologue
    .line 123
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p3

    sub-long v0, p1, v2

    .line 124
    .local v0, result:J
    return-wide v0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 2
    .parameter "context"
    .parameter "myfilter"

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->close(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 425
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 427
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 432
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 437
    iput-object v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 439
    :cond_2
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V
    .locals 5
    .parameter "context"
    .parameter "myfilter"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->open(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;)V

    .line 100
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mOverlayShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    .line 102
    iput v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 104
    const-string v0, "background"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "background_initoffsettime"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background_initoffsettime"

    invoke-virtual {p0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " video2 Init Offset Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 110
    const-string v0, "mediasource"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "mediasource"

    invoke-virtual {p0, v0}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    iput-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    .line 112
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    iget v1, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    const-string v1, " mMediaPlayer.pause()"

    invoke-virtual {v0, v4, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 118
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 119
    iput-boolean v3, p0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    .line 120
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z
    .locals 45
    .parameter "context"
    .parameter "myfilter"
    .parameter "isRenderOutput"
    .parameter "output"

    .prologue
    .line 129
    invoke-super/range {p0 .. p4}, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->process(Landroid/filterfw/core/FilterContext;Lcom/mediatek/effect/filterpacks/VideoEventFilter;ZLandroid/filterfw/core/GLFrame;)Z

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputCameraGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v8

    .line 132
    .local v8, camera:Landroid/filterfw/core/GLFrame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getInputVideoGLFrame()Landroid/filterfw/core/GLFrame;

    move-result-object v15

    .line 135
    .local v15, effectVideo:Landroid/filterfw/core/GLFrame;
    invoke-virtual {v15}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v20

    .line 137
    .local v20, inputFormat:Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    if-nez v37, :cond_0

    .line 138
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v21

    .line 139
    .local v21, outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v37

    check-cast v37, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 144
    .end local v21           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    if-nez v37, :cond_1

    .line 145
    const-string v37, "edge"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 146
    const-string v37, "edge"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 147
    .local v7, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 159
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    .line 160
    const-string v37, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_b

    const-string v37, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v37, v0

    if-eqz v37, :cond_b

    .line 161
    const-string v37, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/mediatek/effect/filterpacks/MyUtility;->createBitmapFrame(Landroid/filterfw/core/FilterContext;Landroid/graphics/Bitmap;)Landroid/filterfw/core/GLFrame;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    const-string v39, "mStillBgFrame(b): bitmap"

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 175
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    if-nez v37, :cond_3

    .line 176
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v21

    .line 177
    .restart local v21       #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v37

    check-cast v37, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mPreviousFrame:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v15}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 186
    .end local v21           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    :cond_3
    if-eqz p3, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/16 v39, 0x0

    aput v39, v37, v38

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mPreviousFrame:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 194
    :cond_4
    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    move-object/from16 v26, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    aput-object v38, v26, v37

    const/16 v37, 0x1

    aput-object v15, v26, v37

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    aput-object v38, v26, v37

    .line 196
    .local v26, subtractInputs:[Landroid/filterfw/core/Frame;
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/effect/filterpacks/VideoEventFilter;->getNowTimeStamp()J

    move-result-wide v12

    .line 197
    .local v12, currentTimeStamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 199
    .local v9, cameraPhoto:J
    const-string v37, "move_photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 201
    :try_start_0
    const-string v37, "move_photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Long;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mStart:Ljava/lang/Long;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v39

    add-long v9, v37, v39

    .line 209
    :cond_5
    cmp-long v37, v12, v9

    if-ltz v37, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    move/from16 v37, v0

    if-nez v37, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mMainFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v8, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 215
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mGotMainFrame:Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Got CameraInput:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 220
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    cmp-long v37, v37, v12

    if-lez v37, :cond_7

    .line 221
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    if-eqz v37, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " mMediaPlayer.seekTo(0) pause()"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 229
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    cmp-long v37, v37, v12

    if-gtz v37, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    move/from16 v37, v0

    if-nez v37, :cond_8

    .line 230
    const-string v37, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    const-string v37, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v37, v0

    if-eqz v37, :cond_c

    .line 246
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    cmp-long v37, v12, v37

    if-gez v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    cmp-long v37, v12, v37

    if-gez v37, :cond_e

    .line 247
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "now:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " do nothing ! ["

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "~"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "]"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 249
    const/16 v37, 0x0

    .line 418
    :goto_3
    return v37

    .line 149
    .end local v9           #cameraPhoto:J
    .end local v12           #currentTimeStamp:J
    .end local v26           #subtractInputs:[Landroid/filterfw/core/Frame;
    :cond_a
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v21

    .line 150
    .restart local v21       #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v37

    check-cast v37, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/16 v39, 0x0

    aput v39, v37, v38

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mEdgeFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    goto/16 :goto_0

    .line 164
    .end local v21           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v21

    .line 165
    .restart local v21       #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v37

    check-cast v37, Landroid/filterfw/core/GLFrame;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mStillBgFrame(b):"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v15}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    goto/16 :goto_1

    .line 202
    .end local v21           #outputFormat:Landroid/filterfw/core/MutableFrameFormat;
    .restart local v9       #cameraPhoto:J
    .restart local v12       #currentTimeStamp:J
    .restart local v26       #subtractInputs:[Landroid/filterfw/core/Frame;
    :catch_0
    move-exception v14

    .line 203
    .local v14, e:Ljava/lang/ClassCastException;
    invoke-virtual {v14}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 204
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 233
    .end local v14           #e:Ljava/lang/ClassCastException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    if-eqz v37, :cond_d

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " mMediaPlayer.seekTo(0) play()"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->seekTo(I)V

    .line 236
    const-string v37, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_d

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMediaPlayer:Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/mediatek/effect/filterpacks/io/MediaSourceInFilter;->pauseVideo(Z)V

    .line 240
    :cond_d
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsSeekToBegin:Z

    .line 241
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_2

    .line 252
    :cond_e
    const-string v37, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    const-string v37, "background"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/graphics/Bitmap;

    move/from16 v37, v0

    if-eqz v37, :cond_17

    .line 272
    :goto_4
    const-string v37, "background_still"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 273
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mStillBgFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    aput-object v38, v26, v37

    .line 277
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    sub-long v37, v12, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    sub-long v39, v39, v41

    const-wide/16 v41, 0x1

    add-long v39, v39, v41

    rem-long v28, v37, v39

    .line 278
    .local v28, tickStep:J
    const-wide/32 v37, 0xf4240

    div-long v28, v28, v37

    .line 280
    const/high16 v16, 0x3f80

    .line 281
    .local v16, fgFactor:F
    const-string v37, "bitmap_fadeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_10

    .line 282
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x3ff0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    sub-long v41, v41, v43

    const-wide/32 v43, 0xf4240

    div-long v41, v41, v43

    move-wide/from16 v0, v41

    long-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v39, v39, v41

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    sub-float v16, v16, v37

    .line 284
    :cond_10
    const/high16 v6, 0x3f80

    .line 285
    .local v6, bgFactor:F
    const-string v37, "background_fadein"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    .line 286
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x3ff0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    sub-long v41, v41, v43

    const-wide/32 v43, 0xf4240

    div-long v41, v41, v43

    move-wide/from16 v0, v41

    long-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v39, v39, v41

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v6, v0

    .line 289
    :cond_11
    const-string v37, "bitmap_move"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_12

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    sub-long v37, v37, v39

    const-wide/32 v39, 0xf4240

    div-long v28, v37, v39

    .line 293
    :cond_12
    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x3ff0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    sub-long v41, v41, v43

    const-wide/32 v43, 0xf4240

    div-long v41, v41, v43

    move-wide/from16 v0, v41

    long-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v39, v39, v41

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v27, v0

    .line 295
    .local v27, tick:F
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v30, v0

    .line 296
    .local v30, width:F
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v18, v0

    .line 297
    .local v18, height:F
    div-float v19, v30, v18

    .line 302
    .local v19, inputAspectRatio:F
    const/high16 v31, 0x3df0

    .line 303
    .local v31, xLocation0:F
    const v34, 0x3f4c71c7

    .line 305
    .local v34, yLocation0:F
    const/high16 v32, 0x3e38

    .line 306
    .local v32, xLocation90:F
    const/high16 v35, 0x3f70

    .line 308
    .local v35, yLocation90:F
    const-string v37, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 309
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    .line 310
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "x"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    .line 313
    :cond_13
    const-string v37, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 314
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v34

    .line 315
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "y"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v35

    .line 318
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mOrientation:I

    move/from16 v37, v0

    sparse-switch v37, :sswitch_data_0

    .line 335
    const/high16 v37, 0x3f00

    sub-float v33, v37, v31

    .line 336
    .local v33, xStep:F
    const/high16 v37, 0x3f00

    sub-float v36, v37, v34

    .line 341
    .local v36, yStep:F
    :goto_5
    mul-float v33, v33, v27

    .line 342
    mul-float v36, v36, v27

    .line 344
    const v22, 0x3eb0a3d7

    .line 346
    .local v22, percent:F
    const-string v37, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 347
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "scale"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ""

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 350
    :cond_15
    const/high16 v37, 0x3f80

    const/high16 v38, 0x3f80

    sub-float v38, v38, v22

    mul-float v38, v38, v27

    div-float v38, v38, v22

    add-float v25, v37, v38

    .line 354
    .local v25, sizeRatio:F
    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x3ff0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectEnd:Ljava/lang/Long;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    sub-long v41, v41, v43

    const-wide/32 v43, 0xf4240

    div-long v41, v41, v43

    move-wide/from16 v0, v41

    long-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v39, v39, v41

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v5, v0

    .line 355
    .local v5, angel:F
    const/high16 v17, 0x40c0

    .line 356
    .local v17, finalangel:F
    const/high16 v37, 0x4334

    div-float v37, v5, v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide v39, 0x400921fb54442d18L

    mul-double v37, v37, v39

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v39, v0

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v5, v0

    .line 358
    float-to-double v0, v5

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v39, v0

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v11, v0

    .line 359
    .local v11, cosval:F
    float-to-double v0, v5

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v39, v0

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v24, v0

    .line 403
    .local v24, sinval:F
    const/16 v37, 0x9

    move/from16 v0, v37

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v37, 0x0

    aput v11, v23, v37

    const/16 v37, 0x1

    mul-float v38, v24, v19

    aput v38, v23, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    aput v38, v23, v37

    const/16 v37, 0x3

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v19

    aput v38, v23, v37

    const/16 v37, 0x4

    aput v11, v23, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    aput v38, v23, v37

    const/16 v37, 0x6

    const/high16 v38, 0x3f80

    sub-float v38, v38, v11

    div-float v39, v24, v19

    add-float v38, v38, v39

    const/high16 v39, 0x3f00

    mul-float v38, v38, v39

    mul-float v39, v33, v25

    add-float v38, v38, v39

    aput v38, v23, v37

    const/16 v37, 0x7

    const/high16 v38, 0x3f80

    sub-float v38, v38, v11

    mul-float v39, v24, v19

    sub-float v38, v38, v39

    const/high16 v39, 0x3f00

    mul-float v38, v38, v39

    mul-float v39, v36, v25

    add-float v38, v38, v39

    aput v38, v23, v37

    const/16 v37, 0x8

    const/high16 v38, 0x3f80

    aput v38, v23, v37

    .line 410
    .local v23, rollTransform:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "fgfactor"

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "bgfactor"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "matrixroll"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    if-eqz p4, :cond_16

    if-nez p3, :cond_16

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mMergeProgram:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 418
    :cond_16
    const/16 v37, 0x1

    goto/16 :goto_3

    .line 255
    .end local v5           #angel:F
    .end local v6           #bgFactor:F
    .end local v11           #cosval:F
    .end local v16           #fgFactor:F
    .end local v17           #finalangel:F
    .end local v18           #height:F
    .end local v19           #inputAspectRatio:F
    .end local v22           #percent:F
    .end local v23           #rollTransform:[F
    .end local v24           #sinval:F
    .end local v25           #sizeRatio:F
    .end local v27           #tick:F
    .end local v28           #tickStep:J
    .end local v30           #width:F
    .end local v31           #xLocation0:F
    .end local v32           #xLocation90:F
    .end local v33           #xStep:F
    .end local v34           #yLocation0:F
    .end local v35           #yLocation90:F
    .end local v36           #yStep:F
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mEffectStart:Ljava/lang/Long;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    const-wide/32 v39, 0x5f5e100

    add-long v37, v37, v39

    cmp-long v37, v12, v37

    if-lez v37, :cond_18

    .line 256
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_4

    .line 257
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    invoke-virtual {v15}, Landroid/filterfw/core/GLFrame;->getTimestamp()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mInitOffsetTime:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-wide/from16 v3, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->getRelatedTimeStamp(JJ)J

    move-result-wide v37

    const-wide/32 v39, 0x1dcd6500

    cmp-long v37, v37, v39

    if-lez v37, :cond_1a

    .line 258
    if-eqz p4, :cond_19

    if-nez p3, :cond_19

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v37, v0

    const/16 v38, 0x3

    const/high16 v39, 0x3f80

    aput v39, v37, v38

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    const-string v38, "ccc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mColor:[F

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mCopyProgramWithColor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mPreviousFrame:Landroid/filterfw/core/GLFrame;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/effect/filterpacks/ve/VideoEvent;->mTool:Lcom/mediatek/effect/filterpacks/MyUtility;

    move-object/from16 v37, v0

    const/16 v38, 0x64

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "show mPreviousFrame @ "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/mediatek/effect/filterpacks/MyUtility;->log(CLjava/lang/String;)V

    .line 264
    const/16 v37, 0x1

    goto/16 :goto_3

    .line 266
    :cond_19
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 268
    :cond_1a
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/effect/filterpacks/ve/VideoEventOverlay;->mIsWaitFirstFrame:Z

    goto/16 :goto_4

    .line 320
    .restart local v6       #bgFactor:F
    .restart local v16       #fgFactor:F
    .restart local v18       #height:F
    .restart local v19       #inputAspectRatio:F
    .restart local v27       #tick:F
    .restart local v28       #tickStep:J
    .restart local v30       #width:F
    .restart local v31       #xLocation0:F
    .restart local v32       #xLocation90:F
    .restart local v34       #yLocation0:F
    .restart local v35       #yLocation90:F
    :sswitch_0
    const/high16 v37, 0x3f00

    sub-float v33, v32, v37

    .line 321
    .restart local v33       #xStep:F
    const/high16 v37, 0x3f00

    sub-float v36, v37, v35

    .line 322
    .restart local v36       #yStep:F
    goto/16 :goto_5

    .line 325
    .end local v33           #xStep:F
    .end local v36           #yStep:F
    :sswitch_1
    const/high16 v37, 0x3f00

    sub-float v33, v31, v37

    .line 326
    .restart local v33       #xStep:F
    const/high16 v37, 0x3f00

    sub-float v36, v34, v37

    .line 327
    .restart local v36       #yStep:F
    goto/16 :goto_5

    .line 330
    .end local v33           #xStep:F
    .end local v36           #yStep:F
    :sswitch_2
    const/high16 v37, 0x3f00

    sub-float v33, v37, v32

    .line 331
    .restart local v33       #xStep:F
    const/high16 v37, 0x3f00

    sub-float v36, v35, v37

    .line 332
    .restart local v36       #yStep:F
    goto/16 :goto_5

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
