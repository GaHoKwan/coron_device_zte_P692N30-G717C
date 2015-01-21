.class public final Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
.super Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final GATE_CONFIDENCE_UNAVAILABLE:I = -0x1

.field public static final MAX_CONFIDENCE:I = 0x64

.field public static final MIN_CONFIDENCE:I = 0x0

.field public static final WAKEUP_TIMESTAMP_UNAVAILABLE:I = -0x1


# instance fields
.field private final a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

.field private final b:I

.field private final c:I

.field private final d:J


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V
    .locals 4

    const/4 v2, 0x0

    const/16 v1, 0x64

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    iput v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->b:I

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    iput-wide p3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getScore()I

    move-result v3

    invoke-virtual {p1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->getScore()I

    move-result v0

    sub-int v0, v3, v0

    if-gez v0, :cond_3

    move v0, v2

    :cond_3
    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 5

    :try_start_0
    const-string v0, "gate_confidence"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "wakeup_timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    new-instance v3, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    const-string v4, "nbest"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V

    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->b:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getChoiceCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->size()I

    move-result v0

    return v0
.end method

.method public final getChoiceList()Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    return-object v0
.end method

.method public final getConfidence()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->b:I

    return v0
.end method

.method public final getGateConfidence()I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    return v0
.end method

.method public final getWakeupTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "nbest"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "gate_confidence"

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "wakeup_timestamp"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;->a:Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
