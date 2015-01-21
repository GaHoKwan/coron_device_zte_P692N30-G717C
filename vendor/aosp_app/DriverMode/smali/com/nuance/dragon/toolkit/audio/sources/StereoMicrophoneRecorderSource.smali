.class public Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;
.super Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;


# instance fields
.field private final _channelNumber:I

.field private _timestamp:J


# direct methods
.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;IILandroid/os/Handler;)V
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;IILandroid/os/Handler;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method

.method public constructor <init>(ILcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(ILcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;ILandroid/os/Handler;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/audio/sources/MicrophoneRecorderSourceImp;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;Landroid/os/Handler;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_channelNumber:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic createNewAudioChunk(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->createNewAudioChunk(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    move-result-object v0

    return-object v0
.end method

.method protected createNewAudioChunk(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;
    .locals 8

    const/4 v1, 0x0

    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [S

    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [S

    array-length v0, p2

    div-int/lit8 v4, v0, 0x2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    mul-int/lit8 v5, v0, 0x2

    aget-short v5, p2, v5

    aput-short v5, v2, v0

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v5, p2, v5

    aput-short v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iput-wide p3, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    :goto_1
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    new-instance v2, Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/nuance/dragon/toolkit/audio/AudioChunk;-><init>(Lcom/nuance/dragon/toolkit/audio/AudioType;[SJ)V

    new-instance v3, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/nuance/dragon/toolkit/audio/AudioChunk;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lcom/nuance/dragon/toolkit/audio/MultiChannelAudioChunk;-><init>([Lcom/nuance/dragon/toolkit/audio/AudioChunk;)V

    return-object v3

    :cond_1
    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    invoke-virtual {p1, v3}, Lcom/nuance/dragon/toolkit/audio/AudioType;->getDuration([S)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->_timestamp:J

    goto :goto_1
.end method

.method protected getBufferSizeInBytes(III)I
    .locals 1

    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected setChannelConfig()V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->CHANNEL_CONFIG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/sources/StereoMicrophoneRecorderSource;->channelCount:I

    return-void
.end method
