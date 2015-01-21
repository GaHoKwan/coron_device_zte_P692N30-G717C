.class public Lcom/powermo/SmartBar/k;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[Landroid/graphics/drawable/Drawable;

.field private i:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/powermo/SmartBar/k;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/SmartBar/k;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/SmartBar/k;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/SmartBar/k;->e:Ljava/lang/String;

    iput v2, p0, Lcom/powermo/SmartBar/k;->f:I

    iput-object v1, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcom/powermo/SmartBar/k;->h:[Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/powermo/SmartBar/k;->i:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/k;->a:I

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->i:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->h:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/k;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/k;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/k;->f:I

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/powermo/SmartBar/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/powermo/SmartBar/k;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/k;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/powermo/SmartBar/k;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/k;->f:I

    return v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/k;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/powermo/SmartBar/k;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->h:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/powermo/SmartBar/k;)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->i:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    :cond_1
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    :goto_0
    iget-object v2, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public d()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->h:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/k;->f:I

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powermo/SmartBar/k;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/SmartBar/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
