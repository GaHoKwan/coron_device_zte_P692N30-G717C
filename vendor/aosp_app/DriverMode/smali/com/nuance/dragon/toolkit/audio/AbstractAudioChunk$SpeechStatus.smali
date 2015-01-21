.class public final enum Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;
.super Ljava/lang/Enum;


# static fields
.field public static final enum NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

.field public static final enum SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

.field public static final enum UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    const-string v1, "NO_SPEECH"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    const-string v1, "SPEECH"

    invoke-direct {v0, v1, v4}, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->UNKNOWN:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->NO_SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->SPEECH:Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->a:[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->a:[Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/audio/AbstractAudioChunk$SpeechStatus;

    return-object v0
.end method
