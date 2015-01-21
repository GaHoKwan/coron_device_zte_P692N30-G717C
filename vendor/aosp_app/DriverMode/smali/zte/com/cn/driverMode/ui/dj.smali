.class final Lzte/com/cn/driverMode/ui/dj;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->b:Ljava/util/ArrayList;

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
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0b00cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "DMSelectContactNumberActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@@@@@@curIndex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    iget v3, v3, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    iget v1, v1, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->c:I

    if-ne v1, p1, :cond_1

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dj;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->b(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_1
    const v1, -0xd1d1d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
