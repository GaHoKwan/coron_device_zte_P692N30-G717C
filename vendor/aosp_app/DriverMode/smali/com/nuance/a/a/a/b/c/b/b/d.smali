.class public final Lcom/nuance/a/a/a/b/c/b/b/d;
.super Lcom/nuance/a/a/a/b/c/b/b/i;

# interfaces
.implements Lcom/nuance/a/a/a/b/c/c/g;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/nuance/a/a/a/b/c/b/b/i;-><init>(Ljava/lang/String;B)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/d;->a:[B

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/d;->a:[B

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/d;->a:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method protected final a()[B
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/d;->a:[B

    return-object v0
.end method
