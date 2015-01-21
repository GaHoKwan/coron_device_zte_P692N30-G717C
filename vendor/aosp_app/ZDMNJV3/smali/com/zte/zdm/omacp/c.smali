.class public Lcom/zte/zdm/omacp/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field private g:[B

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/c;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/omacp/c;->g:[B

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/c;->b([B)I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/omacp/c;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushData len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/omacp/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "securityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/omacp/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpMac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([BI)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x28

    new-array v0, v2, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private c([B)I
    .locals 5

    const/4 v4, 0x7

    const/16 v3, -0x6f

    const/4 v0, 0x0

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/16 v2, -0x7f

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/zte/zdm/omacp/c;->a([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/c;->j:Ljava/lang/String;

    return v0

    :cond_1
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    aget-byte v1, p1, v4

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d([B)I
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/16 v3, -0x6f

    const/4 v0, 0x0

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1

    aget-byte v1, p1, v5

    const/16 v2, -0x7f

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    const/16 v1, 0x9

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/omacp/c;->a([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/c;->j:Ljava/lang/String;

    return v0

    :cond_1
    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_0

    aget-byte v1, p1, v5

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/c;->g:[B

    return-object v0
.end method

.method a([B)[B
    .locals 4

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    add-int/lit8 v0, v0, 0x3

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/omacp/c;->h:I

    return v0
.end method

.method b([B)I
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/16 v4, -0x4a

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p1, v5

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/c;->d([B)I

    move-result v1

    iput v1, p0, Lcom/zte/zdm/omacp/c;->i:I

    goto :goto_0

    :cond_2
    aget-byte v2, p1, v1

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    aget-byte v2, p1, v5

    if-ne v2, v4, :cond_3

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/c;->c([B)I

    move-result v1

    iput v1, p0, Lcom/zte/zdm/omacp/c;->i:I

    goto :goto_0

    :cond_3
    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_4

    aget-byte v2, p1, v5

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/omacp/c;->i:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/c;->j:Ljava/lang/String;

    return-object v0
.end method
