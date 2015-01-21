.class public abstract Lcom/nuance/a/a/a/a/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nuance/a/a/a/a/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/a/a/a/c/f;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/f;-><init>()V

    sput-object v0, Lcom/nuance/a/a/a/a/b/a/d;->a:Lcom/nuance/a/a/a/a/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([B[B)[B
    .locals 1

    sget-object v0, Lcom/nuance/a/a/a/a/b/a/d;->a:Lcom/nuance/a/a/a/a/b/a/d;

    invoke-virtual {v0, p0, p1}, Lcom/nuance/a/a/a/a/b/a/d;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a([B[B)[B
.end method
