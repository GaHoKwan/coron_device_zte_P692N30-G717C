.class Lcom/zte/zdm/omacp/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/omacp/d/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/zte/zdm/omacp/d/a/d;

.field private c:Lcom/zte/zdm/omacp/d/a/d;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/zte/zdm/omacp/d/d;

    const-string v1, "type must not null"

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/omacp/d/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    new-instance v0, Lcom/zte/zdm/omacp/d/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/zte/zdm/omacp/d/a/b;

    const-string v1, "PX"

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/d/a/b;-><init>(Ljava/lang/String;)V

    const-string v1, "TO-PROXY"

    const-string v2, "http://11111"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/omacp/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TO-PROXY"

    const-string v2, "http://112222"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/omacp/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TO-PROXY"

    invoke-virtual {v0, v2}, Lcom/zte/zdm/omacp/d/a/b;->b(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/d/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/omacp/d/a;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/zte/zdm/omacp/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v1, v0, p1}, Lcom/zte/zdm/omacp/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/omacp/d/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/b;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/d/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/b;

    goto :goto_0
.end method

.method public b()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/d/a/d;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/d/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a;

    goto :goto_0
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/d/a/d;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/b;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/d/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/b;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lcom/zte/zdm/omacp/d/a/b;

    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    iget-object v3, p1, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/omacp/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    iget-object v3, p1, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/omacp/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/d/a/d;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/d/a/d;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<characteristic type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/d;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<parm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->b:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</parm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/d;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->c:Lcom/zte/zdm/omacp/d/a/d;

    invoke-virtual {v1}, Lcom/zte/zdm/omacp/d/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<characteristic type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/d/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
