.class public Lcom/nuance/dragon/toolkit/recognition/ElvisInterpreter;
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
.method public getInterpretedResult(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 23

    const-string v1, "elvisResult"

    const-string v2, "instanceof ElvisResult"

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-static {v1, v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    new-instance v17, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getGateConfidence()I

    move-result v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getChoiceList()Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getWords()Ljava/util/List;

    move-result-object v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "Elvis Nbest list can\'t be empty"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    const/4 v1, -0x1

    move v15, v1

    move-object/from16 v16, v14

    :goto_1
    move/from16 v0, v22

    if-ge v15, v0, :cond_a

    add-int/lit8 v1, v15, 0x1

    move/from16 v0, v22

    if-ge v1, v0, :cond_4

    add-int/lit8 v1, v15, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;

    move-object v14, v1

    :goto_2
    if-eqz v14, :cond_e

    iget-object v1, v14, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, -0x1

    :goto_3
    if-ltz v1, :cond_6

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    iget-object v6, v14, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move v11, v4

    move-object v12, v1

    :goto_6
    if-eqz v16, :cond_d

    if-eqz v14, :cond_1

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-nez v1, :cond_1

    iget-boolean v1, v14, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-nez v1, :cond_1

    invoke-static {v13, v12}, Lcom/nuance/dragon/toolkit/util/internal/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_1
    const/4 v1, 0x1

    move v10, v1

    :goto_7
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->fullPhrase:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/util/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->spokenForm:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_2

    if-eqz v10, :cond_c

    :cond_2
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    move-object v8, v7

    :goto_8
    if-eqz v10, :cond_3

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    const-string v2, " "

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/h;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->isGenericSpeech:Z

    if-nez v2, :cond_9

    const/4 v6, 0x1

    :goto_9
    move-object v2, v13

    move-object/from16 v4, v21

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move-object v1, v7

    move-object v2, v8

    :goto_a
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v5, v11

    move-object v13, v12

    move-object/from16 v16, v14

    move-object v3, v1

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    move-object v14, v1

    goto :goto_2

    :cond_5
    iget-object v1, v14, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    const/16 v4, 0x7e

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_7
    iget-object v1, v14, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry$Word;->wordSlot:Ljava/lang/String;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    move v10, v1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v9}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getConstraint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getScore()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v1, v17

    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    goto/16 :goto_0

    :cond_b
    return-object v17

    :cond_c
    move-object v7, v4

    move-object v8, v2

    goto :goto_8

    :cond_d
    move-object v1, v3

    goto :goto_a

    :cond_e
    move v11, v5

    move-object v12, v13

    goto/16 :goto_6
.end method

.method public bridge synthetic getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/ElvisInterpreter;->getInterpretedResult(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

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

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/ElvisInterpreter;->getUpdateRequiredList(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z
    .locals 3

    const-string v0, "elvisResult"

    const-string v1, "instanceof ElvisResult"

    instance-of v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->getChoiceList()Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->hasGenericSpeech()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic processForCloud(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/ElvisInterpreter;->processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
