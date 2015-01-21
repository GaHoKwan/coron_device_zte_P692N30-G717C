.class public final Lcom/zte/zdm/d/c/ar;
.super Ljava/lang/Object;


# instance fields
.field private a:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/ar;->a([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/ar;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/ar;->a([B)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    goto :goto_0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/zdm/d/c/ar;->a:[B

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/d/c/ar;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
