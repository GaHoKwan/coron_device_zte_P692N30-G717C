.class abstract Lqt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqt;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lqt;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method abstract a(I[F)Ljava/util/ArrayList;
.end method

.method a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lqt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    return-void
.end method

.method a(J)V
    .locals 6
    .parameter

    .prologue
    .line 55
    iget-object v2, p0, Lqt;->a:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqq;

    .line 59
    iget-wide v4, v0, Lqq;->a:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 60
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void

    .line 57
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Lqq;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lqt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
