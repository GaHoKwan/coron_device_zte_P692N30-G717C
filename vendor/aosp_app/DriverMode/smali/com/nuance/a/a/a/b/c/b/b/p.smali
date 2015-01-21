.class public final Lcom/nuance/a/a/a/b/c/b/b/p;
.super Lcom/nuance/a/a/a/b/c/b/b/i;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/g;


# instance fields
.field private a:Lcom/nuance/a/a/a/b/a/b/b/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/b/d;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/b/c/b/b/i;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;->a(B)V

    :goto_0
    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/b/p;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 v0, 0x7

    invoke-super {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;->a(B)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;->a(B)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/p;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/b/d;->b()[B

    move-result-object v0

    return-object v0
.end method
