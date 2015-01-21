.class final Lcom/powermo/base/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/powermo/base/h;

.field final synthetic c:Lcom/powermo/base/a/b;


# direct methods
.method constructor <init>(Lcom/powermo/base/a/b;Ljava/lang/String;Lcom/powermo/base/h;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/base/a/f;->c:Lcom/powermo/base/a/b;

    iput-object p2, p0, Lcom/powermo/base/a/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/powermo/base/a/f;->b:Lcom/powermo/base/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/base/a/f;->c:Lcom/powermo/base/a/b;

    iget-object v1, p0, Lcom/powermo/base/a/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/powermo/base/a/f;->b:Lcom/powermo/base/h;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/base/a/b;->d(Ljava/lang/String;Lcom/powermo/base/h;)V

    return-void
.end method
