.class public final Lzte/com/cn/driverMode/ui/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/Button;

.field protected e:Lzte/com/cn/driverMode/service/by;

.field protected f:Z

.field protected g:I

.field protected h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lzte/com/cn/driverMode/ui/a;->f:Z

    iput v0, p0, Lzte/com/cn/driverMode/ui/a;->g:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/a;->h:I

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    iput-boolean p3, p0, Lzte/com/cn/driverMode/ui/a;->f:Z

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/a;->e:Lzte/com/cn/driverMode/service/by;

    iput p4, p0, Lzte/com/cn/driverMode/ui/a;->h:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v4, 0x7f0800da

    const/4 v7, 0x0

    const/high16 v6, -0x1

    const/16 v5, 0x21

    if-nez p2, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/service/ck;

    iget-object v1, v0, Lzte/com/cn/driverMode/service/ck;->a:Ljava/lang/String;

    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->d:Landroid/widget/Button;

    new-instance v2, Lzte/com/cn/driverMode/ui/b;

    invoke-direct {v2, p0, p1}, Lzte/com/cn/driverMode/ui/b;-><init>(Lzte/com/cn/driverMode/ui/a;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v1, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-lez v2, :cond_1

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x777778

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget v1, p0, Lzte/com/cn/driverMode/ui/a;->g:I

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lzte/com/cn/driverMode/ui/a;->f:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v3, v1, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lzte/com/cn/driverMode/ui/c;

    invoke-direct {v0, p0, p1}, Lzte/com/cn/driverMode/ui/c;-><init>(Lzte/com/cn/driverMode/ui/a;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lzte/com/cn/driverMode/ui/a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-object p2

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/a;->d:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
