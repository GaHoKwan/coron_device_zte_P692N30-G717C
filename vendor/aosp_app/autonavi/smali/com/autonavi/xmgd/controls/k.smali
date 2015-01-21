.class public Lcom/autonavi/xmgd/controls/k;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Lcom/autonavi/xmgd/controls/i;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/controls/k;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/h;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/s;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/k;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/i;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/k;->a:Lcom/autonavi/xmgd/controls/i;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/controls/k;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/controls/k;->e:Z

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/controls/k;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/controls/m;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/m;-><init>(Lcom/autonavi/xmgd/controls/k;)V

    const v0, 0x7f0c0053

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/m;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0054

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/m;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0098

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/m;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0097

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/m;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0055

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/m;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget v0, v0, Lcom/autonavi/xmgd/e/g;->d:I

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/autonavi/xmgd/controls/m;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v2, v1, Lcom/autonavi/xmgd/controls/m;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v3, v3, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/autonavi/xmgd/controls/m;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v2, v1, Lcom/autonavi/xmgd/controls/m;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/autonavi/xmgd/controls/m;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v3, Lcom/autonavi/xmgd/controls/l;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/controls/l;-><init>(Lcom/autonavi/xmgd/controls/k;)V

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->e:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    sget-object v3, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v2, v3, :cond_3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, v1, Lcom/autonavi/xmgd/controls/m;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v2

    const/16 v0, 0x3e8

    if-lt v2, v0, :cond_7

    int-to-float v0, v2

    float-to-double v2, v0

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    double-to-float v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "####.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v0, "km"

    :goto_3
    iget-object v1, v1, Lcom/autonavi/xmgd/controls/m;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/m;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, v1, Lcom/autonavi/xmgd/controls/m;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/autonavi/xmgd/e/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string v2, ""

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->i:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->lAdminCode:I

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const-string v0, "m"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
