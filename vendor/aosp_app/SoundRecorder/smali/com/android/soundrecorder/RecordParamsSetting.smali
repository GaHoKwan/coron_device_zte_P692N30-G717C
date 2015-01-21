.class public Lcom/android/soundrecorder/RecordParamsSetting;
.super Ljava/lang/Object;
.source "RecordParamsSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
    }
.end annotation


# static fields
.field public static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/aac"

.field public static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field public static final AUDIO_AWB:Ljava/lang/String; = "audio/awb"

.field public static final AUDIO_CHANNELS_MONO:I = 0x1

.field public static final AUDIO_CHANNELS_STEREO:I = 0x2

.field public static final AUDIO_NOT_LIMIT_TYPE:Ljava/lang/String; = "audio/*"

.field public static final AUDIO_OGG:Ljava/lang/String; = "application/ogg"

.field public static final AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final AUDIO_WAV:Ljava/lang/String; = "audio/wav"

.field public static final EFFECT_AEC:I = 0x0

.field public static final EFFECT_AGC:I = 0x2

.field public static final EFFECT_NS:I = 0x1

.field public static final ENCODE_BITRATE_AAC:I = 0x1f400

.field public static final ENCODE_BITRATE_ADPCM:I = 0x1f400

.field public static final ENCODE_BITRATE_VORBIS:I = 0x1f400

.field public static final FORMAT_HIGH:I = 0x0

.field public static final FORMAT_LOW:I = 0x2

.field public static final FORMAT_STANDARD:I = 0x1

.field public static final HIGH_AUDIO_CHANNELS:Ljava/lang/String; = "high_audio_channels"

.field public static final HIGH_ENCODER:Ljava/lang/String; = "high_encoder"

.field public static final HIGH_ENCODE_BITRATE:Ljava/lang/String; = "high_encode_bitrate"

.field public static final HIGH_OUTPUT_FORMAT:Ljava/lang/String; = "high_output_format"

.field public static final HIGH_RECORD_ENCODER:Ljava/lang/String; = "high_record_encoder"

.field public static final HIGH_SAMPLE_RATE:Ljava/lang/String; = "high_sample_rate"

.field public static final INIT_VALUES:Ljava/lang/String; = "init_values"

.field public static final LOW_AUDIO_CHANNELS:Ljava/lang/String; = "low_audio_channels"

.field public static final LOW_ENCODER:Ljava/lang/String; = "low_encoder"

.field public static final LOW_ENCODE_BITRATE:Ljava/lang/String; = "low_encode_bitrate"

.field public static final LOW_OUTPUT_FORMAT:Ljava/lang/String; = "low_output_format"

.field public static final LOW_SAMPLE_RATE:Ljava/lang/String; = "low_sample_rate"

.field public static final MODE_INDOOR:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_OUTDOOR:I = 0x2

.field public static final NOT_LIMIT_TYPE:Ljava/lang/String; = "*/*"

.field public static final RECORD_PARAM:Ljava/lang/String; = "record_params"

.field public static final SAMPLE_RATE_AAC:I = 0xbb80

.field public static final SAMPLE_RATE_ADPCM:I = 0xbb80

.field public static final SAMPLE_RATE_VORBIS:I = 0xbb80

.field public static final STANDARD_AUDIO_CHANNELS:Ljava/lang/String; = "standard_audio_channels"

.field public static final STANDARD_ENCODER:Ljava/lang/String; = "standard_encoder"

.field public static final STANDARD_ENCODE_BITRATE:Ljava/lang/String; = "standard_encode_bitrate"

.field public static final STANDARD_OUTPUT_FORMAT:Ljava/lang/String; = "standard_output_format"

.field public static final STANDARD_SAMPLE_RATE:Ljava/lang/String; = "standard_sample_rate"

.field private static final TAG:Ljava/lang/String; = "SR/RecordParamsSetting"

.field private static sEffectArray:[I

.field private static sEnableTestAudioEffect:Z

.field private static sFormatArray:[I

.field private static sHighParams:[I

.field private static sLowParams:[I

.field private static sModeArray:[I

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static sQualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;

.field private static sResources:Landroid/content/res/Resources;

.field private static sStandardParams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    .line 77
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/soundrecorder/RecordParamsSetting;->sEnableTestAudioEffect:Z

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/soundrecorder/RecordParamsSetting;->sEffectArray:[I

    .line 82
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    .line 83
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    .line 84
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    .line 85
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    .line 86
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    .line 87
    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sQualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    return-void

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x27t 0x0t 0x8t 0x7ft
        0x28t 0x0t 0x8t 0x7ft
        0x26t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static canSelectEffect()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/android/soundrecorder/RecordParamsSetting;->sEnableTestAudioEffect:Z

    return v0
.end method

.method static canSelectFormat()Z
    .locals 2

    .prologue
    .line 215
    const-string v0, "SR/RecordParamsSetting"

    const-string v1, "<canSelectFormat> FeatureOption.HAVE_AACENCODE_FEATURE is:true"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method static canSelectMode()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method static getEffectStringIDArray()[I
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/android/soundrecorder/RecordParamsSetting;->sEffectArray:[I

    return-object v0
.end method

.method static getFormatStringIDArray(Landroid/content/Context;)[I
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f080004

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, formartStringIDArray:[I
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sQualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    invoke-interface {v2}, Lcom/mediatek/soundrecorder/ext/IQualityLevel;->getLevelNumber()I

    move-result v1

    .line 254
    .local v1, levelNumber:I
    if-ne v5, v1, :cond_1

    .line 255
    new-array v0, v5, [I

    .line 256
    aput v7, v0, v3

    .line 257
    const v2, 0x7f080029

    aput v2, v0, v4

    .line 258
    new-array v2, v5, [I

    sput-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    .line 259
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aput v3, v2, v3

    .line 260
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aput v4, v2, v4

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    if-ne v6, v1, :cond_0

    .line 262
    new-array v0, v6, [I

    .line 263
    aput v7, v0, v3

    .line 264
    const v2, 0x7f080005

    aput v2, v0, v4

    .line 265
    const v2, 0x7f080006

    aput v2, v0, v5

    .line 266
    new-array v2, v6, [I

    sput-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    .line 267
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aput v3, v2, v3

    .line 268
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aput v4, v2, v4

    .line 269
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aput v5, v2, v5

    goto :goto_0
.end method

.method static getModeStringIDArray()[I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    new-array v0, v5, [I

    .line 240
    .local v0, modeIDArray:[I
    const v1, 0x7f080016

    aput v1, v0, v2

    .line 241
    const v1, 0x7f080018

    aput v1, v0, v3

    .line 242
    const v1, 0x7f080019

    aput v1, v0, v4

    .line 243
    new-array v1, v5, [I

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    .line 244
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    aput v2, v1, v2

    .line 245
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    aput v3, v1, v3

    .line 246
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    aput v4, v1, v4

    .line 247
    return-object v0
.end method

.method static getParamsArrayFromResource()V
    .locals 3

    .prologue
    .line 375
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sQualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    invoke-interface {v1}, Lcom/mediatek/soundrecorder/ext/IQualityLevel;->getLevelNumber()I

    move-result v0

    .line 376
    .local v0, levelNumber:I
    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 377
    const-string v1, "SR/RecordParamsSetting"

    const-string v2, "There will show three levels at voice qulity choose dialog."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    .line 379
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    .line 380
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    .line 386
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v1, "SR/RecordParamsSetting"

    const-string v2, "There will show two levels at voice qulity choose dialog."

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    .line 384
    sget-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    goto :goto_0
.end method

.method static getRecordParams(Ljava/lang/String;II[Z)Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
    .locals 10
    .parameter "requestType"
    .parameter "selectFormat"
    .parameter "selectMode"
    .parameter "selectEffect"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 108
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> start"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    invoke-direct {v1}, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;-><init>()V

    .line 110
    .local v1, recordParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
    const/4 v0, 0x0

    .line 111
    .local v0, params:[I
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    iput-object p3, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEffect:[Z

    .line 114
    :cond_0
    const-string v2, "audio/*"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "*/*"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 143
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> selectFormat is out of range"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    iget v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mRemainingTimeCalculatorBitRate:I

    .line 158
    invoke-static {v1}, Lcom/android/soundrecorder/RecordParamsSetting;->setExtensionAndMimeTypeParams(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;)V

    .line 184
    :goto_1
    const-string v2, "SR/RecordParamsSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordParams.mAudioEncoder is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; recordParams.mAudioChannels is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; recordParams.mAudioEncodingBitRate is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; recordParams.mAudioSamplingRate is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; recordParams.mOutputFormat is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    packed-switch p2, :pswitch_data_1

    .line 205
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> selectMode is out of range"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_2
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> end"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v1

    .line 119
    :pswitch_0
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #params:[I
    check-cast v0, [I

    .line 120
    .restart local v0       #params:[I
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "high_encoder"

    aget v4, v0, v6

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    .line 121
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "high_audio_channels"

    aget v4, v0, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    .line 122
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "high_encode_bitrate"

    aget v4, v0, v7

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    .line 123
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "high_sample_rate"

    aget v4, v0, v8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    .line 124
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "high_output_format"

    aget v4, v0, v9

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    goto/16 :goto_0

    .line 127
    :pswitch_1
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #params:[I
    check-cast v0, [I

    .line 128
    .restart local v0       #params:[I
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "standard_encoder"

    aget v4, v0, v6

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    .line 129
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "standard_audio_channels"

    aget v4, v0, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    .line 130
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "standard_encode_bitrate"

    aget v4, v0, v7

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    .line 131
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "standard_sample_rate"

    aget v4, v0, v8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    .line 132
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "standard_output_format"

    aget v4, v0, v9

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    goto/16 :goto_0

    .line 135
    :pswitch_2
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #params:[I
    check-cast v0, [I

    .line 136
    .restart local v0       #params:[I
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "low_encoder"

    aget v4, v0, v6

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    .line 137
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "low_audio_channels"

    aget v4, v0, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    .line 138
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "low_encode_bitrate"

    aget v4, v0, v7

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    .line 139
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "low_sample_rate"

    aget v4, v0, v8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    .line 140
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "low_output_format"

    aget v4, v0, v9

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    goto/16 :goto_0

    .line 161
    :cond_2
    const-string v2, "audio/amr"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 168
    :cond_3
    :goto_3
    if-eqz v0, :cond_7

    .line 169
    aget v2, v0, v6

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    .line 170
    aget v2, v0, v5

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    .line 171
    aget v2, v0, v7

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    .line 172
    aget v2, v0, v8

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    .line 173
    aget v2, v0, v9

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    .line 174
    iget v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    if-ne v5, v2, :cond_6

    .line 175
    const/16 v2, 0x3200

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mRemainingTimeCalculatorBitRate:I

    .line 179
    :goto_4
    invoke-static {v1}, Lcom/android/soundrecorder/RecordParamsSetting;->setExtensionAndMimeTypeParams(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;)V

    goto/16 :goto_1

    .line 163
    :cond_4
    const-string v2, "audio/awb"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_3

    .line 165
    :cond_5
    const-string v2, "audio/aac"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    const v3, 0x7f090005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_3

    .line 177
    :cond_6
    iget v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    iput v2, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mRemainingTimeCalculatorBitRate:I

    goto :goto_4

    .line 181
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid output file type requested"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :pswitch_3
    iput v6, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mHDRecordMode:I

    .line 194
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> mHDRecordModeis MODE_NORMAL"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 197
    :pswitch_4
    iput v5, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mHDRecordMode:I

    .line 198
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> mHDRecordModeis MODE_INDOOR"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 201
    :pswitch_5
    iput v7, v1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mHDRecordMode:I

    .line 202
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<getRecordParams> mHDRecordModeis MODE_OUTDOOR"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static getSelectFormat(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 282
    sget-object v0, Lcom/android/soundrecorder/RecordParamsSetting;->sFormatArray:[I

    aget v0, v0, p0

    return v0
.end method

.method static getSelectMode(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 286
    sget-object v0, Lcom/android/soundrecorder/RecordParamsSetting;->sModeArray:[I

    aget v0, v0, p0

    return v0
.end method

.method static initRecordParamsSharedPreference(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "<InitSharedPreference>"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sResources:Landroid/content/res/Resources;

    .line 298
    const-string v2, "record_params"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    .line 299
    invoke-static {p0}, Lcom/mediatek/soundrecorder/ext/ExtensionHelper;->getExtension(Landroid/content/Context;)Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    move-result-object v2

    sput-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sQualityLevel:Lcom/mediatek/soundrecorder/ext/IQualityLevel;

    .line 300
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->getParamsArrayFromResource()V

    .line 301
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "init_values"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 302
    .local v1, isFirstSet:Z
    const-string v2, "SR/RecordParamsSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFirstSet is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-eqz v1, :cond_1

    .line 304
    const-string v2, "SR/RecordParamsSetting"

    const-string v3, "It is the first time to set default values."

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "init_values"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v2, "high_encoder"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v2, "high_audio_channels"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string v2, "high_encode_bitrate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    aget v3, v3, v7

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v2, "high_sample_rate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    aget v3, v3, v8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string v2, "high_output_format"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sHighParams:[I

    aget v3, v3, v9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v2, "standard_encoder"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v2, "standard_audio_channels"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v2, "standard_encode_bitrate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    aget v3, v3, v7

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v2, "standard_sample_rate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    aget v3, v3, v8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v2, "standard_output_format"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sStandardParams:[I

    aget v3, v3, v9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 319
    sget-object v2, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "low_encoder"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v2, "low_audio_channels"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    aget v3, v3, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v2, "low_encode_bitrate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    aget v3, v3, v7

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v2, "low_sample_rate"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    aget v3, v3, v8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v2, "low_output_format"

    sget-object v3, Lcom/android/soundrecorder/RecordParamsSetting;->sLowParams:[I

    aget v3, v3, v9

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method static isAvailableRequestType(Ljava/lang/String;)Z
    .locals 1
    .parameter "requestType"

    .prologue
    .line 234
    const-string v0, "audio/amr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/3gpp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setExtensionAndMimeTypeParams(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;)V
    .locals 3
    .parameter "recordParams"

    .prologue
    .line 337
    const-string v0, "SR/RecordParamsSetting"

    const-string v1, "<setExtensionAndMimeTypeParams>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    :pswitch_0
    const-string v0, "SR/RecordParamsSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordParams.mExtension is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; recordParams.mMimeType is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 340
    :pswitch_1
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 341
    const-string v0, "audio/amr"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 344
    :pswitch_2
    const-string v0, ".awb"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 345
    const-string v0, "audio/awb"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 348
    :pswitch_3
    const-string v0, ".3gpp"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 349
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 352
    :pswitch_4
    const-string v0, ".ogg"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 353
    const-string v0, "application/ogg"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 356
    :pswitch_5
    const-string v0, ".wav"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 357
    const-string v0, "audio/wav"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 361
    :pswitch_6
    const-string v0, ".aac"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    .line 362
    const-string v0, "audio/aac"

    iput-object v0, p0, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mMimeType:Ljava/lang/String;

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
