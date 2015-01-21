.class public final Lzte/com/cn/driverMode/service/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/AudioTrack;

.field private b:Landroid/content/Context;

.field private c:J

.field private d:I

.field private e:Lzte/com/cn/driverMode/service/i;

.field private final f:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/service/h;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/h;-><init>(Lzte/com/cn/driverMode/service/g;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/g;->f:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    iput-object p1, p0, Lzte/com/cn/driverMode/service/g;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/service/g;)J
    .locals 2

    iget-wide v0, p0, Lzte/com/cn/driverMode/service/g;->c:J

    return-wide v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/service/g;)Lzte/com/cn/driverMode/service/i;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->e:Lzte/com/cn/driverMode/service/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strnmType ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|aduioName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/AudioTrack;

    const/16 v2, 0x3e80

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x2000

    move v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "afd :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "BeepPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pcm length is :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_2
    new-array v1, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const-string v4, "BeepPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "read pcm done, read bytes :"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const-string v0, "BeepPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audio buffer length : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    array-length v2, v1

    invoke-virtual {v0, v1, v6, v2}, Landroid/media/AudioTrack;->write([BII)I

    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lzte/com/cn/driverMode/service/g;->d:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lzte/com/cn/driverMode/service/g;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    const-string v1, "BeepPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setNotificationMarkerPosition code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/g;->f:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v7

    :goto_3
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v7

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v7

    move-object v7, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v7, v2

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :cond_6
    move-object v1, v7

    goto/16 :goto_0

    :cond_7
    move-object v1, v7

    move-object v2, v7

    goto/16 :goto_0
.end method

.method public final a(Lzte/com/cn/driverMode/service/i;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/g;->e:Lzte/com/cn/driverMode/service/i;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "BeepPlayer"

    const-string v1, "getPlayState() == AudioTrack.PLAYSTATE_STOPPED or PLAYSTATE_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getState () : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackHeadPosition(I)I

    const-string v0, "BeepPlayer"

    const-string v1, "start play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzte/com/cn/driverMode/service/g;->c:J

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "BeepPlayer"

    const-string v1, "is playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "head position : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BeepPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getState () : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->reloadStaticData()I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    iget v1, p0, Lzte/com/cn/driverMode/service/g;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    const-string v1, "BeepPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setNotificationMarkerPosition code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BeepPlayer"

    const-string v1, "start play"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzte/com/cn/driverMode/service/g;->c:J

    iget-object v0, p0, Lzte/com/cn/driverMode/service/g;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method
