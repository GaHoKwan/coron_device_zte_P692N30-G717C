.class public Lcom/mediatek/vlw/VideoSceneStubActivity;
.super Landroid/app/Activity;
.source "VideoSceneStubActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "VideoSceneStubActivity"


# instance fields
.field private mCompletionCalled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRenderer:Lcom/mediatek/vlw/VideoScene;

.field private mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vlw/VideoSceneStubActivity;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/vlw/VideoSceneStubActivity;)Lcom/mediatek/vlw/VideoScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/vlw/VideoSceneStubActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mCompletionCalled:Z

    return p1
.end method


# virtual methods
.method public getCompletionState()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mCompletionCalled:Z

    return v0
.end method

.method public getRenderer()Lcom/mediatek/vlw/VideoScene;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public hanleInvlaid()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$8;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$8;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x400

    const/4 v5, -0x1

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 195
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 196
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 198
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v3, Landroid/view/SurfaceView;

    invoke-direct {v3, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v3, surface:Landroid/view/SurfaceView;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 204
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 205
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 206
    iput-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 207
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    .line 208
    return-void
.end method

.method public pausePlayer()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$6;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$6;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    :cond_0
    return-void
.end method

.method public seekPlayer(J)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/vlw/VideoSceneStubActivity$7;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public setFixedSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/vlw/VideoSceneStubActivity$1;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/vlw/VideoSceneStubActivity$2;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public startPlayback()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$3;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_0
    return-void
.end method

.method public startPlayer()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$5;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/vlw/VideoSceneStubActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$4;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 213
    const-string v1, "VideoSceneStubActivity"

    const-string v2, "surfaceChanged() width=%d, height=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 217
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 218
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v1, p4, :cond_2

    .line 219
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1, p1, p3, p4}, Lcom/mediatek/vlw/VideoScene;->resize(Landroid/view/SurfaceHolder;II)V

    .line 228
    :cond_1
    return-void

    .line 221
    :cond_2
    iput-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceFrame:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 232
    const-string v1, "VideoSceneStubActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    if-nez v0, :cond_0

    .line 238
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-nez v1, :cond_1

    .line 241
    new-instance v1, Lcom/mediatek/vlw/VideoScene;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/mediatek/vlw/VideoScene;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;Z)V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    .line 242
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1, p1}, Lcom/mediatek/vlw/VideoScene;->init(Landroid/view/SurfaceHolder;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 245
    iget-object v1, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    new-instance v2, Lcom/mediatek/vlw/VideoSceneStubActivity$9;

    invoke-direct {v2, p0}, Lcom/mediatek/vlw/VideoSceneStubActivity$9;-><init>(Lcom/mediatek/vlw/VideoSceneStubActivity;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/vlw/VideoScene;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 253
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    .line 257
    const-string v0, "VideoSceneStubActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object v3, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 261
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->destroy()V

    .line 263
    iput-object v3, p0, Lcom/mediatek/vlw/VideoSceneStubActivity;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    .line 265
    :cond_0
    return-void
.end method
