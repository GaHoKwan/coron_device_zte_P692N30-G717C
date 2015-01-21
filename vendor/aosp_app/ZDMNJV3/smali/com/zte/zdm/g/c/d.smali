.class Lcom/zte/zdm/g/c/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/zte/zdm/g/c/c;

.field private b:[Ljava/lang/Class;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/g/c/c;[Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/g/c/d;->a:Lcom/zte/zdm/g/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ParamList  params can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    iput-object p3, p0, Lcom/zte/zdm/g/c/d;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/g/c/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/g/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/zdm/g/c/d;)[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/zte/zdm/g/c/d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lcom/zte/zdm/g/c/d;

    iget-object v0, p1, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/g/c/d;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/zte/zdm/g/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/g/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v1, "Param Classes in ParamList is:"

    iget-object v2, p0, Lcom/zte/zdm/g/c/d;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
