.class final Lcom/powermo/base/a/d;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/powermo/base/b;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/powermo/base/a/b;


# direct methods
.method constructor <init>(Lcom/powermo/base/a/b;Lcom/powermo/base/b;Z)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/base/a/d;->e:Lcom/powermo/base/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/base/a/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/powermo/base/a/d;->b:Lcom/powermo/base/b;

    iput-boolean p3, p0, Lcom/powermo/base/a/d;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/base/a/d;->d:Z

    return-void
.end method
