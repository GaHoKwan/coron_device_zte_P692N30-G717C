.class public Laze;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laze;->a:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Laze;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 4
    .parameter

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v2

    .line 81
    :goto_0
    if-lez v1, :cond_1

    .line 82
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 83
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Laze;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 89
    invoke-virtual {p0}, Laze;->a()V

    .line 90
    sub-int v0, v2, v1

    return v0
.end method

.method public a(Ljava/util/List;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    if-ltz p2, :cond_0

    if-ge p2, p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v2, p2

    .line 103
    :goto_1
    if-ge v2, p3, :cond_2

    .line 104
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 105
    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p0, Laze;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v1, 0x1

    .line 109
    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0}, Laze;->a()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Laze;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    iget-object v1, p0, Laze;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 32
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    iget v1, p0, Laze;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laze;->a:I

    goto :goto_0
.end method

.method public a([CI)Ljava/lang/StringBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    .line 39
    invoke-virtual {p0, p1, v0, v1}, Laze;->a([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a([CII)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    if-lez p3, :cond_0

    .line 63
    invoke-virtual {p0}, Laze;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
