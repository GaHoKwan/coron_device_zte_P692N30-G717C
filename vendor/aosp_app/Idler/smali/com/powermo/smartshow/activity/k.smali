.class public Lcom/powermo/smartshow/activity/k;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Lcom/powermo/smartshow/activity/a;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(ZLcom/powermo/smartshow/activity/a;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p1, p0, Lcom/powermo/smartshow/activity/k;->b:Z

    iput-object p2, p0, Lcom/powermo/smartshow/activity/k;->c:Lcom/powermo/smartshow/activity/a;

    iput-object p3, p0, Lcom/powermo/smartshow/activity/k;->d:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/powermo/smartshow/activity/k;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/k;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/activity/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/k;->e:Landroid/content/res/ColorStateList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/k;->e:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/k;->c:Lcom/powermo/smartshow/activity/a;

    iget-boolean v1, p0, Lcom/powermo/smartshow/activity/k;->b:Z

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/k;->c:Lcom/powermo/smartshow/activity/a;

    iget-boolean v1, p0, Lcom/powermo/smartshow/activity/k;->b:Z

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Lcom/powermo/smartshow/activity/m;

    invoke-direct {v0}, Lcom/powermo/smartshow/activity/m;-><init>()V

    iget-object v1, p0, Lcom/powermo/smartshow/activity/k;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/k;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/smartshow/activity/m;->a(Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)V

    iget-object p2, v0, Lcom/powermo/smartshow/activity/m;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/powermo/smartshow/activity/k;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1, v0, p1}, Lcom/powermo/smartshow/activity/m;->a(Lcom/powermo/smartshow/activity/i;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/m;

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
