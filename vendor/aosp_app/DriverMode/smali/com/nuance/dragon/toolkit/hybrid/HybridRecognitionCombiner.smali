.class public Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionCombiner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognitionCombiner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "No results to combine"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move-object p1, p2

    :cond_4
    :goto_0
    return-object p1

    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>()V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v1

    if-ge v6, v1, :cond_7

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoice(I)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->resolveUnrecognizedPhrases(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;Z)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getRecognitionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getScore()I

    move-result v3

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getPhrases()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Choice;->getExtra()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->getChoiceCount()I

    move-result v1

    if-eqz v1, :cond_4

    move-object p1, v0

    goto :goto_0
.end method
