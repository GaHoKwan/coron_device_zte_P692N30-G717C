.class final La/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:La/a/j;

.field private b:I


# direct methods
.method constructor <init>(La/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, La/a/a;->a()La/a/a;

    move-result-object v0

    iput-object v0, p0, La/a/d;->a:La/a/j;

    const/4 v0, 0x0

    iput v0, p0, La/a/d;->b:I

    invoke-direct {p0, p1}, La/a/d;->a(La/a/c;)V

    return-void
.end method

.method private a(La/a/c;)V
    .locals 4

    :goto_0
    invoke-static {p1}, La/a/c;->c(La/a/c;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, La/a/d;->a:La/a/j;

    invoke-interface {v0, p1}, La/a/j;->a(Ljava/lang/Object;)La/a/j;

    move-result-object v0

    iput-object v0, p0, La/a/d;->a:La/a/j;

    iget v0, p0, La/a/d;->b:I

    int-to-long v0, v0

    invoke-static {p1}, La/a/c;->d(La/a/c;)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, La/a/d;->b:I

    invoke-static {p1}, La/a/c;->e(La/a/c;)La/a/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, La/a/d;->a:La/a/j;

    invoke-interface {v0}, La/a/j;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, La/a/d;->a:La/a/j;

    invoke-interface {v0, v6}, La/a/j;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c;

    new-instance v1, La/a/l;

    iget v2, p0, La/a/d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, La/a/c;->a(La/a/c;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, La/a/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, La/a/c;->b(La/a/c;)La/a/c;

    move-result-object v2

    invoke-static {v2}, La/a/c;->c(La/a/c;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, La/a/c;->b(La/a/c;)La/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/d;->a(La/a/c;)V

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget v2, p0, La/a/d;->b:I

    int-to-long v2, v2

    invoke-static {v0}, La/a/c;->d(La/a/c;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, La/a/d;->b:I

    iget-object v2, p0, La/a/d;->a:La/a/j;

    invoke-interface {v2}, La/a/j;->b()La/a/j;

    move-result-object v2

    iput-object v2, p0, La/a/d;->a:La/a/j;

    invoke-static {v0}, La/a/c;->d(La/a/c;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, La/a/d;->a:La/a/j;

    invoke-interface {v0}, La/a/j;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/d;->a:La/a/j;

    invoke-interface {v0, v6}, La/a/j;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c;

    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
