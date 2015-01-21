.class public final Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

.field private b:Lcom/nuance/dragon/toolkit/vocon/VoconError;

.field private c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

.field private d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

.field private e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

.field private f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;
    .locals 9

    const/4 v0, 0x0

    const-string v1, "elvis"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v1, "vocon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v1, "cloud"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v1, "elvis_ex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "vocon_ex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "cloud_ex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_3

    move-object v2, v0

    :goto_0
    if-nez v4, :cond_4

    move-object v1, v0

    :goto_1
    if-nez v5, :cond_5

    :goto_2
    new-instance v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;-><init>()V

    iput-object v2, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    iput-object v1, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->b:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    iput-object v0, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    if-eqz v6, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-direct {v0, v6}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    :cond_0
    if-eqz v7, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-direct {v0, v7}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    :cond_1
    if-eqz v8, :cond_2

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-direct {v0, v8}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;-><init>(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    :cond_2
    return-object v3

    :cond_3
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisError;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/nuance/dragon/toolkit/vocon/VoconError;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconError;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/elvis/ElvisError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/vocon/VoconError;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->b:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    return-void
.end method

.method final b(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    return-void
.end method

.method final c(Lcom/nuance/dragon/toolkit/recognition/InterpretException;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    return-void
.end method

.method public final getCloudError()Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-object v0
.end method

.method public final getCloudInterpretationError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getElvisError()Lcom/nuance/dragon/toolkit/elvis/ElvisError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    return-object v0
.end method

.method public final getElvisInterpretationError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getVoconError()Lcom/nuance/dragon/toolkit/vocon/VoconError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->b:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    return-object v0
.end method

.method public final getVoconInterpretationError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "elvis"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisError;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    const-string v1, "vocon"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->b:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    const-string v1, "cloud"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->c:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/util/JSONCompliant;)Z

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-eqz v1, :cond_0

    const-string v1, "elvis_ex"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->d:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-eqz v1, :cond_1

    const-string v1, "elvis_ex"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->e:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    if-eqz v1, :cond_2

    const-string v1, "cloud_ex"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/hybrid/HybridRecognitionError;->f:Lcom/nuance/dragon/toolkit/recognition/InterpretException;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/InterpretException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
