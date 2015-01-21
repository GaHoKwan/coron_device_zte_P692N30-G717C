.class public Lcom/zte/zdm/application/mmi/HistoryForUpdate;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->c:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->a:Landroid/widget/ListView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->c:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "updateResults has nothing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "TIME"

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09011a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030024

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "TIME"

    aput-object v1, v4, v6

    const-string v1, "CONTENT"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "TIME"

    aget-object v5, v0, v6

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CONTENT"

    aget-object v0, v0, v7

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0xabt 0x0t 0xdt 0x7ft
        0xact 0x0t 0xdt 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/zte/zdm/application/d/a/c;->a(Landroid/content/Context;)Lcom/zte/zdm/application/d/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/a/c;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/zte/zdm/application/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/HistoryForUpdate;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
