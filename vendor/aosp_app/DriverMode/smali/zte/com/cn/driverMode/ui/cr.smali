.class final Lzte/com/cn/driverMode/ui/cr;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getView---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lzte/com/cn/driverMode/ui/cy;

    invoke-direct {v1}, Lzte/com/cn/driverMode/ui/cy;-><init>()V

    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->a:Landroid/widget/TextView;

    const v0, 0x7f0b00a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v0, "DMPoiDownloadActivity"

    const-string v2, "getView---LayoutInflater!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView---mAllProvinceList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cy;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getView---statusMap.size()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "getView---statusMap.get(position).provice="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "getView---statusMap.get(position).size="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cy;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cy;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cr;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->d:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cy;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cy;->d:Landroid/widget/ImageView;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
