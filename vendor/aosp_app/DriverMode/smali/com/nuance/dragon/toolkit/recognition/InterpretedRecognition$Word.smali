.class public final Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# static fields
.field public static final TIMING_NOT_SUPPORTED:I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    iput-wide p6, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    return-wide v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;
    .locals 8

    const/4 v3, 0x0

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "fulltext"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "pron"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "end"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    int-to-long v4, v4

    int-to-long v6, v6

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
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
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    return-wide v0
.end method

.method public final getFullText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getPronunciation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final isTimingSupported()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "text"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "fulltext"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "pron"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "start"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "end"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition$Word;->a:Ljava/lang/String;

    return-object v0
.end method
