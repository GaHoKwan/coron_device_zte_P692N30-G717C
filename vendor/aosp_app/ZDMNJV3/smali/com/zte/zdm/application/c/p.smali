.class Lcom/zte/zdm/application/c/p;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field final synthetic b:Lcom/zte/zdm/application/c/e;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 1

    iput-object p1, p0, Lcom/zte/zdm/application/c/p;->b:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/c/p;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/application/c/e;Lcom/zte/zdm/application/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/c/p;-><init>(Lcom/zte/zdm/application/c/e;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/zte/zdm/application/c/p;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sssset mutex clicked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/c/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gggget mutex clicked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/application/c/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zte/zdm/application/c/p;->a:Z

    return v0
.end method
