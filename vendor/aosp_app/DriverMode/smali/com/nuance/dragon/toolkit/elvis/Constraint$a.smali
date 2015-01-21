.class final Lcom/nuance/dragon/toolkit/elvis/Constraint$a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/Constraint;


# direct methods
.method private constructor <init>(Lcom/nuance/dragon/toolkit/elvis/Constraint;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->d:Lcom/nuance/dragon/toolkit/elvis/Constraint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/nuance/dragon/toolkit/elvis/Constraint;Ljava/lang/String;Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;-><init>(Lcom/nuance/dragon/toolkit/elvis/Constraint;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    iget v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/Constraint$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
