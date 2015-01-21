.class public Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;
.super Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic$Stub;
.source "ServiceAvrcpStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SERVICE_AVRCP_STUB"


# instance fields
.field protected bPlaybackFlag:Z

.field protected bTrackAppSettingChangedFlag:Z

.field protected bTrackNowPlayingChangedFlag:Z

.field protected bTrackPosChangedFlag:Z

.field protected bTrackReachEndFlag:Z

.field protected bTrackReachStartFlag:Z

.field protected bTrackchangeFlag:Z

.field final mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatMode:I

.field private mService:Lcom/android/music/MediaPlaybackService;

.field private mShuffleMode:I


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 2
    .parameter "mediaPlaybackService"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic$Stub;-><init>()V

    .line 16
    iput v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mRepeatMode:I

    .line 18
    iput v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mShuffleMode:I

    .line 24
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    .line 246
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bPlaybackFlag:Z

    .line 248
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackchangeFlag:Z

    .line 250
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackReachStartFlag:Z

    .line 252
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackReachEndFlag:Z

    .line 254
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackPosChangedFlag:Z

    .line 256
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackAppSettingChangedFlag:Z

    .line 258
    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackNowPlayingChangedFlag:Z

    .line 21
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    .line 22
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([JI)V

    .line 224
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCapabilities()[B
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEqualizeMode()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getNowPlaying()[J
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getNowPlayingItemName(J)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStatus()B
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isCursorNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x2

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mRepeatMode:I

    .line 200
    iget v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mRepeatMode:I

    return v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mShuffleMode:I

    .line 170
    iget v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public informBatteryStatusOfCT()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public informDisplayableCharacterSet(I)Z
    .locals 1
    .parameter "charset"

    .prologue
    .line 212
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 93
    return-void
.end method

.method public nextGroup()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 97
    return-void
.end method

.method protected notifyAppSettingChanged()V
    .locals 5

    .prologue
    .line 352
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackAppSettingChangedFlag:Z

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    if-nez v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackAppSettingChangedFlag:Z

    .line 358
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 359
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 360
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;

    .line 362
    .local v2, listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;->notifyAppSettingChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    .end local v2           #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 363
    .restart local v2       #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public notifyBTAvrcp(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 262
    const-string v0, "SERVICE_AVRCP_STUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AVRCP] notifyBTAvrcp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->getPlayStatus()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyPlaybackStatus(B)V

    .line 266
    :cond_0
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyTrackChanged()V

    .line 270
    :cond_1
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyTrackChanged()V

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyNowPlayingContentChanged()V

    .line 274
    :cond_2
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->notifyTrackChanged()V

    .line 277
    :cond_3
    return-void
.end method

.method protected notifyNowPlayingContentChanged()V
    .locals 6

    .prologue
    .line 372
    const-string v3, "SERVICE_AVRCP_STUB"

    const-string v4, "[AVRCP] notifyNowPlayingContentChanged "

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    if-nez v3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackNowPlayingChangedFlag:Z

    .line 379
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 381
    .local v0, N:I
    const-string v3, "SERVICE_AVRCP_STUB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AVRCP] notifyNowPlayingContentChanged  N= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 384
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;

    .line 386
    .local v2, listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;->notifyNowPlayingContentChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    .end local v2           #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 387
    .restart local v2       #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected notifyPlaybackPosChanged()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackPosChangedFlag:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 349
    :cond_0
    return-void
.end method

.method protected notifyPlaybackStatus(B)V
    .locals 6
    .parameter "status"

    .prologue
    .line 287
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bPlaybackFlag:Z

    .line 289
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 290
    .local v0, N:I
    const-string v3, "SERVICE_AVRCP_STUB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AVRCP] notifyPlaybackStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 292
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;

    .line 294
    .local v2, listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;->notifyPlaybackStatus(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v2           #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 302
    return-void

    .line 295
    .restart local v2       #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected notifyTrackChanged()V
    .locals 6

    .prologue
    .line 309
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackchangeFlag:Z

    .line 311
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 312
    .local v0, N:I
    const-string v3, "SERVICE_AVRCP_STUB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AVRCP] notifyTrackChanged  N= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 314
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;

    .line 316
    .local v2, listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->getAudioId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;->notifyTrackChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v2           #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 323
    return-void

    .line 317
    .restart local v2       #listener:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected notifyTrackReachEnd()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackReachEndFlag:Z

    if-eq v0, v1, :cond_0

    .line 341
    :cond_0
    return-void
.end method

.method protected notifyTrackReachStart()V
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackReachStartFlag:Z

    if-eq v0, v1, :cond_0

    .line 332
    :cond_0
    return-void
.end method

.method protected notifyVolumehanged(B)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 396
    const-string v0, "SERVICE_AVRCP_STUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AVRCP] notifyVolumehanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([JI)V

    .line 236
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 78
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 85
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 89
    return-void
.end method

.method public prevGroup()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 101
    return-void
.end method

.method public regNotificationEvent(BI)Z
    .locals 4
    .parameter "eventId"
    .parameter "interval"

    .prologue
    const/4 v0, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 57
    const-string v0, "SERVICE_AVRCP_STUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AVRCP] MusicApp doesn\'t support eventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bPlaybackFlag:Z

    .line 47
    const-string v1, "SERVICE_AVRCP_STUB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AVRCP] bPlaybackFlag flag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bPlaybackFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :sswitch_1
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackchangeFlag:Z

    .line 51
    const-string v0, "SERVICE_AVRCP_STUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AVRCP] bTrackchange flag is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackchangeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackchangeFlag:Z

    goto :goto_0

    .line 54
    :sswitch_2
    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->bTrackNowPlayingChangedFlag:Z

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public registerCallback(Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 28
    const-string v0, "SERVICE_AVRCP_STUB"

    const-string v1, "[AVRCP] ServiceAvrcpStub. registerCallback"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->getRepeatMode()I

    .line 33
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->getShuffleMode()I

    .line 34
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public setEqualizeMode(I)Z
    .locals 1
    .parameter "equalizeMode"

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public setPlayerApplicationSettingValue(BB)Z
    .locals 1
    .parameter "attrId"
    .parameter "value"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 244
    return-void
.end method

.method public setRepeatMode(I)Z
    .locals 7
    .parameter "repeatmode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, mode:I
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    return v1

    .line 181
    :pswitch_0
    const/4 v0, 0x0

    .line 192
    :goto_1
    const-string v3, "SERVICE_AVRCP_STUB"

    const-string v4, "[AVRCP] setRepeatMode musid_mode:%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    move v1, v2

    .line 195
    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v0, 0x1

    .line 185
    goto :goto_1

    .line 187
    :pswitch_2
    const/4 v0, 0x2

    .line 188
    goto :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScanMode(I)Z
    .locals 1
    .parameter "scanMode"

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public setShuffleMode(I)Z
    .locals 4
    .parameter "shufflemode"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, mode:I
    packed-switch p1, :pswitch_data_0

    .line 160
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 154
    :pswitch_0
    const/4 v0, 0x0

    .line 162
    :goto_1
    const-string v1, "SERVICE_AVRCP_STUB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AVRCP] setShuffleMode music_mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 165
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :pswitch_1
    const/4 v0, 0x1

    .line 158
    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mService:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 74
    return-void
.end method

.method public unregisterCallback(Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 37
    const-string v0, "SERVICE_AVRCP_STUB"

    const-string v1, "[AVRCP] ServiceAvrcpStub. unregisterCallback"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/ServiceAvrcpStub;->mAvrcpCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 41
    :cond_0
    return-void
.end method
