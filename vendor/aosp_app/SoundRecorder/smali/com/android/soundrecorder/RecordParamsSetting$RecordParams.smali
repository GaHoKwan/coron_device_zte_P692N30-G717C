.class public Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
.super Ljava/lang/Object;
.source "RecordParamsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecordParamsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordParams"
.end annotation


# instance fields
.field public mAudioChannels:I

.field public mAudioEffect:[Z

.field public mAudioEncoder:I

.field public mAudioEncodingBitRate:I

.field public mAudioSamplingRate:I

.field public mExtension:Ljava/lang/String;

.field public mHDRecordMode:I

.field public mMimeType:Ljava/lang/String;

.field public mOutputFormat:I

.field public mRemainingTimeCalculatorBitRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    .line 92
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    .line 93
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    .line 97
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mRemainingTimeCalculatorBitRate:I

    .line 98
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mHDRecordMode:I

    .line 102
    iput v1, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEffect:[Z

    return-void
.end method
