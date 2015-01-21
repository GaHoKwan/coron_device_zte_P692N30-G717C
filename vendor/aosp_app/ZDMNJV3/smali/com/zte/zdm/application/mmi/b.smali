.class public Lcom/zte/zdm/application/mmi/b;
.super Lcom/zte/zdm/application/mmi/a;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/mmi/a;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/b;->a:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/b;->a:Landroid/app/Activity;

    new-instance v2, Lcom/zte/zdm/application/mmi/af;

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/b;->b:Ljava/util/List;

    new-instance v1, Lcom/zte/zdm/application/mmi/cd;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/zte/zdm/application/mmi/cd;-><init>(Landroid/app/Activity;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/b;->b:Ljava/util/List;

    new-instance v1, Lcom/zte/zdm/application/mmi/y;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/zte/zdm/application/mmi/y;-><init>(Landroid/app/Activity;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/mmi/x;

    invoke-virtual {v0, p1, p2}, Lcom/zte/zdm/application/mmi/x;->a(Landroid/widget/CompoundButton;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
