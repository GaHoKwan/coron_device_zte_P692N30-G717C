.class public final Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/DictationEditBuffer;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(JLcom/nuance/dragon/toolkit/recognition/dictation/a/f;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->d:J

    iput-wide p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->c:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->a(I)Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->b_()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private a(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_0

    cmp-long v3, p3, p1

    if-gez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "start is less than 0 or end is less than start!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;

    invoke-direct {v5, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;)V

    move-wide v3, v0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    cmp-long v6, p1, v3

    if-ltz v6, :cond_2

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    iget-object v6, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iput v1, v6, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v6, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    sub-long v7, p1, v3

    long-to-int v7, v7

    iput v7, v6, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    :cond_2
    cmp-long v6, p3, v3

    if-ltz v6, :cond_3

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    cmp-long v6, p3, v6

    if-gez v6, :cond_3

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    sub-long v1, p3, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v3, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    cmp-long v0, p1, v3

    if-nez v0, :cond_5

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iput v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    :cond_5
    cmp-long v0, p3, v3

    if-nez v0, :cond_6

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iput v2, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    :cond_6
    cmp-long v0, p3, v3

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "end is greater than buffer length!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v5

    goto :goto_1
.end method

.method private a()V
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->d:J

    return-void
.end method

.method private a(ILjava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method private a(ILjava/util/List;Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceBeforeDirective()Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->c:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    new-instance v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    const-string v5, " "

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v4, v5, v6}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/h;->hasNoSpaceAfterDirective()Z

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v2, p1

    goto :goto_2
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/List;Z)V

    return-void
.end method

.method private b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Position is less than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    invoke-direct {v5, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;)V

    move-wide v3, v0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    cmp-long v6, p1, v3

    if-ltz v6, :cond_1

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    iput v1, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    sub-long v0, p1, v3

    long-to-int v0, v0

    iput v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v3, v6

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    cmp-long v0, p1, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iput v2, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    move-object v0, v5

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Position is greater than buffer length!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "start is less than 0 or end is less than start!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;

    invoke-direct {v9, p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    move-wide v6, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_b

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v2

    sget-object v10, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v2, v10, :cond_3

    cmp-long v2, v6, p1

    if-gez v2, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-object v2, v1

    :goto_1
    cmp-long v1, v6, p1

    if-ltz v1, :cond_2

    if-nez v4, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    move-object v4, v1

    :cond_2
    cmp-long v1, v6, p3

    if-gez v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    :goto_2
    cmp-long v3, v6, p3

    if-ltz v3, :cond_c

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    :goto_3
    cmp-long v3, p3, v6

    if-lez v3, :cond_4

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "end is greater than buffer length!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v2, v3

    move-object v3, v4

    :goto_4
    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->length()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v6, v10

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getStartTime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    :cond_5
    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getEndTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    :cond_6
    :goto_6
    return-object v9

    :cond_7
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getEndTime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getStartTime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    goto :goto_6

    :cond_9
    move-object v1, v3

    goto :goto_2

    :cond_a
    move-object v2, v1

    goto :goto_1

    :cond_b
    move-object v0, v8

    move-object v2, v1

    move-object v1, v3

    goto :goto_3

    :cond_c
    move-object v3, v4

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_4
.end method

.method private c(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoices;
    .locals 11

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    move-result-object v9

    invoke-direct {p0, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    move-result-object v10

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v2

    iget-wide v7, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->d:J

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;IJJJ)V

    iget v1, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget v3, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    sget-object v4, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v3, v1, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v0, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V

    move v1, v2

    :goto_0
    iget v2, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    add-int/lit8 v5, v2, -0x1

    move v4, v1

    :goto_1
    if-gt v4, v5, :cond_3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v1

    sget-object v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$1;->a:[I

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    iget v1, v9, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getStartTime()J

    move-result-wide v6

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JJ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v3, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a(ILjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_3
    iget v1, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget v2, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    sget-object v3, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v2, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a(Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;)V

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/b;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(JJLjava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->delete(JJ)V

    iget v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-nez v1, :cond_0

    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-direct {p0, v0, p5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->d:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final append([B)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    invoke-static {p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;->createDictationResult([B)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getEndTime()J

    move-result-wide v0

    move-wide v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v0, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->append(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    invoke-virtual {v0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->getEndTime()J

    move-result-wide v5

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JJ)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v2

    sget-object v5, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-eq v2, v5, :cond_3

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v2

    sget-object v5, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v2, v5, :cond_2

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    invoke-interface {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->hasNoSpaceAfterDirective()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(Ljava/util/List;Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(Ljava/util/List;Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(Ljava/util/List;Z)V

    goto :goto_2

    :cond_4
    move-wide v1, v0

    goto :goto_0
.end method

.method public final delete(J)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->delete(JJ)V

    return-void
.end method

.method public final delete(JJ)V
    .locals 9

    const/4 v8, 0x0

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The indicated range is invalid. The range is treated as [start, end), therefore start cannot be greater or equal to end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;

    move-result-object v2

    iget-object v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v1, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v1, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v1, v1, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v3, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    new-instance v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v6, v6, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v4, v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v1, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v3, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v5, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    new-instance v6, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    iget-object v7, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v7, v7, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v6, v0, v7}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_4
    iget-object v0, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v0, v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    iget-object v4, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v4, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v5, v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    new-instance v6, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$b;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    iget v2, v2, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v6, v0, v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final getChoices(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoices;
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The indicated range is invalid. The range is treated as [start, end), therefore start cannot be greater or equal to end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->length()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    cmp-long v0, p3, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->length()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Indicated position is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->c(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/AlterChoices;

    move-result-object v0

    return-object v0
.end method

.method public final getItems()[Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    return-object v0
.end method

.method public final insert(JC)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->length()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Indicated position is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->insert(JLjava/lang/String;)V

    return-void
.end method

.method public final insert(JLjava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    move-result-object v3

    iget v2, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    iget v0, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    if-nez v0, :cond_2

    :goto_1
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v7, v1

    move v1, v2

    move v2, v0

    move v0, v7

    :goto_2
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-ne v2, v0, :cond_3

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    new-instance v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    const-string v5, " "

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v4, v5, v6}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v2, 0x1

    const-string v2, " "

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    iget v4, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    if-le v2, v0, :cond_5

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v5, v0, v6}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v4, 0x1

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    const-string v5, " "

    sget-object v6, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v3, v5, v6}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WORD:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    invoke-direct {v3, v0, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/j;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public final length()J
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final merge([BJJ)V
    .locals 15

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->length()J

    move-result-wide v4

    cmp-long v4, p4, v4

    if-gtz v4, :cond_0

    cmp-long v4, p2, p4

    if-ltz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid start or end position"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(JJ)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;

    move-result-object v10

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->delete(JJ)V

    invoke-static/range {p1 .. p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResultManager;->createDictationResult([B)Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-wide v11, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    iget-wide v6, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getEndTime()J

    move-result-wide v8

    add-long v13, v6, v8

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    iget-wide v6, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    iget-wide v8, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    invoke-virtual/range {v4 .. v9}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->merge(Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;JJ)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v4

    check-cast v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-virtual {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v11, v12, v13, v14}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;->a(JJ)Ljava/util/ArrayList;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b(J)Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;

    move-result-object v4

    iget v6, v4, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$a;->a:I

    if-lez v6, :cond_7

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v7

    sget-object v8, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->WHITE_SPACE:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-eq v7, v8, :cond_7

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;->getType()Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    move-result-object v7

    sget-object v8, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;->TOKEN:Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem$Type;

    if-ne v7, v8, :cond_6

    check-cast v4, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/Token;->hasNoSpaceAfterDirective()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, v6, v5, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/List;Z)V

    :cond_2
    :goto_1
    iget-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getStartTime()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    :cond_3
    iget-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/DictationResult;->sentenceAt(I)Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/Sentence;->getEndTime()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    invoke-direct {p0, v6, v5, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/List;Z)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, v6, v5, v4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a(ILjava/util/List;Z)V

    goto :goto_1

    :cond_8
    const-wide/16 v4, 0x0

    iput-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->a:J

    const-wide/16 v4, 0x0

    iput-wide v4, v10, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e$c;->b:J

    goto :goto_2
.end method

.method public final replace(JJLjava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->length()J

    move-result-wide v0

    cmp-long v2, p1, v3

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    cmp-long v2, p3, v3

    if-ltz v2, :cond_0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Indicated position is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->delete(JJ)V

    invoke-virtual {p0, p1, p2, p5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->insert(JLjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/recognition/dictation/EditorItem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public final update(Ljava/lang/String;)V
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->a()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v2, v1, :cond_1

    move v0, v1

    :goto_0
    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_2

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_2

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_2
    if-ge v3, v0, :cond_3

    sub-int v8, v2, v3

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    sub-int v9, v1, v3

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    sub-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v1, v3

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v0, v5

    add-int/lit8 v3, v0, 0x1

    if-gez v3, :cond_4

    move v3, v4

    :cond_4
    sub-int v0, v6, v5

    add-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_5

    move v0, v4

    :cond_5
    sub-int v4, v2, v3

    add-int/2addr v4, v0

    if-eq v1, v4, :cond_6

    if-le v2, v1, :cond_7

    sub-int v1, v2, v1

    move v3, v1

    :cond_6
    :goto_3
    if-nez v3, :cond_8

    if-nez v0, :cond_8

    :goto_4
    return-void

    :cond_7
    sub-int v0, v1, v2

    goto :goto_3

    :cond_8
    if-nez v0, :cond_9

    int-to-long v0, v5

    add-int v2, v5, v3

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->delete(JJ)V

    goto :goto_4

    :cond_9
    if-nez v3, :cond_a

    int-to-long v1, v5

    add-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->insert(JLjava/lang/String;)V

    goto :goto_4

    :cond_a
    int-to-long v1, v5

    add-int/2addr v3, v5

    int-to-long v3, v3

    add-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/e;->replace(JJLjava/lang/String;)V

    goto :goto_4
.end method
