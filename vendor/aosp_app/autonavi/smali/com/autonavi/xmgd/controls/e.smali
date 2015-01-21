.class public Lcom/autonavi/xmgd/controls/e;
.super Lcom/autonavi/xmgd/controls/h;


# instance fields
.field private f:Z

.field private g:[Lcom/autonavi/xmgd/e/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/e;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/e;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, [Lcom/autonavi/xmgd/e/c;

    check-cast p1, [Lcom/autonavi/xmgd/e/c;

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/e;->f:Z

    :goto_0
    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/autonavi/xmgd/controls/e;->d:Ljava/lang/String;

    return-void

    :cond_1
    check-cast p1, [Lcom/autonavi/xmgd/e/c;

    check-cast p1, [Lcom/autonavi/xmgd/e/c;

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p4
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    array-length v0, v0

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/e;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/controls/g;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/g;-><init>(Lcom/autonavi/xmgd/controls/e;)V

    const v0, 0x7f0c0053

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/g;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0054

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/g;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0098

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/g;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0097

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/g;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0055

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/g;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/autonavi/xmgd/e/c;->d:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/autonavi/xmgd/controls/g;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/controls/e;->g:[Lcom/autonavi/xmgd/e/c;

    aget-object v1, v1, p1

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/g;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/g;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/g;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/g;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v3, Lcom/autonavi/xmgd/controls/f;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/controls/f;-><init>(Lcom/autonavi/xmgd/controls/e;)V

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/g;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->showUIPoiAddressInfo(Lcom/autonavi/xmgd/e/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v2

    const/16 v1, 0x3e8

    if-lt v2, v1, :cond_2

    int-to-float v1, v2

    float-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    double-to-float v1, v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "####.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v1, "km"

    :goto_2
    iget-object v0, v0, Lcom/autonavi/xmgd/controls/g;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/g;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/autonavi/xmgd/controls/g;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const-string v1, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
