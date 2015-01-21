.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/Token;
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:D

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJD)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->e:Z

    iput-boolean v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->f:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    iput-wide p4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    iput-wide p6, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    iput-boolean v5, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->e:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iput-boolean v5, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->f:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    const-string v1, "\\*no-space-after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x10

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x11

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method static a(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;
    .locals 8

    const-string v0, "word"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "end"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "conf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;-><init>(Ljava/lang/String;JJD)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;
    .locals 8

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    iget-wide v6, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;-><init>(Ljava/lang/String;JJD)V

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->f:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->f:Z

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->e:Z

    iput-boolean v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->e:Z

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b()Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

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
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    iget-wide v4, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final getConfidenceScore()D
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    return-wide v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    return-wide v0
.end method

.method public final getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    return-object v0
.end method

.method public final hasNoSpaceAfterDirective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->f:Z

    return v0
.end method

.method public final hasNoSpaceBeforeDirective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->e:Z

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    const-wide v3, 0x408f400000000000L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    const-string v1, "word"

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "start"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "end"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "conf"

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->d:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
