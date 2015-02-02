.class public Lcom/amoi/AmoiEngineerMode/base/SpeakerAgingService;
.super Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;
.source "SpeakerAgingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFailString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SpeakerAgingService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSuccessString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/base/SpeakerAgingService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVolume()I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/AudioAgingServiceBase;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method protected initStreamType()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->streamType:I

    .line 26
    return-void
.end method
