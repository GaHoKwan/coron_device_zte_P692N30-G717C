.class Lcom/android/musicvis/vis1/Visualization1$CubeEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "Visualization1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/vis1/Visualization1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CubeEngine"
.end annotation


# instance fields
.field private mAudioCapture:Lcom/android/musicvis/AudioCapture;

.field private mCenterX:F

.field private mCenterY:F

.field private final mDrawCube:Ljava/lang/Runnable;

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mStartTime:J

.field private mTouchX:F

.field private mTouchY:F

.field private mVisible:Z

.field private mVizData:[I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/musicvis/vis1/Visualization1;


# direct methods
.method constructor <init>(Lcom/android/musicvis/vis1/Visualization1;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 73
    iput-object p1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 57
    iput v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchX:F

    .line 58
    iput v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchY:F

    .line 64
    const/16 v0, 0x400

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVizData:[I

    .line 66
    new-instance v0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine$1;

    invoke-direct {v0, p0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine$1;-><init>(Lcom/android/musicvis/vis1/Visualization1$CubeEngine;)V

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    .line 74
    return-void
.end method


# virtual methods
.method drawCube(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    const/high16 v1, -0x100

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 190
    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v1, v2, v2}, Lcom/android/musicvis/AudioCapture;->getFormattedData(II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVizData:[I

    .line 196
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mWidth:I

    if-ge v0, v1, :cond_1

    .line 197
    int-to-float v1, v0

    iget v2, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mCenterY:F

    iget-object v3, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVizData:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVizData:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 199
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 200
    return-void
.end method

.method drawFrame()V
    .locals 9

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    .line 164
    .local v3, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 165
    .local v1, frame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 166
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 168
    .local v2, height:I
    const/4 v0, 0x0

    .line 170
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawCube(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawTouchPoint(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    #getter for: Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/musicvis/vis1/Visualization1;->access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-boolean v5, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVisible:Z

    if-eqz v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    #getter for: Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/musicvis/vis1/Visualization1;->access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v7, 0x28

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_2
    return-void

    .line 177
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v5
.end method

.method drawTouchPoint(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 203
    iget v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchX:F

    iget v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchY:F

    const/high16 v2, 0x4248

    iget-object v3, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 80
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 81
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mStartTime:J

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    #getter for: Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/musicvis/vis1/Visualization1;->access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 96
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 99
    :cond_0
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mOffset:F

    .line 145
    invoke-virtual {p0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawFrame()V

    .line 146
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v1, 0x4000

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 123
    iput p3, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mWidth:I

    .line 124
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mCenterX:F

    .line 125
    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mCenterY:F

    .line 126
    invoke-virtual {p0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawFrame()V

    .line 127
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 132
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVisible:Z

    .line 138
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    #getter for: Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/musicvis/vis1/Visualization1;->access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/high16 v2, -0x4080

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchX:F

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchY:F

    .line 159
    :goto_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 160
    return-void

    .line 156
    :cond_0
    iput v2, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchX:F

    .line 157
    iput v2, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mTouchY:F

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mVisible:Z

    .line 104
    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/musicvis/AudioCapture;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/musicvis/AudioCapture;-><init>(II)V

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->start()V

    .line 109
    invoke-virtual {p0}, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->drawFrame()V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->this$0:Lcom/android/musicvis/vis1/Visualization1;

    #getter for: Lcom/android/musicvis/vis1/Visualization1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/musicvis/vis1/Visualization1;->access$000(Lcom/android/musicvis/vis1/Visualization1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->stop()V

    .line 114
    iget-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    invoke-virtual {v0}, Lcom/android/musicvis/AudioCapture;->release()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/vis1/Visualization1$CubeEngine;->mAudioCapture:Lcom/android/musicvis/AudioCapture;

    goto :goto_0
.end method
