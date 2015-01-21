.class public Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;


# instance fields
.field protected _isDecoyGrammar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpretedResult(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 3

    const-string v0, "voconResult"

    const-string v1, "instanceof VoconResult"

    instance-of v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;->_isDecoyGrammar:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;->getInterpretedResult(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRequiredList(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getUpdateRequiredList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;->getUpdateRequiredList(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "voconResult"

    const-string v3, "instanceof VoconResult"

    instance-of v4, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-static {v2, v3, v4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "local"

    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->isOutOfGrammar()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;->_isDecoyGrammar:Z

    if-eqz v0, :cond_0

    const-string v0, "decoy-grammar"

    :goto_0
    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\"vocon_decision\" = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    const-string v0, "out-of-grammar"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->isSpeech()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getChoiceCount()I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "noise"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->hasGenericSpeech(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "open-speech"

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic processForCloud(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/VoconArbitrationInterpreter;->processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
