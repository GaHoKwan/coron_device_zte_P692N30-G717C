.class Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "VideoLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoLiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VLWEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/mediatek/vlw/VideoScene;

.field private mVisible:Z

.field final synthetic this$0:Lcom/mediatek/vlw/VideoLiveWallpaper;


# direct methods
.method private constructor <init>(Lcom/mediatek/vlw/VideoLiveWallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->this$0:Lcom/mediatek/vlw/VideoLiveWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/vlw/VideoLiveWallpaper;Lcom/mediatek/vlw/VideoLiveWallpaper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;-><init>(Lcom/mediatek/vlw/VideoLiveWallpaper;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 179
    const-string v0, "hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->pause()V

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/vlw/VideoScene;->doCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 193
    :goto_1
    return-object v0

    .line 183
    :cond_1
    const-string v0, "show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 84
    const-string v0, "VideoLiveWallpaper"

    const-string v1, "create wallpaper engine"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    .line 87
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 88
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 5
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 105
    const-string v0, "VideoLiveWallpaper"

    const-string v1, "The desired size is: desiredWidth=%d, desiredHeight=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 94
    const-string v0, "VideoLiveWallpaper"

    const-string v1, "destroy wallpaper engine"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->destroy()V

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    .line 100
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 136
    const-string v0, "VideoLiveWallpaper"

    const-string v1, "surface changed width=%d, height=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0, p1, p3, p4}, Lcom/mediatek/vlw/VideoScene;->resize(Landroid/view/SurfaceHolder;II)V

    .line 142
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, surface:Landroid/view/Surface;
    :goto_0
    if-nez v0, :cond_0

    .line 151
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    const-string v1, "VideoLiveWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceCreated(), surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lcom/mediatek/vlw/VideoScene;

    iget-object v2, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->this$0:Lcom/mediatek/vlw/VideoLiveWallpaper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lcom/mediatek/vlw/VideoScene;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;Z)V

    iput-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    .line 159
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1, p1}, Lcom/mediatek/vlw/VideoScene;->init(Landroid/view/SurfaceHolder;)V

    .line 160
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 162
    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 168
    const-string v0, "VideoLiveWallpaper"

    const-string v1, "onSurfaceDestroyed()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->destroy()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    .line 174
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 115
    iget-boolean v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mVisible:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, visibleChange:Z
    :goto_0
    const-string v1, "VideoLiveWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibleChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    iput-boolean p1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mVisible:Z

    .line 122
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1, p1}, Lcom/mediatek/vlw/VideoScene;->setVisibility(Z)V

    .line 123
    if-eqz p1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 129
    :cond_0
    :goto_1
    return-void

    .line 115
    .end local v0           #visibleChange:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    .restart local v0       #visibleChange:Z
    :cond_2
    iget-object v1, p0, Lcom/mediatek/vlw/VideoLiveWallpaper$VLWEngine;->mRenderer:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->pause()V

    goto :goto_1
.end method
