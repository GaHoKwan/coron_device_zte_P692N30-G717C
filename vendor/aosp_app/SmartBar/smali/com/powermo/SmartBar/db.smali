.class public Lcom/powermo/SmartBar/db;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:Z

.field private d:Lcom/powermo/SmartBar/ai;

.field private e:Lcom/powermo/b/a;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/SmartBar/db;->f:I

    iput-object p1, p0, Lcom/powermo/SmartBar/db;->a:Landroid/content/Context;

    new-instance v0, Lcom/powermo/SmartBar/ai;

    invoke-direct {v0, p1, p0}, Lcom/powermo/SmartBar/ai;-><init>(Landroid/content/Context;Lcom/powermo/SmartBar/db;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/db;->e:Lcom/powermo/b/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/db;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/db;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->c()V

    return-void

    :cond_0
    new-instance v1, Lcom/powermo/SmartBar/ct;

    iget-object v2, p0, Lcom/powermo/SmartBar/db;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/powermo/SmartBar/ct;-><init>(Lcom/powermo/SmartBar/db;Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(ILcom/powermo/SmartBar/ct;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ai;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, v3}, Lcom/powermo/SmartBar/ai;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->e:Lcom/powermo/b/a;

    invoke-virtual {v0, v3, v1}, Lcom/powermo/b/a;->a(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, v3}, Lcom/powermo/SmartBar/ai;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->e:Lcom/powermo/b/a;

    invoke-virtual {v0, v3, v3}, Lcom/powermo/b/a;->a(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, v3}, Lcom/powermo/SmartBar/ai;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->e:Lcom/powermo/b/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/powermo/b/a;->a(II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, v3}, Lcom/powermo/SmartBar/ai;->b(Z)V

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p2, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget-object v2, p2, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/powermo/SmartBar/db;->e:Lcom/powermo/b/a;

    invoke-virtual {v1, v3, v0}, Lcom/powermo/b/a;->a(ILandroid/graphics/Point;)V

    goto :goto_0
.end method

.method a(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "cmd_show_splitbar"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/db;->a(Z)V

    :cond_0
    const-string v0, "status_focus_hint"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcom/powermo/SmartBar/db;->f:I

    if-eq v3, v0, :cond_4

    iput v0, p0, Lcom/powermo/SmartBar/db;->f:I

    :goto_1
    iget-boolean v0, p0, Lcom/powermo/SmartBar/db;->c:Z

    if-nez v0, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ct;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/ct;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/ai;->a(Landroid/content/Intent;)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ct;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ct;->a()V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v3, v0}, Lcom/powermo/SmartBar/ai;->d(Z)V

    move v3, v2

    move v4, v0

    :goto_1
    if-lt v3, v1, :cond_1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ct;

    invoke-virtual {v0, v4}, Lcom/powermo/SmartBar/ct;->b(Z)V

    if-eqz v4, :cond_2

    move v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/powermo/SmartBar/db;->c:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/powermo/SmartBar/db;->c:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v0, 0x1

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/powermo/SmartBar/db;->d:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/ai;->a(Z)V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/db;->c:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/SmartBar/db;->f:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/db;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ct;

    iget-boolean v2, p0, Lcom/powermo/SmartBar/db;->c:Z

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/ct;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
