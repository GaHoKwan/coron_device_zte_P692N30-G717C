.class public abstract Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;
    .locals 1

    invoke-static {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract append(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V
.end method

.method public abstract getAlternatives(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/Alternatives;
.end method

.method public abstract getExtraInformation()Ljava/util/Map;
.end method

.method public abstract merge(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;JJ)V
.end method

.method public abstract sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;
.end method

.method public abstract size()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method
