.class final Lzte/com/cn/driverMode/ui/df;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/high16 v3, -0x1

    if-nez p2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0b00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->b(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v2, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v3, ""

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/df;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->c(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_1
    const v2, -0xd1d1d2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, -0x69696a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1
.end method
