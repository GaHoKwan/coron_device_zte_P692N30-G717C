.class public Lcom/autonavi/xmgd/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic i:Lcom/autonavi/xmgd/b/a;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->i:Lcom/autonavi/xmgd/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/b/c;->c:I

    return p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/b/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/b/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/b/c;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/b/c;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->e:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/b/c;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/b/c;->c:I

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/b/c;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/b/c;->g:I

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/b/c;)[I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->h:Ljava/util/List;

    return-void
.end method

.method public a([I)V
    .locals 5

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maplayers_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    aget v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/b/c;->e:[Ljava/lang/String;

    return-void
.end method

.method public a(I)Z
    .locals 3

    iput p1, p0, Lcom/autonavi/xmgd/b/c;->c:I

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maplayers_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/b/c;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/b/c;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/autonavi/xmgd/b/c;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/c;->i:Lcom/autonavi/xmgd/b/a;

    invoke-direct {v0, v1}, Lcom/autonavi/xmgd/b/c;-><init>(Lcom/autonavi/xmgd/b/a;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    iput-object v1, v0, Lcom/autonavi/xmgd/b/c;->f:[I

    iget-object v1, p0, Lcom/autonavi/xmgd/b/c;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/autonavi/xmgd/b/c;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/autonavi/xmgd/b/c;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/autonavi/xmgd/b/c;->d:Ljava/lang/String;

    iget v1, p0, Lcom/autonavi/xmgd/b/c;->c:I

    iput v1, v0, Lcom/autonavi/xmgd/b/c;->c:I

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/xm/navigation/server/poi/GPoi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/b/c;->g:I

    return v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public g()[I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/b/c;->f:[I

    return-object v0
.end method
