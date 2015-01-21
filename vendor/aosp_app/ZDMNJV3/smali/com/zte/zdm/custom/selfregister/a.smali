.class public Lcom/zte/zdm/custom/selfregister/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:S

.field private d:Lcom/zte/zdm/f/a/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;SLcom/zte/zdm/f/a/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/zte/zdm/f/a/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad paramters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    iput-short p2, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    new-instance v0, Lcom/zte/zdm/f/a/d;

    invoke-direct {v0, p3}, Lcom/zte/zdm/f/a/d;-><init>(Lcom/zte/zdm/f/a/d;)V

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save SelfRegistRecord imsies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "SelfRegistRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SelfRegistRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAddressNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SelfRegistRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad paramters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    iput-short p2, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    new-instance v0, Lcom/zte/zdm/f/a/d;

    invoke-direct {v0}, Lcom/zte/zdm/f/a/d;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;S[Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    iput-short v0, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad paramters!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lcom/zte/zdm/f/a/d;

    invoke-direct {v1}, Lcom/zte/zdm/f/a/d;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    iput-short p2, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    iget-object v3, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v3, v2}, Lcom/zte/zdm/f/a/d;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()S
    .locals 1

    iget-short v0, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    return v0
.end method

.method public c()Lcom/zte/zdm/f/a/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/zte/zdm/custom/selfregister/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/zte/zdm/custom/selfregister/a;

    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    iget-object v3, p1, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v2, v3}, Lcom/zte/zdm/f/a/d;->a(Lcom/zte/zdm/f/a/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-short v2, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    iget-short v3, p1, Lcom/zte/zdm/custom/selfregister/a;->c:S

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-short v2, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v2}, Lcom/zte/zdm/f/a/d;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelfRegistRecord [sendAddressNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/zte/zdm/custom/selfregister/a;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/custom/selfregister/a;->d:Lcom/zte/zdm/f/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
