.class final Lcom/powermo/base/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/base/a/d;

.field final synthetic b:Lcom/powermo/base/a/b;


# direct methods
.method constructor <init>(Lcom/powermo/base/a/b;Lcom/powermo/base/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/base/a/g;->b:Lcom/powermo/base/a/b;

    iput-object p2, p0, Lcom/powermo/base/a/g;->a:Lcom/powermo/base/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/base/a/g;->b:Lcom/powermo/base/a/b;

    iget-object v1, p0, Lcom/powermo/base/a/g;->a:Lcom/powermo/base/a/d;

    invoke-virtual {v0, v1}, Lcom/powermo/base/a/b;->a(Lcom/powermo/base/a/d;)V

    return-void
.end method
