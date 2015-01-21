.class public Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field protected static final KEY_RESULT:Ljava/lang/String; = "res"


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;
    .locals 2

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;

    const-string v1, "res"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;)V

    return-object v0
.end method


# virtual methods
.method public getDictionary()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->getContents()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->getResultFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->getResultType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFinal()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->isFinal()Z

    move-result v0

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "res"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionResult;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
