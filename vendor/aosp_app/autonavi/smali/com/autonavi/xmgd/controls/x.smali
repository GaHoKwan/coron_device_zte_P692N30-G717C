.class public Lcom/autonavi/xmgd/controls/x;
.super Lcom/autonavi/xmgd/controls/h;


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/x;->f:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->t()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/x;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/controls/x;->f:Z

    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/x;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/controls/z;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/z;-><init>(Lcom/autonavi/xmgd/controls/x;)V

    const v0, 0x7f0c0053

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/z;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0054

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/z;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0098

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/z;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0097

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/z;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0055

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/z;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/autonavi/xmgd/controls/z;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/x;->b:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, p1

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/x;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/z;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/autonavi/xmgd/controls/z;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/z;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/z;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/z;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v3, Lcom/autonavi/xmgd/controls/y;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/controls/y;-><init>(Lcom/autonavi/xmgd/controls/x;)V

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/autonavi/xmgd/controls/x;->f:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/z;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    :cond_2
    iget-object v2, v0, Lcom/autonavi/xmgd/controls/z;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/autonavi/xmgd/utility/Tool;->showUIPoiAddressInfo(Lcom/autonavi/xmgd/e/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v2

    const/16 v1, 0x3e8

    if-lt v2, v1, :cond_3

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
    iget-object v0, v0, Lcom/autonavi/xmgd/controls/z;->d:Landroid/widget/TextView;

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

    :cond_3
    const-string v1, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
