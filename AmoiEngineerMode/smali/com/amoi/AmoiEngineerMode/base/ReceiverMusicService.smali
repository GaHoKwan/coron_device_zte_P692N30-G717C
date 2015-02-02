.class public Lcom/amoi/AmoiEngineerMode/base/ReceiverMusicService;
.super Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;
.source "ReceiverMusicService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVolume()I
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method protected initStreamType()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    .line 10
    return-void
.end method
