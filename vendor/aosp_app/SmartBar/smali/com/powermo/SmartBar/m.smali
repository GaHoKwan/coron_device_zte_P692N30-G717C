.class public Lcom/powermo/SmartBar/m;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Lcom/powermo/SmartBar/c;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(ZLcom/powermo/SmartBar/c;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p1, p0, Lcom/powermo/SmartBar/m;->b:Z

    iput-object p2, p0, Lcom/powermo/SmartBar/m;->c:Lcom/powermo/SmartBar/c;

    iput-object p3, p0, Lcom/powermo/SmartBar/m;->d:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/powermo/SmartBar/m;->a:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/powermo/SmartBar/m;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/m;->e:Landroid/content/res/ColorStateList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/m;->e:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public static a(Lcom/powermo/SmartBar/k;Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v5, 0x8

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/powermo/SmartBar/k;->d()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powermo/SmartBar/k;->c()[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    array-length v1, v3

    if-lt v1, v2, :cond_0

    if-eqz v4, :cond_0

    array-length v1, v4

    if-lt v1, v2, :cond_0

    const v1, 0x7f030004

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f07001f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-object v0, v4, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f07001d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f07001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/m;->c:Lcom/powermo/SmartBar/c;

    iget-boolean v1, p0, Lcom/powermo/SmartBar/m;->b:Z

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/c;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/m;->c:Lcom/powermo/SmartBar/c;

    iget-boolean v1, p0, Lcom/powermo/SmartBar/m;->b:Z

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/c;->a(Z)Ljava/util/ArrayList;

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

    new-instance v0, Lcom/powermo/SmartBar/ab;

    invoke-direct {v0}, Lcom/powermo/SmartBar/ab;-><init>()V

    iget-object v1, p0, Lcom/powermo/SmartBar/m;->d:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/powermo/SmartBar/m;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/ab;->a(Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)V

    iget-object p2, v0, Lcom/powermo/SmartBar/ab;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1, v0, p1}, Lcom/powermo/SmartBar/ab;->a(Lcom/powermo/SmartBar/k;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ab;

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
