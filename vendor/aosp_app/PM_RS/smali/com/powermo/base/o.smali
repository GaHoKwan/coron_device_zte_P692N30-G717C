.class public Lcom/powermo/base/o;
.super Lcom/powermo/base/p;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/powermo/base/p;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/o;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/powermo/base/o;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/powermo/base/p;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/base/o;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/o;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/powermo/base/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/powermo/base/e;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/base/o;->a:Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/powermo/base/p;->a(Lcom/powermo/base/e;)V

    return-void
.end method
