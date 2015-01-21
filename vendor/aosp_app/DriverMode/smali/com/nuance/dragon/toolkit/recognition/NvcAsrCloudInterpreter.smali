.class public Lcom/nuance/dragon/toolkit/recognition/NvcAsrCloudInterpreter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpretedResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->getDictionary()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "Couldn\'t find top-level result dictionary"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to parse result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v1, "prompt"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v2

    const-string v1, "result_format"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v3

    if-eqz v2, :cond_3

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const-string v2, "interp_xml_results"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "Expected result_format == interp_xml_results"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>()V

    move-object v10, v1

    goto :goto_0

    :cond_4
    const-string v1, "xml_results"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "Expected xml_results"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;->createInterpretationResult([B)Lcom/nuance/dragon/toolkit/recognition/a/c;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "No interpretation result!"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v1, "No interpretations found"

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/nuance/dragon/toolkit/recognition/a/a;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Lcom/nuance/dragon/toolkit/recognition/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;

    const-string v0, "fill"

    iget-object v1, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    iget-object v1, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    if-eqz v1, :cond_9

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    iget-object v2, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :goto_3
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    iget-object v1, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->a:Ljava/lang/String;

    iget-object v2, v8, Lcom/nuance/dragon/toolkit/recognition/a/a$b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/nuance/dragon/toolkit/recognition/a/a;->a_()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    goto :goto_1

    :cond_b
    return-object v10
.end method

.method public bridge synthetic getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/NvcAsrCloudInterpreter;->getInterpretedResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRequiredList(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Ljava/util/List;
    .locals 7

    const/16 v6, 0xe0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->getDictionary()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v2

    if-eq v2, v6, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v2, "force_upload_flags"

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->get(I)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v4

    if-ne v4, v6, :cond_2

    check-cast v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v4, "force_upload"

    invoke-virtual {v1, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getInt(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "id"

    invoke-virtual {v1, v4}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v1

    iget-object v4, v1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public bridge synthetic getUpdateRequiredList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/NvcAsrCloudInterpreter;->getUpdateRequiredList(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processForCloud(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;Ljava/util/List;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic processForCloud(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/NvcAsrCloudInterpreter;->processForCloud(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
