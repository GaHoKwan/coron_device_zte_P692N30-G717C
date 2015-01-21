.class public final Lcom/nuance/dragon/toolkit/audio/util/a$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/audio/util/a;

.field private final b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

.field private c:I


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iput p3, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :goto_0
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a:I

    if-nez v2, :cond_2

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b()I

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b(Lcom/nuance/dragon/toolkit/audio/util/a$c;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v2}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iget-object v3, v3, Lcom/nuance/dragon/toolkit/audio/util/a$b;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    invoke-static {v2, v3}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_0
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/audio/util/a$b;->a()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/util/a$b;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/audio/util/a;->b(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/audio/util/a;->b(Lcom/nuance/dragon/toolkit/audio/util/a;)V

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->c:I

    :goto_2
    return-object v0

    :cond_2
    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b()I

    goto :goto_2
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->c(Lcom/nuance/dragon/toolkit/audio/util/a;)I

    move-result v0

    iget v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/util/a$b;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->d(Lcom/nuance/dragon/toolkit/audio/util/a;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/audio/util/a$b;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/audio/util/a;->b(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$b;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$b;->a()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$a;->a:Lcom/nuance/dragon/toolkit/audio/util/a;

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->b(Lcom/nuance/dragon/toolkit/audio/util/a;)V

    return-void
.end method
