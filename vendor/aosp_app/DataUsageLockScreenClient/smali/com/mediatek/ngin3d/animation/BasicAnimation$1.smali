.class Lcom/mediatek/ngin3d/animation/BasicAnimation$1;
.super Ljava/lang/Object;
.source "BasicAnimation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Timeline$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/BasicAnimation;->setTimeline(Lcom/mediatek/ngin3d/animation/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/BasicAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 10
    .parameter "timeline"

    .prologue
    .line 150
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "BasicAnimation"

    const-string v5, "%d: Animation %s is completed"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/Animation;->applyOnCompletedFlags()V

    .line 155
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v5, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 156
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 157
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 158
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation$Listener;

    .line 159
    .local v1, l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$5;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$5;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 164
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v4, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_1
    monitor-exit v5

    .line 167
    return-void

    .line 166
    .end local v0           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onLooped(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 0
    .parameter "timeline"

    .prologue
    .line 171
    return-void
.end method

.method public onMarkerReached(Lcom/mediatek/ngin3d/animation/Timeline;ILjava/lang/String;I)V
    .locals 12
    .parameter "timeline"
    .parameter "elapsedMsecs"
    .parameter "marker"
    .parameter "direction"

    .prologue
    .line 112
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v6, v6, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 113
    const-string v6, "BasicAnimation"

    const-string v7, "%d: Marker [%s] of Animation %s is reached"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    move-object v3, p3

    .line 116
    .local v3, m:Ljava/lang/String;
    move/from16 v0, p4

    .line 117
    .local v0, d:I
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v7, v6, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v7

    .line 118
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v6, v6, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 119
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 120
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v6, v6, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/Animation$Listener;

    .line 121
    .local v2, l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v4, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$3;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;ILjava/lang/String;)V

    .line 126
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v6, v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v2           #l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    .end local v4           #runnable:Ljava/lang/Runnable;
    :cond_1
    monitor-exit v7

    .line 129
    return-void

    .line 128
    .end local v1           #i:I
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onNewFrame(Lcom/mediatek/ngin3d/animation/Timeline;I)V
    .locals 7
    .parameter "timeline"
    .parameter "elapsedMsecs"

    .prologue
    .line 96
    move v4, p2

    .line 97
    .local v4, t:I
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v6, v5, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v6

    .line 98
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v5, v5, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 99
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 100
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v5, v5, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation$Listener;

    .line 101
    .local v1, l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;

    invoke-direct {v2, p0, v1, v4}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$2;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;I)V

    .line 106
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v5, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_0
    monitor-exit v6

    .line 109
    return-void

    .line 108
    .end local v0           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onPaused(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 10
    .parameter "timeline"

    .prologue
    .line 132
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 133
    const-string v4, "BasicAnimation"

    const-string v5, "%d: Animation %s is paused"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v5, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 137
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 138
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation$Listener;

    .line 139
    .local v1, l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$4;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$4;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 144
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v4, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_1
    monitor-exit v5

    .line 147
    return-void

    .line 146
    .end local v0           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onStarted(Lcom/mediatek/ngin3d/animation/Timeline;)V
    .locals 10
    .parameter "timeline"

    .prologue
    .line 74
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mOptions:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 75
    const-string v4, "BasicAnimation"

    const-string v5, "%d: Animation %s is started"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/mediatek/ngin3d/animation/MasterClock;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/Animation;->applyOnStartedFlags()V

    .line 79
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v5, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 80
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 81
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 82
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    iget-object v4, v4, Lcom/mediatek/ngin3d/animation/Animation;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/Animation$Listener;

    .line 83
    .local v1, l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    new-instance v2, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;

    invoke-direct {v2, p0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation$1$1;-><init>(Lcom/mediatek/ngin3d/animation/BasicAnimation$1;Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 88
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/BasicAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/BasicAnimation;

    invoke-virtual {v4, v2}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->runCallback(Ljava/lang/Runnable;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1           #l:Lcom/mediatek/ngin3d/animation/Animation$Listener;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_1
    monitor-exit v5

    .line 91
    return-void

    .line 90
    .end local v0           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
