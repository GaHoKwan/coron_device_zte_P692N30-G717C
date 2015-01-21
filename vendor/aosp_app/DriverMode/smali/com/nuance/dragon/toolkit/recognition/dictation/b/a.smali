.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/b/d;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cp1252"

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;B)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(II)I

    move-result v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->e:I

    invoke-direct {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b(II)I

    move-result v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->d:I

    invoke-direct {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->e(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(II)I

    move-result v1

    const/4 v2, 0x3

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(III)I

    move-result v2

    iput v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->b:I

    const/4 v2, 0x4

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(III)I

    move-result v2

    iput v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->c:I

    const/4 v2, 0x1

    array-length v3, p1

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(III)I

    move-result v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->a:I

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    iget v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, "Cp1252"

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b:Ljava/lang/String;

    return-void

    :cond_1
    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->c([BI)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    const-string v3, "Cp1252"

    invoke-static {v2, v0, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Cp1252"

    goto :goto_0
.end method

.method private a(I)I
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->b([BI)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of sentences: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private a(II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    array-length v1, v1

    if-ge p1, v1, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    aget-byte v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private a(III)I
    .locals 5

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->c([BI)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received extension id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->c([BI)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received payload size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    long-to-int v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(IILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b(I)I

    move-result v2

    add-int/lit8 v1, p1, 0x4

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    new-instance v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;

    invoke-direct {v4, p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;B)V

    :goto_0
    if-ge v0, v2, :cond_0

    const/4 v5, 0x2

    invoke-direct {p0, v1, p2, v5, p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(IIILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;

    move-result-object v5

    iget-object v1, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v3, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;)V

    iget v1, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->a:I

    iget p2, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->b:I

    iget-object v5, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Extracted word: startTime ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getStartTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] endTime ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getEndTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] content ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->b:I

    iput p2, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->c:I

    iput-object v3, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    return-object v4
.end method

.method private a(IIILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;
    .locals 10

    new-instance v9, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;B)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BI)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    invoke-direct {p0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->d(I)J

    move-result-wide v2

    add-int v0, v4, p3

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->d(I)J

    move-result-wide v4

    add-int/2addr v0, p3

    move v8, v0

    :goto_0
    const-wide/16 v6, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BI)I

    move-result v0

    int-to-double v6, v0

    add-int/lit8 p2, p2, 0x2

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-direct/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;-><init>(Ljava/lang/String;JJD)V

    iput-object v0, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    iput v8, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->a:I

    iput p2, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->b:I

    return-object v9

    :cond_1
    invoke-direct {p0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c(I)I

    move-result v0

    int-to-long v2, v0

    add-int v0, v4, p3

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c(I)I

    move-result v4

    int-to-long v4, v4

    add-int/2addr v0, p3

    move v8, v0

    goto :goto_0
.end method

.method private a(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget v0, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->a:I

    if-eq v0, v5, :cond_2

    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    iget v0, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->a:I

    :goto_1
    iget v3, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->b:I

    if-eq v3, v5, :cond_4

    move v3, v2

    :goto_2
    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(I)I

    move-result v5

    add-int/lit8 v2, v0, 0x4

    iget v0, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->b:I

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_3
    if-ge v1, v5, :cond_6

    if-eqz v4, :cond_5

    invoke-direct {p0, v0, v2, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b(IILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;

    move-result-object v0

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of words in Sentence "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->b:I

    iget v3, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->c:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Extracted sentence: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->e:I

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0, v2, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(IILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;

    move-result-object v0

    goto :goto_4

    :cond_6
    return-object v6
.end method

.method private static a(Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CFD"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "IAL"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InputAudioLength"

    const-string v1, "IAL"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CFD"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(D)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(I)I
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->b([BI)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of words in a sentence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private b(II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b(I)I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    mul-int/lit8 v1, v1, 0x6

    add-int p1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private b(IILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b(I)I

    move-result v2

    add-int/lit8 v1, p1, 0x4

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;

    invoke-direct {v3, p0, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;B)V

    :goto_0
    if-ge v0, v2, :cond_0

    const/4 v4, 0x4

    invoke-direct {p0, v1, p2, v4, p3}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(IIILjava/util/ArrayList;)Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;

    move-result-object v4

    iget-object v1, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iget-object v5, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v1, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;)V

    iget v1, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->a:I

    iget p2, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->b:I

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$c;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Extracted word: startTime ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getStartTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] endTime ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] content ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->b:I

    iput p2, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->c:I

    return-object v3
.end method

.method private static b()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private c()I
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BI)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of words: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private c(I)I
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BI)I

    move-result v0

    return v0
.end method

.method private c(II)Ljava/util/ArrayList;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->d([BI)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b:Ljava/lang/String;

    const-string v5, "Cp1252"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Windows-1252"

    :goto_1
    invoke-static {v4, p2, v3, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Added a word to the list: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] offset ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] len ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    add-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private d(I)J
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private e(I)I
    .locals 3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a:[B

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/i;->a([BI)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of key-value pairs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private f(I)Ljava/util/Map;
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->e(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c(II)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extracted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " words from the set of key-value pairs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Received an invalid key-value pair: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c()I

    move-result v0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c(II)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in word list"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    invoke-direct {p0, v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in n-best list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->c:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$a;->d:I

    invoke-direct {p0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->f(I)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(Ljava/util/Map;Ljava/util/List;)V

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;->a(Ljava/util/Map;)V

    new-instance v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-direct {v2, v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v2
.end method
