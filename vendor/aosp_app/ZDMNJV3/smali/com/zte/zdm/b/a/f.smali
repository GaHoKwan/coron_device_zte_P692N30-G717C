.class Lcom/zte/zdm/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/e/f;


# instance fields
.field final synthetic a:Lcom/zte/zdm/b/a/d;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/b/a/d;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/zte/zdm/b/a/f;->a:Lcom/zte/zdm/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/zte/zdm/b/a/f;->b:Z

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    iput v0, p0, Lcom/zte/zdm/b/a/f;->d:I

    iput v1, p0, Lcom/zte/zdm/b/a/f;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/b/a/d;Lcom/zte/zdm/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/a/f;-><init>(Lcom/zte/zdm/b/a/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0xd6

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    iput p1, p0, Lcom/zte/zdm/b/a/f;->d:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/b/a/f;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    iput-object p1, p0, Lcom/zte/zdm/b/a/f;->g:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    if-ne p1, v0, :cond_0

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x130

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    const/16 v0, 0xd7

    iput v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/a/f;->b:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/a/f;->c:I

    return v0
.end method

.method public f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zdm_alert_test update: status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/a/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; interactionRetern = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/a/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; singleSelectedItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/a/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; multipleSelectedItemBite ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/a/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; inputResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/a/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/a/f;->a:Lcom/zte/zdm/b/a/d;

    invoke-static {v0}, Lcom/zte/zdm/b/a/d;->a(Lcom/zte/zdm/b/a/d;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/a/f;->d:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/a/f;->g:Ljava/util/List;

    return-object v0
.end method
