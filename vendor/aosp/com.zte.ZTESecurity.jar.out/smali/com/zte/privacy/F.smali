.class Lcom/zte/privacy/F;
.super Lcom/zte/privacy/ao;


# instance fields
.field gU:I

.field gV:I

.field final synthetic gW:Lcom/zte/privacy/av;


# direct methods
.method constructor <init>(Lcom/zte/privacy/av;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-direct {p0}, Lcom/zte/privacy/ao;-><init>()V

    iput v0, p0, Lcom/zte/privacy/F;->gU:I

    iput v0, p0, Lcom/zte/privacy/F;->gV:I

    return-void
.end method


# virtual methods
.method public a(ILcom/zte/privacy/ac;Ljava/lang/Object;)Lcom/zte/privacy/aA;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "//field:%04d  access:0x%04x\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/zte/privacy/F;->gU:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/zte/privacy/F;->gU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "//%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/av;->ab(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/zte/privacy/ac;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Lcom/zte/privacy/ac;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/zte/privacy/az;)Lcom/zte/privacy/y;
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "//method:%04d  access:0x%04x\n"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/zte/privacy/F;->gV:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/zte/privacy/F;->gV:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "//%s\n"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "%s%s %s("

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/av;->ab(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2}, Lcom/zte/privacy/az;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p2}, Lcom/zte/privacy/az;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lcom/zte/privacy/az;->dp()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v2}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-static {v3}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v2}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v2}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/zte/privacy/av;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    new-instance v0, Lcom/zte/privacy/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/privacy/q;-><init>(Lcom/zte/privacy/F;ILcom/zte/privacy/az;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    invoke-static {v0}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iget-object v0, p0, Lcom/zte/privacy/F;->gW:Lcom/zte/privacy/av;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/privacy/av;->a(Lcom/zte/privacy/av;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    invoke-super {p0}, Lcom/zte/privacy/ao;->a()V

    return-void
.end method
