.class public Lcom/nuance/dragon/toolkit/recognition/VoconInterpreter;
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
    .locals 24

    const-string v1, "voconResult"

    const-string v2, "instanceof VoconResult"

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-static {v1, v2, v3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    new-instance v16, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-direct/range {v16 .. v16}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->getChoiceList()Lorg/json/JSONArray;

    move-result-object v17

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v9, v1, :cond_6

    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "_score"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v2, "_startRule"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    const-string v2, ""

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_items"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/4 v1, 0x0

    move v11, v1

    move-object v12, v2

    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_5

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v1, "_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "terminal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_orthography"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "<...>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_conf"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v10, v1

    :goto_2
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    const/4 v4, 0x0

    const-string v5, "_beginTimeMs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-string v7, "_endTimeMs"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v7, v3

    move-object v3, v2

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v10

    move-object v3, v2

    move-object v2, v13

    :goto_3
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v4, v21

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move-object v12, v7

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    move v10, v1

    goto :goto_2

    :cond_2
    const-string v1, "_name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "_items"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    const/4 v1, 0x0

    move v15, v1

    move-object v10, v14

    :goto_4
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v15, v1, :cond_7

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v1, "_orthography"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "<...>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_conf"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    move v14, v1

    :goto_5
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    const/4 v4, 0x0

    const-string v5, "_beginTimeMs"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-string v7, "_endTimeMs"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v7, v3

    move-object v3, v2

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v15, 0x1

    move v15, v1

    move v6, v14

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    move v14, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v3, v19

    move/from16 v4, v18

    move-object/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failing to parse VoCon result"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "Failing to parse VoCon result"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-object v16

    :cond_7
    move-object v3, v10

    move-object v2, v13

    move-object v7, v12

    goto/16 :goto_3
.end method

.method public bridge synthetic getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/VoconInterpreter;->getInterpretedResult(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

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

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/VoconInterpreter;->getUpdateRequiredList(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z
    .locals 3

    const-string v0, "voconResult"

    const-string v1, "instanceof VoconResult"

    instance-of v2, p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    invoke-static {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p1, Lcom/nuance/dragon/toolkit/vocon/VoconResult;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconResult;->hasGenericSpeech(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic processForCloud(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/VoconInterpreter;->processForCloud(Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
