.class public Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;
.super Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;
.source "StageWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/android/StageWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StageEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

.field private final mStage:Lcom/mediatek/ngin3d/Stage;

.field final synthetic this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;)V
    .locals 1
    .parameter
    .parameter "stage"

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Z)V
    .locals 4
    .parameter
    .parameter "stage"
    .parameter "antiAlias"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    .line 233
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;-><init>(Lcom/mediatek/ngin3d/android/GLWallpaperService;)V

    .line 235
    if-nez p2, :cond_1

    .line 236
    new-instance v2, Lcom/mediatek/ngin3d/Stage;

    invoke-static {}, Lcom/mediatek/ngin3d/android/AndroidUiHandler;->create()Lcom/mediatek/ngin3d/UiHandler;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/ngin3d/Stage;-><init>(Lcom/mediatek/ngin3d/UiHandler;)V

    iput-object v2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    .line 240
    :goto_0
    const-string v2, "ngin3d.showfps"

    invoke-static {}, Lcom/mediatek/ngin3d/Ngin3d;->showFPS()Z

    move-result v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .local v1, showFPS:Z
    new-instance v0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;Lcom/mediatek/ngin3d/android/StageWallpaperService;)V

    .line 246
    .local v0, mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;
    if-eqz p3, :cond_0

    .line 247
    new-instance v2, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;

    invoke-direct {v2}, Lcom/mediatek/ngin3d/android/MultisampleConfigChooser;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setEGLConfigChooser(Lcom/mediatek/ngin3d/android/EGLConfigChooser;)V

    .line 249
    :cond_0
    new-instance v2, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    iget-object v3, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;Z)V

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->setRenderer(Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;)V

    .line 251
    if-eqz v1, :cond_2

    .line 252
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setRenderMode(I)V

    .line 256
    :goto_1
    return-void

    .line 238
    .end local v0           #mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;
    .end local v1           #showFPS:Z
    :cond_1
    iput-object p2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    goto :goto_0

    .line 254
    .restart local v0       #mRenderCallback:Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;
    .restart local v1       #showFPS:Z
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setRenderMode(I)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Z)V
    .locals 1
    .parameter
    .parameter "antiAlias"

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Z)V

    .line 215
    return-void
.end method


# virtual methods
.method public getPresentationEngine()Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->getPresentationEngine()Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v0

    return-object v0
.end method

.method public getStage()Lcom/mediatek/ngin3d/Stage;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mStage:Lcom/mediatek/ngin3d/Stage;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StageEngine onDestroy, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->onDestroy()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    .line 268
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 273
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StageEngine onPause, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->onPause()V

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 281
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StageEngine onResume, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->onResume()V

    .line 284
    return-void
.end method

.method public final setRenderer(Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    .line 295
    const-string v0, "StageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->setRenderer(Lcom/mediatek/ngin3d/android/GLWallpaperService$Renderer;)V

    .line 298
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    .line 299
    return-void
.end method

.method public waitSurfaceReady()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "StageWallpaper"

    const-string v1, "waitSurfaceReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;->mRenderer:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageRenderer;->waitSurfaceReady()V

    .line 315
    return-void
.end method
