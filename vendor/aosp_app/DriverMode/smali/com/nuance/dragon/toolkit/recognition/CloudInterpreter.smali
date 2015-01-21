.class public Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/RecognitionInterpreter;


# static fields
.field public static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field public static final KEY_PIECES:Ljava/lang/String; = "pieces"

.field public static final KEY_SCORE:Ljava/lang/String; = "score"

.field public static final KEY_TRANSCRIPTION:Ljava/lang/String; = "trans"


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/data/DataSpec;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/data/DataSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->a:Lcom/nuance/dragon/toolkit/data/DataSpec;

    return-void
.end method


# virtual methods
.method public getInterpretedResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 18

    new-instance v11, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    invoke-direct {v11}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->getDictionary()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "No result dictionary found"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->a:Lcom/nuance/dragon/toolkit/data/DataSpec;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->a:Lcom/nuance/dragon/toolkit/data/DataSpec;

    invoke-virtual {v2, v1}, Lcom/nuance/dragon/toolkit/data/DataSpec;->process(Lcom/nuance/dragon/toolkit/data/Data;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v3

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_a

    check-cast v1, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "Unable to process result dictionary according to data spec"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v2, "choices"

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v12

    if-nez v12, :cond_3

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "No choices found"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    invoke-virtual {v12}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v1

    if-ge v9, v1, :cond_9

    invoke-virtual {v12, v9}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->getDictionary(I)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "trans"

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v13

    const-string v2, "score"

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getInt(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Integer;

    move-result-object v14

    if-nez v13, :cond_4

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    const-string v2, "No transcription found"

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "pieces"

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getSequence(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v17

    if-nez v17, :cond_6

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    iget-object v2, v13, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    const/4 v2, 0x0

    iget-object v3, v13, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v2, v13, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const-string v3, "CLOUD_RECOGNITION"

    if-nez v14, :cond_8

    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    move-object v1, v11

    move-object v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;->addChoice(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    :cond_5
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    move v10, v1

    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->size()I

    move-result v1

    if-ge v10, v1, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->getDictionary(I)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v1

    const-string v2, "trans"

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getString(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v2

    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;

    const/4 v2, 0x0

    iget-object v3, v13, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Phrase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;Z)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget v4, v14, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    goto :goto_3

    :cond_9
    return-object v11

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public bridge synthetic getInterpretedResult(Ljava/lang/Object;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->getInterpretedResult(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRequiredList(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getUpdateRequiredList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->getUpdateRequiredList(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;)Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/CloudInterpreter;->processForCloud(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;Ljava/util/List;)Z

    move-result v0

    return v0
.end method
