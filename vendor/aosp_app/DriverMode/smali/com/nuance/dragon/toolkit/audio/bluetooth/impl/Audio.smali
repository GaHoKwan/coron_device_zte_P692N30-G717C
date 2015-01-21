.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;
.super Ljava/lang/Object;


# static fields
.field public static final BLUETOOTH_STREAM:I

.field public static final DEFAULT_AUDIO_SOURCE:I

.field public static final DEFAULT_AUDIO_STREAM:I

.field public static final MUSIC_STREAM:I

.field public static final VOICE_CALL_STREAM:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;-><init>()V

    const-class v0, Landroid/media/MediaRecorder$AudioSource;

    const-string v2, "VOICE_RECOGNITION"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->DEFAULT_AUDIO_SOURCE:I

    sget-boolean v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/AndroidVersion;->USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

    if-eqz v0, :cond_1

    sput v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->DEFAULT_AUDIO_STREAM:I

    :goto_0
    const-class v0, Landroid/media/AudioManager;

    const-string v2, "STREAM_BLUETOOTH_SCO"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->BLUETOOTH_STREAM:I

    sput v4, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->MUSIC_STREAM:I

    sput v3, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->VOICE_CALL_STREAM:I

    return-void

    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/Audio;->DEFAULT_AUDIO_STREAM:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
