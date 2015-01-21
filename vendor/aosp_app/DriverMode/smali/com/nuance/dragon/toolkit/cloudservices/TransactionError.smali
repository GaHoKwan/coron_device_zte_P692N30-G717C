.class public Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;B)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->a:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->d:Ljava/lang/String;

    iput p6, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->e:I

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->a:I

    const-string v0, "text"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->b:Ljava/lang/String;

    const-string v0, "param"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->c:Ljava/lang/String;

    const-string v0, "prompt"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->d:Ljava/lang/String;

    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->e:I

    const-string v0, "session"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->f:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->e:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterWithError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->a:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "type"

    iget v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "text"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "param"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "prompt"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "code"

    iget v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionError;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
