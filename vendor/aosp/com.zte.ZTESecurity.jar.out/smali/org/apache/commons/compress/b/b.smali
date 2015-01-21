.class public Lorg/apache/commons/compress/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final er:Ljava/util/List;

.field private final es:Ljava/util/List;

.field private final et:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/b/b;->er:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/b/b;->es:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/b/b;->et:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public as()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->er:Ljava/util/List;

    return-object v0
.end method

.method public at()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->es:Ljava/util/List;

    return-object v0
.end method

.method public au()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->et:Ljava/util/List;

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->et:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->es:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->er:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->er:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/b/b;->es:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
