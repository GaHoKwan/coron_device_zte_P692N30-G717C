.class final La/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:I

.field b:La/a/a;

.field final synthetic c:I

.field final synthetic d:La/a/a;


# direct methods
.method constructor <init>(La/a/a;I)V
    .locals 2

    iput-object p1, p0, La/a/b;->d:La/a/a;

    iput p2, p0, La/a/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, La/a/b;->c:I

    iput v0, p0, La/a/b;->a:I

    iget-object v0, p0, La/a/b;->d:La/a/a;

    iget v1, p0, La/a/b;->c:I

    invoke-virtual {v0, v1}, La/a/a;->a(I)La/a/a;

    move-result-object v0

    iput-object v0, p0, La/a/b;->b:La/a/a;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, La/a/b;->b:La/a/a;

    invoke-static {v0}, La/a/a;->a(La/a/a;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, La/a/b;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La/a/b;->b:La/a/a;

    invoke-static {v0}, La/a/a;->b(La/a/a;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, La/a/b;->b:La/a/a;

    invoke-static {v1}, La/a/a;->c(La/a/a;)La/a/a;

    move-result-object v1

    iput-object v1, p0, La/a/b;->b:La/a/a;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, La/a/b;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ConsPStack.listIterator().previous() is inefficient, don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, La/a/b;->d:La/a/a;

    iget v1, p0, La/a/b;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, La/a/a;->a(I)La/a/a;

    move-result-object v0

    iput-object v0, p0, La/a/b;->b:La/a/a;

    iget-object v0, p0, La/a/b;->b:La/a/a;

    invoke-static {v0}, La/a/a;->b(La/a/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, La/a/b;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
