.class public Lcom/autonavi/xmgd/controls/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/graphics/Bitmap;

.field public d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

.field public e:I

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/controls/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/c;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/xmgd/controls/c;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v2}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/c;->a:Z

    iput-boolean v0, v2, Lcom/autonavi/xmgd/controls/c;->a:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iget v0, p0, Lcom/autonavi/xmgd/controls/c;->e:I

    iput v0, v2, Lcom/autonavi/xmgd/controls/c;->e:I

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    new-instance v4, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v4}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/controls/c;->a:Z

    iput-boolean v0, v4, Lcom/autonavi/xmgd/controls/c;->a:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget v0, v0, Lcom/autonavi/xmgd/controls/c;->e:I

    iput v0, v4, Lcom/autonavi/xmgd/controls/c;->e:I

    iput-object v5, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    iget-object v0, v2, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v5, v2, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    :cond_1
    return-object v2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/c;->a()Lcom/autonavi/xmgd/controls/c;

    move-result-object v0

    return-object v0
.end method
