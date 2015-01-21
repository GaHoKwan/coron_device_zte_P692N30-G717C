.class public Lcom/mediatek/voicecommand/adapter/RecognitionResult;
.super Ljava/lang/Object;
.source "RecognitionResult.java"


# static fields
.field public static final VOICE_UNLOCK_ACCESS_FAIL:I = 0x0

.field public static final VOICE_UNLOCK_ACCESS_SUCCESS:I = 0x1

.field public static final VOICE_UNLOCK_TOO_NOISY:I = 0x2

.field public static final VOID_UNLOCK_VOICE_LOW:I = 0x3


# instance fields
.field public msgid:I

.field public voicecmdid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    .line 66
    iput p2, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/voicecommand/adapter/RecognitionResult;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget v0, p1, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    .line 71
    iget v0, p1, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    .line 72
    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 78
    iput p1, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    .line 79
    iput p2, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
