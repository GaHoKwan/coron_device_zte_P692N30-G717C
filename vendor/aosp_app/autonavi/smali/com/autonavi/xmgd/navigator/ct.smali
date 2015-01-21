.class Lcom/autonavi/xmgd/navigator/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/autonavi/xmgd/controls/ac;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

.field private synthetic n:Lcom/autonavi/xmgd/navigator/Map;


# direct methods
.method public constructor <init>(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/autonavi/xmgd/navigator/Map;->a(Lcom/autonavi/xmgd/navigator/Map;Landroid/content/Context;)Landroid/content/Context;

    iput-object p3, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->c()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->J(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/navigator/cz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/xmgd/navigator/cz;->a(IZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->aa(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method private a(Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;->pPathStat:[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalDis:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    const v2, 0x7f070084

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const v3, 0x4cbebc20

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<big><big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x47c34f80

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</big></big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;->pPathStat:[Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/autonavi/xm/navigation/server/guide/GPathStatisticInfo;->nTotalTollGate:I

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    const v3, 0x7f070085

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<big><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</big></big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    const v3, 0x7f070086

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ct;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u3000\u3000"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v3, 0x447a

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_4

    float-to-double v0, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    double-to-float v0, v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "####.#"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<big><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-double v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</big></big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "####.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<big><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</big></big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ct;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->d()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/ct;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/navigator/ct;->a(IZ)V

    return-void
.end method

.method private a(ZZZZ)V
    .locals 7

    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x88

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->b:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->b:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/16 v0, 0xab

    invoke-static {v0, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->c:Landroid/widget/Button;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->c:Landroid/widget/Button;

    if-eqz p2, :cond_3

    const/16 v0, 0xab

    invoke-static {v0, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->d:Landroid/widget/Button;

    if-eqz p3, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/ct;->d:Landroid/widget/Button;

    if-eqz p3, :cond_5

    const/16 v0, 0xab

    invoke-static {v0, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->e:Landroid/widget/Button;

    if-eqz p4, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->e:Landroid/widget/Button;

    if-eqz p4, :cond_7

    const/16 v0, 0xab

    invoke-static {v0, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_7
.end method

.method private c()V
    .locals 7

    const/4 v2, 0x0

    const v6, 0x7f0c0126

    const v5, 0x7f0c0125

    const/4 v4, 0x2

    const/high16 v3, 0x7f06

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->getRightView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    new-instance v0, Lcom/autonavi/xmgd/controls/ac;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/controls/ac;-><init>(Landroid/content/Context;Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->k:Lcom/autonavi/xmgd/controls/ac;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->k:Lcom/autonavi/xmgd/controls/ac;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/cu;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/cu;-><init>(Lcom/autonavi/xmgd/navigator/ct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    const v2, 0x7f020129

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0200d6

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f070089

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v2, 0x7f0c0130

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    if-ne v1, v4, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const v1, 0x7f0c0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->h:Landroid/view/View;

    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->i:Landroid/view/View;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->g()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->e()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->f()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->f()Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/d;->g()Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/ct;->a(Lcom/autonavi/xm/navigation/server/guide/GPathStatisticList;Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v1, "show_list"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->f:Landroid/widget/TextView;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->l:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->m:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->f:Landroid/widget/TextView;

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->l:Landroid/widget/TextView;

    const/16 v1, 0x80

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->k:Lcom/autonavi/xmgd/controls/ac;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xmgd/logic/d;->g()Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ac;->a(Lcom/autonavi/xm/navigation/server/guide/GGuideRoadList;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->k:Lcom/autonavi/xmgd/controls/ac;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->B()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0, v2, v1, v1, v1}, Lcom/autonavi/xmgd/navigator/ct;->a(ZZZZ)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1, v2, v1, v1}, Lcom/autonavi/xmgd/navigator/ct;->a(ZZZZ)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1, v1, v2, v1}, Lcom/autonavi/xmgd/navigator/ct;->a(ZZZZ)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v1, v1, v1, v2}, Lcom/autonavi/xmgd/navigator/ct;->a(ZZZZ)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->aa(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/view/MapView;->setUserLayoutVisibility(I)V

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v1, "show_list"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    iget-object v0, v0, Lcom/autonavi/xmgd/navigator/Map;->a:Lcom/autonavi/xmgd/view/FloatPanel;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/FloatPanel;->hide(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->j(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/logic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/logic/d;->e()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->aa(Lcom/autonavi/xmgd/navigator/Map;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->m(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/view/MapView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/MapView;->setUserLayoutVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->P(Lcom/autonavi/xmgd/navigator/Map;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->d(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->d(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->d(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->d(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/Map;->i(Lcom/autonavi/xmgd/navigator/Map;)Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->w()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    const-string v3, "show_list"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/autonavi/xmgd/application/NaviApplication;->cache_autonavi:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show_list"

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/ct;->d()V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/ct;->b()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.start_simulate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/navigator/Map;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Map;->showDialog(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/ct;->b()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ct;->n:Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/Map;->f()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00f0 -> :sswitch_4
        0x7f0c0129 -> :sswitch_0
        0x7f0c012a -> :sswitch_1
        0x7f0c012b -> :sswitch_2
        0x7f0c012c -> :sswitch_3
        0x7f0c012e -> :sswitch_5
        0x7f0c012f -> :sswitch_6
        0x7f0c0130 -> :sswitch_7
    .end sparse-switch
.end method
