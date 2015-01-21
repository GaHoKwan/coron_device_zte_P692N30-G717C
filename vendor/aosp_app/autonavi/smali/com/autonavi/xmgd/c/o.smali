.class public Lcom/autonavi/xmgd/c/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/c/o;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/autonavi/xmgd/c/o;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/autonavi/xmgd/c/o;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/c/o;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/c/o;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/autonavi/xmgd/c/p;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/c/p;-><init>(Lcom/autonavi/xmgd/c/o;)V

    const v0, 0x7f0c015b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/c/p;->a:Landroid/widget/TextView;

    const v0, 0x7f0c015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/c/p;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/c/p;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, v1, Lcom/autonavi/xmgd/c/p;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v0, v1, Lcom/autonavi/xmgd/c/p;->c:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDImageButton;->setEnabled(Z)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/xmgd/c/p;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/n;

    iget-object v0, v0, Lcom/autonavi/xmgd/c/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/autonavi/xmgd/c/o;->c:Landroid/content/Context;

    const v3, 0x7f07007d

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xmgd/c/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/n;

    iget v0, v0, Lcom/autonavi/xmgd/c/n;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/autonavi/xmgd/c/p;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/c/p;

    move-object v1, v0

    goto :goto_0
.end method
