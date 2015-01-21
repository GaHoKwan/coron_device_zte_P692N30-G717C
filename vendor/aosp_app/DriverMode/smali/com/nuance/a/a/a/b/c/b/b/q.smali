.class public final Lcom/nuance/a/a/a/b/c/b/b/q;
.super Lcom/nuance/a/a/a/b/c/b/b/i;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/g;


# instance fields
.field private a:Lcom/nuance/a/a/a/b/a/b/b/d;

.field private b:Lcom/nuance/a/a/a/b/b/a;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/c/b/a/b;Lcom/nuance/a/a/a/b/a/b/b/d;Lcom/nuance/a/a/a/b/b/a;)V
    .locals 2

    const/16 v0, 0x7f

    invoke-direct {p0, p1, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;-><init>(Ljava/lang/String;B)V

    iput-object p3, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    iput-object p4, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->b:Lcom/nuance/a/a/a/b/b/a;

    invoke-virtual {p2}, Lcom/nuance/a/a/a/b/c/b/a/b;->c()I

    move-result v0

    iput v0, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->c:I

    const-string v0, "audio_id"

    iget v1, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->c:I

    invoke-virtual {p3, v0, v1}, Lcom/nuance/a/a/a/b/a/b/b/d;->b(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->c:I

    return v0
.end method

.method protected final d()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->a:Lcom/nuance/a/a/a/b/a/b/b/d;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/b/d;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lcom/nuance/a/a/a/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/q;->b:Lcom/nuance/a/a/a/b/b/a;

    return-object v0
.end method
