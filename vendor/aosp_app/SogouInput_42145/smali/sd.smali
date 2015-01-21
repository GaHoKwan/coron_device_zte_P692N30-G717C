.class public Lsd;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;

.field private a:Lse;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsd;->a:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method private a(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lsd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrq;

    .line 69
    invoke-interface {v0, p1, p2, p3, p4}, Lrq;->a(JJ)V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method private a(JJJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lsd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrq;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 50
    invoke-interface/range {v0 .. v6}, Lrq;->a(JJJ)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic a(Lsd;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lsd;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lsd;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct/range {p0 .. p6}, Lsd;->a(JJJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lsd;->a:Lse;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lsd;->a:Lse;

    invoke-virtual {v0}, Lse;->a()V

    .line 57
    :cond_0
    return-void
.end method

.method public a(Lrq;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lsd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    new-instance v0, Lse;

    invoke-virtual {p0}, Lsd;->getContentLength()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lse;-><init>(Lsd;Ljava/io/OutputStream;J)V

    iput-object v0, p0, Lsd;->a:Lse;

    .line 76
    iget-object v0, p0, Lsd;->a:Lse;

    invoke-virtual {v0}, Lse;->b()V

    .line 77
    iget-object v0, p0, Lsd;->a:Lse;

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 78
    return-void
.end method
