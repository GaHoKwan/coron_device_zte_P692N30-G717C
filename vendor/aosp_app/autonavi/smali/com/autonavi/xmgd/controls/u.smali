.class public Lcom/autonavi/xmgd/controls/u;
.super Lcom/autonavi/xmgd/controls/h;


# instance fields
.field protected f:Lcom/autonavi/xmgd/controls/i;

.field private g:Landroid/view/LayoutInflater;

.field private h:[Lcom/autonavi/xmgd/c/k;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/h;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/q;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/v;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/r;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->c:Ljava/util/ArrayList;

    const-class v1, Lcom/autonavi/xmgd/f/w;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/u;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/controls/u;->g:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/autonavi/xmgd/controls/i;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/u;->f:Lcom/autonavi/xmgd/controls/i;

    return-void
.end method

.method public a([Lcom/autonavi/xmgd/c/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    iput-object p2, p0, Lcom/autonavi/xmgd/controls/u;->i:Ljava/lang/String;

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    array-length v0, v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/controls/u;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/autonavi/xmgd/controls/w;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/w;-><init>(Lcom/autonavi/xmgd/controls/u;)V

    const v0, 0x7f0c0053

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/w;->a:Landroid/widget/ImageView;

    const v0, 0x7f0c0054

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/w;->b:Landroid/widget/TextView;

    const v0, 0x7f0c0098

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/w;->c:Landroid/widget/TextView;

    const v0, 0x7f0c0097

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/w;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0055

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, v1, Lcom/autonavi/xmgd/controls/w;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/autonavi/xmgd/controls/w;->a:Landroid/widget/ImageView;

    const v2, 0x7f0200de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v2, ""

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    aget-object v3, v1, p1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v1

    sget-object v4, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-ne v1, v4, :cond_7

    iget-object v1, v3, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v3, Lcom/autonavi/xmgd/c/k;->f:Ljava/lang/String;

    :goto_1
    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v2, v3, Lcom/autonavi/xmgd/c/k;->h:Ljava/lang/String;

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_2
    iget-object v3, v0, Lcom/autonavi/xmgd/controls/w;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/u;->i:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/u;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/u;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_a

    const/4 v2, 0x1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/u;->i:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/autonavi/xmgd/controls/u;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080013

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {v3, v7, v5, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/w;

    goto/16 :goto_0

    :cond_3
    iget-object v1, v3, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/autonavi/xmgd/c/k;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_7
    iget-object v1, v3, Lcom/autonavi/xmgd/c/k;->e:Ljava/lang/String;

    iget-object v2, v3, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v3, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/autonavi/xmgd/c/k;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/autonavi/xmgd/c/k;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/autonavi/xmgd/c/k;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_9
    iget-object v4, v0, Lcom/autonavi/xmgd/controls/w;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/autonavi/xmgd/controls/w;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xm/navigation/server/GCoord;

    iget-object v3, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/autonavi/xmgd/c/k;->b:I

    iget-object v4, p0, Lcom/autonavi/xmgd/controls/u;->h:[Lcom/autonavi/xmgd/c/k;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/autonavi/xmgd/c/k;->c:I

    invoke-direct {v2, v3, v4}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_c

    const-wide v4, 0x408f400000000000L

    div-double v1, v2, v4

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "####.0"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const-string v1, "km"

    :goto_4
    iget-object v3, v0, Lcom/autonavi/xmgd/controls/w;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/autonavi/xmgd/controls/w;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->setFocusable(Z)V

    iget-object v1, v0, Lcom/autonavi/xmgd/controls/w;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/view/GDImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/w;->e:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Lcom/autonavi/xmgd/controls/v;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/controls/v;-><init>(Lcom/autonavi/xmgd/controls/u;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    :cond_c
    const-string v1, "m"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
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
