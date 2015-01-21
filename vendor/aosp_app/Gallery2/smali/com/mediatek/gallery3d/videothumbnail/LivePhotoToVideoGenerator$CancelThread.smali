.class Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;
.super Ljava/lang/Thread;
.source "LivePhotoToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelThread"
.end annotation


# instance fields
.field private active:Z

.field private dirty:Z

.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->this$0:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->active:Z

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->dirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;-><init>(Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyCancel()V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "CancelThread: notifyCancel()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->dirty:Z

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 171
    const-string v2, "LivePhoto CancelThread"

    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->setName(Ljava/lang/String;)V

    .line 172
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->active:Z

    if-eqz v2, :cond_1

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->active:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->dirty:Z

    if-nez v2, :cond_0

    .line 175
    const-string v2, "Gallery2/LivePhotoToVideoGenerator"

    const-string v3, "CancelThread: wait"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 177
    monitor-exit p0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 179
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->dirty:Z

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    .local v0, logTimeBefore:J
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->access$100()Lcom/mediatek/effect/effects/VideoScenarioEffect;

    move-result-object v3

    monitor-enter v3

    .line 183
    :try_start_2
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->access$100()Lcom/mediatek/effect/effects/VideoScenarioEffect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->cancel()V

    .line 184
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    const-string v2, "Gallery2/LivePhotoToVideoGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gallery2 Performance: onCancelRequested() costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 188
    .end local v0           #logTimeBefore:J
    :cond_1
    return-void
.end method
