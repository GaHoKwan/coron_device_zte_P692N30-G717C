.class public Lcom/nuance/dragon/toolkit/vocon/VoconError;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->a:I

    invoke-static {}, Lcom/nuance/dragon/toolkit/vocon/VoconError$Reason;->a()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->b:Ljava/lang/String;

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/vocon/VoconError;
    .locals 2

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/nuance/dragon/toolkit/vocon/VoconError$Reason;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Invalid code"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconError;

    invoke-direct {v1, v0}, Lcom/nuance/dragon/toolkit/vocon/VoconError;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->a:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "code"

    iget v2, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/VoconError;->b:Ljava/lang/String;

    return-object v0
.end method
