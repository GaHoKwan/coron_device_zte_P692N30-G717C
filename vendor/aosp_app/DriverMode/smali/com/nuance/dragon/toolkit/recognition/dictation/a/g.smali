.class public Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(J)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getStartTime()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-ltz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;
    .locals 6

    const-string v0, "conf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v0, "tokens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v0, v4, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>(Ljava/util/ArrayList;D)V

    return-object v0
.end method

.method private a(ILcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V
    .locals 3

    iget-object v0, p2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JJ)Ljava/util/ArrayList;
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getEndTime()J

    move-result-wide v5

    cmp-long v7, v3, p3

    if-gez v7, :cond_1

    cmp-long v5, v5, p1

    if-lez v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    cmp-long v0, v3, p3

    if-lez v0, :cond_0

    :cond_2
    return-object v2
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    return-void
.end method

.method final a(JI)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getStartTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a(J)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getEndTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;JJJ)V
    .locals 7

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    cmp-long v0, p2, v3

    if-ltz v0, :cond_0

    cmp-long v0, p4, v3

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timings cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, p2, p4

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The timings are corrupted, the timingBegin is greater than the timingEnd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    :cond_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JJ)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(J)I

    move-result v1

    if-eq v1, v6, :cond_7

    invoke-virtual {p0, p6, p7, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JI)V

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(J)I

    move-result v1

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_8
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, p2, p3, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JI)V

    invoke-direct {p0, v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(ILcom/nuance/dragon/toolkit/recognition/dictation/a/g;)V

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final b()Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;
    .locals 4

    new-instance v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    iput-wide v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method final b_()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method final c()V
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "\n"

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v4, v3

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v6, 0xa

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    move v4, v3

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getConfidenceScore()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getEndTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getStartTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v0, "conf"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v2, Lcom/nuance/dragon/toolkit/util/a/a;

    invoke-direct {v2}, Lcom/nuance/dragon/toolkit/util/a/a;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nuance/dragon/toolkit/util/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "tokens"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceBeforeDirective()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceAfterDirective()Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public tokenAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Token;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    return-object v0
.end method
