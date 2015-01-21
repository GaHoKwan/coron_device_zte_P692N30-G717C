.class public Lcom/zte/zdm/application/autoupdate/c;
.super Ljava/lang/Object;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/autoupdate/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    return v0
.end method

.method public a(Ljava/util/Calendar;)I
    .locals 6

    const/4 v5, 0x7

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v1, v0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v2, v1, v0

    rem-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    const/4 v4, 0x1

    shl-int v2, v4, v2

    and-int/2addr v2, v3

    if-gtz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/application/autoupdate/c;)V
    .locals 1

    iget v0, p1, Lcom/zte/zdm/application/autoupdate/c;->a:I

    iput v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    return-void
.end method

.method public a(I)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/Calendar;)I
    .locals 6

    const/4 v5, 0x7

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v1, v0, 0x7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_0

    add-int v2, v1, v0

    rem-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    const/4 v4, 0x1

    shl-int v2, v4, v2

    and-int/2addr v2, v3

    if-lez v2, :cond_2

    const-string v2, "vdm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vdm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dayCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vdm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDays = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    return-void
.end method

.method public b(Lcom/zte/zdm/application/autoupdate/c;)Z
    .locals 2

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    iget v1, p1, Lcom/zte/zdm/application/autoupdate/c;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Z
    .locals 4

    const/4 v3, 0x7

    new-array v1, v3, [Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/autoupdate/c;->a(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/zte/zdm/application/autoupdate/c;->a:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
