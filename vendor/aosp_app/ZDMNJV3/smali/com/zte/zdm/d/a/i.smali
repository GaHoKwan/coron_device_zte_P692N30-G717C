.class public Lcom/zte/zdm/d/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3


# instance fields
.field protected final d:I

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/zdm/d/a/i;->d:I

    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/a/i;->d:I

    return v0
.end method

.method public a(I)Lcom/zte/zdm/d/a/i;
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/a/i;->f:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/a/i;->f:I

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/d/a/i;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/zte/zdm/d/a/i;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/zte/zdm/d/a/i;

    iget v2, p0, Lcom/zte/zdm/d/a/i;->d:I

    iget v3, p1, Lcom/zte/zdm/d/a/i;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/zte/zdm/d/a/i;->f:I

    iget v3, p1, Lcom/zte/zdm/d/a/i;->f:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget v1, p0, Lcom/zte/zdm/d/a/i;->d:I

    add-int/lit16 v1, v1, 0x20f

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/zte/zdm/d/a/i;->f:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zte/zdm/d/a/i;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/d/a/i;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/d/a/i;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", Pwd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/d/a/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
