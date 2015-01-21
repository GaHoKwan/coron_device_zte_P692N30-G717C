.class final Lcom/nuance/a/a/a/b/a/b/a/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/b/a/b/a/g$b;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/b/a/a/b$a;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/b/a/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/b/a/h$1;->a:Lcom/nuance/a/a/a/b/a/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nuance/a/a/a/b/a/b/a/h;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/h$1;->a:Lcom/nuance/a/a/a/b/a/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/h$1;->a:Lcom/nuance/a/a/a/b/a/a/b$a;

    check-cast p1, Lcom/nuance/a/a/a/b/a/b/a/e;

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/a/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/a/a/a/b/a/a/b$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
