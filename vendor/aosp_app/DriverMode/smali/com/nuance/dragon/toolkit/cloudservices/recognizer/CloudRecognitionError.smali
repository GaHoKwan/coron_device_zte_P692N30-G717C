.class public Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

.field private final b:I


# direct methods
.method private constructor <init>(ILcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->b:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;-><init>(ILcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "transaction_error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    invoke-direct {v2, v1, v0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;-><init>(ILcom/nuance/dragon/toolkit/cloudservices/TransactionError;)V

    return-object v2
.end method


# virtual methods
.method public getTransactionError()Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->b:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "type"

    iget v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "transaction_error"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->a:Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    return-object v0
.end method
