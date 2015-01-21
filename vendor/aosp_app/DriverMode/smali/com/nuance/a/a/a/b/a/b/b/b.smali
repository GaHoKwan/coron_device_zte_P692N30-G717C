.class public final Lcom/nuance/a/a/a/b/a/b/b/b;
.super Lcom/nuance/a/a/a/b/a/b/b/c;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/a/a/a/b/a/b/b/c;-><init>(S)V

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/b/b/b;->a:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/b/b;->a:[B

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/b/b;->a:[B

    invoke-super {p0, v0}, Lcom/nuance/a/a/a/b/a/b/b/c;->a([B)[B

    move-result-object v0

    return-object v0
.end method
