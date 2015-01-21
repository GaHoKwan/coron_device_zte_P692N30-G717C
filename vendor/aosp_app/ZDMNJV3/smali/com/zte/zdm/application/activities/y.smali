.class Lcom/zte/zdm/application/activities/y;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/y;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/y;->c:Landroid/content/Context;

    return-void
.end method

.method private a(IILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->m:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->m:Landroid/view/LayoutInflater;

    const v4, 0x7f030026

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    const v0, 0x7f0d001c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->j:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    const v0, 0x7f0d0020

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    const v0, 0x7f0d00b8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v4, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->i:Lcom/zte/zdm/application/a/a;

    const-string v5, "check_status"

    invoke-virtual {v4, v5, v1}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->l:Landroid/widget/CheckBox;

    new-instance v4, Lcom/zte/zdm/application/activities/bm;

    iget-object v5, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/zte/zdm/application/activities/bm;-><init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/zte/zdm/application/activities/y;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    const v0, 0x7f0d00b7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v4, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->n:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/application/activities/y;->a(IILjava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/zte/zdm/application/activities/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/zte/zdm/application/activities/y;->a(IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
