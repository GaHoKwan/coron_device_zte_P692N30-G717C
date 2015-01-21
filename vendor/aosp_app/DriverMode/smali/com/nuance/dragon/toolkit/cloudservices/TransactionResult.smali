.class public Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field protected static final KEY_RESULT:Ljava/lang/String; = "res"

.field protected static final KEY_SESSION:Ljava/lang/String; = "session"


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/Transaction;Lcom/nuance/a/a/a/b/c/c/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/nuance/dragon/toolkit/data/a/a;->a(Lcom/nuance/a/a/a/b/a/c/a;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->b(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/cloudservices/Transaction;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "res"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->b(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->c:Ljava/lang/String;

    const-string v0, "session"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    goto :goto_0
.end method

.method private static a(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "result_type"

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no_result_type"

    goto :goto_0
.end method

.method private static b(Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "result_format"

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/data/Data;->getType()S

    move-result v1

    const/16 v2, 0xc1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$String;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/data/Data$String;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no_result_format"

    goto :goto_0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;
    .locals 1

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;

    invoke-direct {v0, p0}, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public getContents()Lcom/nuance/dragon/toolkit/data/Data$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-object v0
.end method

.method public getResultFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isFinal()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v2, "final_response"

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    const-string v3, "appserver_results"

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->getDictionary(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "final_response"

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/data/Data;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;

    iget v0, v0, Lcom/nuance/dragon/toolkit/data/Data$Integer;->value:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    if-eqz v1, :cond_0

    const-string v1, "res"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->a:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "session"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/cloudservices/TransactionResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method
