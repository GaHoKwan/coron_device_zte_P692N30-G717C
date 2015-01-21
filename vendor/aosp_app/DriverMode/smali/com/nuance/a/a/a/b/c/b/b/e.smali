.class public final Lcom/nuance/a/a/a/b/c/b/b/e;
.super Lcom/nuance/a/a/a/b/c/b/b/i;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/g;


# instance fields
.field private a:Lcom/nuance/a/a/a/b/a/b/b/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/b/e;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    return-void
.end method


# virtual methods
.method protected final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/e;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/b/d;->b()[B

    move-result-object v0

    return-object v0
.end method
