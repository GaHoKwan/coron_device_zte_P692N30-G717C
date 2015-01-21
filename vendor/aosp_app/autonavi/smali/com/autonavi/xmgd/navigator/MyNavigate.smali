.class public Lcom/autonavi/xmgd/navigator/MyNavigate;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Lcom/autonavi/xmgd/controls/i;
.implements Lcom/autonavi/xmgd/i/c;
.implements Lcom/autonavi/xmgd/i/g;
.implements Lcom/autonavi/xmgd/i/k;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Lcom/autonavi/xmgd/i/f;

.field private C:Lcom/autonavi/xmgd/i/j;

.field private D:Lcom/autonavi/xmgd/i/a;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/f/n;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/autonavi/xmgd/e/k;

.field private G:Lcom/autonavi/xmgd/f/z;

.field private H:Landroid/widget/EditText;

.field private I:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

.field private J:I

.field private K:Lcom/autonavi/xmgd/f/o;

.field private L:Landroid/content/Context;

.field private M:I

.field private N:Landroid/os/Handler;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/autonavi/xmgd/user/GDAccountLogic;

.field private a:Z

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ExpandableListView;

.field private e:Lcom/autonavi/xmgd/controls/h;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ExpandableListView;

.field private m:Lcom/autonavi/xmgd/controls/n;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ExpandableListView;

.field private s:Lcom/autonavi/xmgd/controls/k;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/autonavi/xmgd/naviservice/e;

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Lcom/autonavi/xmgd/controls/t;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->a:Z

    iput v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iput v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    new-instance v0, Lcom/autonavi/xmgd/navigator/de;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/de;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->K:Lcom/autonavi/xmgd/f/o;

    new-instance v0, Lcom/autonavi/xmgd/navigator/dx;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/dx;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->N:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    return p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/k;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;Lcom/autonavi/xmgd/f/z;)Lcom/autonavi/xmgd/f/z;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/MyNavigate;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(ZZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->O:Landroid/widget/TextView;

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->O:Landroid/widget/TextView;

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private a(ZZZ)V
    .locals 6

    const v5, 0x7f08000c

    const v4, 0x7f08000b

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->g:Landroid/widget/Button;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->o:Landroid/widget/Button;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->u:Landroid/widget/Button;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->g:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->o:Landroid/widget/Button;

    if-eqz p2, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->u:Landroid/widget/Button;

    if-eqz p3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/MyNavigate;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->M:I

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n()V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mCurrentScreenIndex"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mTarget"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mOpeatorPoi"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mOperatorList"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mOperatorPoiUnion"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "1008"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->P:Lcom/autonavi/xmgd/user/GDAccountLogic;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xmgd/user/GDAccountLogic;->updateData(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->s()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[29]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f0701aa

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070099

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->m()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "mCurrentScreenIndex"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    const-string v0, "mTarget"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    const-string v0, "mOpeatorPoi"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    const-string v0, "mOperatorList"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/n;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->K:Lcom/autonavi/xmgd/f/o;

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/f/n;->a(Lcom/autonavi/xmgd/f/o;)V

    goto :goto_0

    :cond_0
    const-string v0, "mOperatorPoiUnion"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/f/z;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    :cond_1
    const v0, 0x7f0c00e2

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->I:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->I:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->setText(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->f()V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MyNavigate]  init mCurrentItemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    return-void
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/MyNavigate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    return v0
.end method

.method private f()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->u:Landroid/widget/Button;

    new-instance v3, Lcom/autonavi/xmgd/navigator/dp;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/dp;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->o:Landroid/widget/Button;

    new-instance v3, Lcom/autonavi/xmgd/navigator/dz;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/dz;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00e3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->g:Landroid/widget/Button;

    new-instance v3, Lcom/autonavi/xmgd/navigator/ea;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/ea;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->g()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->h()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->i()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/controls/t;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->z:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Lcom/autonavi/xmgd/controls/t;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->y:Lcom/autonavi/xmgd/controls/t;

    const v0, 0x7f0c00e6

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->y:Lcom/autonavi/xmgd/controls/t;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :goto_2
    invoke-direct {p0, v0, v3, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(ZZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/autonavi/xmgd/navigator/eb;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/eb;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->A:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ec;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ec;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/naviservice/e;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    return-object v0
.end method

.method private g()V
    .locals 7

    const v6, 0x7f0c0054

    const v5, 0x7f0c0053

    const v4, 0x7f030013

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v0, 0x7f030038

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->c:Landroid/view/View;

    new-instance v0, Lcom/autonavi/xmgd/controls/e;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/e;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/h;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/h;->a(Lcom/autonavi/xmgd/controls/i;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->c:Landroid/view/View;

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->i:Landroid/view/View;

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v1, Lcom/autonavi/xmgd/navigator/ed;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ed;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->j:Landroid/view/View;

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v1, Lcom/autonavi/xmgd/navigator/ee;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ee;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ef;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ef;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/df;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/df;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->d:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dg;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dg;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->c:Landroid/view/View;

    const v1, 0x7f0c00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->c:Landroid/view/View;

    const v1, 0x7f0c00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dh;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m()V

    return-void
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/f;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->B:Lcom/autonavi/xmgd/i/f;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f03003a

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->k:Landroid/view/View;

    new-instance v0, Lcom/autonavi/xmgd/controls/n;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/n;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/n;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/n;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/n;->a(Lcom/autonavi/xmgd/controls/i;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->k:Landroid/view/View;

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/di;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/di;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->l:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dj;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dj;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->k:Landroid/view/View;

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->k:Landroid/view/View;

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dk;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dk;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n()V

    return-void
.end method

.method static synthetic i(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/j;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->C:Lcom/autonavi/xmgd/i/j;

    return-object v0
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f030037

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->q:Landroid/view/View;

    new-instance v0, Lcom/autonavi/xmgd/controls/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/k;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/k;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/k;->a(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/k;->a(Lcom/autonavi/xmgd/controls/i;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->q:Landroid/view/View;

    const v1, 0x7f0c00ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dl;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dl;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->r:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dm;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dm;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->q:Landroid/view/View;

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->q:Landroid/view/View;

    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dn;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dn;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o()V

    return-void
.end method

.method static synthetic j(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/i/a;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->D:Lcom/autonavi/xmgd/i/a;

    return-object v0
.end method

.method private j()V
    .locals 4

    const v3, 0x7f07007d

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/z;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    return-object v0
.end method

.method private k()V
    .locals 4

    const v3, 0x7f07007d

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/autonavi/xmgd/navigator/MyNavigate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    return v0
.end method

.method private l()V
    .locals 4

    const v3, 0x7f07007d

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic m(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, v3, v3}, Lcom/autonavi/xmgd/controls/h;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v0, v3}, Lcom/autonavi/xmgd/controls/h;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0, v3, v3}, Lcom/autonavi/xmgd/controls/n;->a([Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v1, v0, v3}, Lcom/autonavi/xmgd/controls/n;->a([Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/k;->a(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->j()V

    return-void
.end method

.method static synthetic p(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/f/o;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->K:Lcom/autonavi/xmgd/f/o;

    return-object v0
.end method

.method private p()V
    .locals 3

    iput-object p0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->L:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccountLogic;->getInstance(Landroid/app/Application;)Lcom/autonavi/xmgd/user/GDAccountLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->P:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->P:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->N:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    const-string v0, "chenwei.MyNavigate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAccountView()  GDAccount_Global.isLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->I:Lcom/autonavi/xmgd/user/GDMyNavigateTitle;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->getRightView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->O:Landroid/widget/TextView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dy;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dy;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->s()V

    return-void
.end method

.method static synthetic q(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private q()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/user/GDAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic r(Lcom/autonavi/xmgd/navigator/MyNavigate;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->n()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->o()V

    goto :goto_0
.end method

.method static synthetic s(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->H:Landroid/widget/EditText;

    return-object v0
.end method

.method private s()V
    .locals 1

    sget-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->a(Z)V

    return-void
.end method

.method static synthetic t(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->q()V

    return-void
.end method

.method static synthetic u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->M:I

    return v0
.end method

.method static synthetic v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->L:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->s()V

    return-void
.end method

.method static synthetic x(Lcom/autonavi/xmgd/navigator/MyNavigate;)Lcom/autonavi/xmgd/user/GDAccountLogic;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->P:Lcom/autonavi/xmgd/user/GDAccountLogic;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public a(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    const-string v1, "[MyNavigate]  onClick"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1, p1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "poi"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-nez v1, :cond_2

    const-string v1, "IPoiOperator"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/controls/h;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-ne v1, v5, :cond_1

    const-string v1, "IPoiOperator"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/k;

    new-instance v1, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v1}, Lcom/autonavi/xmgd/f/z;-><init>()V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v1, p1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "poi"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-nez v1, :cond_4

    const-string v1, "IPoiOperator"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/controls/n;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-ne v1, v5, :cond_3

    const-string v1, "IPoiOperator"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/g;->a()Lcom/autonavi/xmgd/e/k;

    move-result-object v2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/autonavi/xmgd/e/k;

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/g;->a()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/autonavi/xmgd/f/z;

    invoke-direct {v0}, Lcom/autonavi/xmgd/f/z;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/f/z;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/f/z;->a([Lcom/autonavi/xmgd/e/k;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "poi"

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->G:Lcom/autonavi/xmgd/f/z;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-nez v1, :cond_7

    const-string v1, "IPoiOperator"

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v3}, Lcom/autonavi/xmgd/controls/k;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->c(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/k;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->a(Lcom/autonavi/xmgd/e/g;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    if-ne v1, v5, :cond_6

    const-string v1, "IPoiOperator"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lkx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailureSyncForFavorite this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->f(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/xmgd/e/c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/controls/h;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->k()V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->l(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(Ljava/util/ArrayList;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/autonavi/xmgd/e/j;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/controls/n;->a([Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/n;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->l()V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/e/g;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->q(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/autonavi/xmgd/naviservice/e;->c(Ljava/util/ArrayList;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/k;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/k;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->j()V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "chenwei.MyNavigate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult()  requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->P:Lcom/autonavi/xmgd/user/GDAccountLogic;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->N:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccountLogic;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->s()V

    sget-boolean v0, Lcom/autonavi/xmgd/user/GDAccount_Global;->isLogin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->h(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->m(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->r(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->r()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->w:Lcom/autonavi/xmgd/naviservice/e;

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->setContentView(I)V

    new-instance v0, Lcom/autonavi/xmgd/i/f;

    invoke-direct {v0}, Lcom/autonavi/xmgd/i/f;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->B:Lcom/autonavi/xmgd/i/f;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->B:Lcom/autonavi/xmgd/i/f;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/f;->a(Lcom/autonavi/xmgd/i/g;)V

    new-instance v0, Lcom/autonavi/xmgd/i/j;

    invoke-direct {v0}, Lcom/autonavi/xmgd/i/j;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->C:Lcom/autonavi/xmgd/i/j;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->C:Lcom/autonavi/xmgd/i/j;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/j;->a(Lcom/autonavi/xmgd/i/k;)V

    new-instance v0, Lcom/autonavi/xmgd/i/a;

    invoke-direct {v0}, Lcom/autonavi/xmgd/i/a;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->D:Lcom/autonavi/xmgd/i/a;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->D:Lcom/autonavi/xmgd/i/a;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/a;->a(Lcom/autonavi/xmgd/i/c;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "target"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->J:I

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->e()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->p()V

    const-string v0, "autonavi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MyNavigate]  mCurrentScreenIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const v8, 0x7f070019

    const/4 v5, 0x1

    const v4, 0x7f070015

    const/4 v2, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    new-instance v2, Lcom/autonavi/xmgd/navigator/do;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/do;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070096

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/dq;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/dq;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-direct {v0, p0, v7, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070097

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070016

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v0, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f07009f

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03003b

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xmgd/navigator/eg;

    invoke-direct {v3, p0, p0}, Lcom/autonavi/xmgd/navigator/eg;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;Landroid/content/Context;)V

    const v0, 0x7f0c00f4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/autonavi/xmgd/navigator/dr;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/dr;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setPushCustomView(Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v0, 0x3

    new-instance v3, Lcom/autonavi/xmgd/navigator/ds;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/ds;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-direct {v1, p0, v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f07009f

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0700a2

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0700a3

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03003c

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c00f5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->H:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->H:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->H:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    iget-object v3, v3, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/autonavi/xmgd/navigator/dt;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/dt;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setPushCustomView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCanceledOnTouchOutside(Z)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    const v1, 0x7f070183

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->L:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/navigator/du;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/du;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    const v1, 0x7f070184

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->L:Landroid/content/Context;

    new-instance v2, Lcom/autonavi/xmgd/navigator/dv;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/dv;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    invoke-direct {v0, v1, v7, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    const v1, 0x7f070185

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->F:Lcom/autonavi/xmgd/e/k;

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v1, v1, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->c(II)I

    move-result v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v3, Lcom/autonavi/xmgd/navigator/dw;

    invoke-direct {v3, p0, v1}, Lcom/autonavi/xmgd/navigator/dw;-><init>(Lcom/autonavi/xmgd/navigator/MyNavigate;I)V

    invoke-direct {v0, p0, v7, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07003c

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'red\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</font>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->e:Lcom/autonavi/xmgd/controls/h;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/h;->a(Lcom/autonavi/xmgd/controls/i;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->m:Lcom/autonavi/xmgd/controls/n;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/n;->a(Lcom/autonavi/xmgd/controls/i;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->s:Lcom/autonavi/xmgd/controls/k;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/k;->a(Lcom/autonavi/xmgd/controls/i;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->B:Lcom/autonavi/xmgd/i/f;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/f;->b(Lcom/autonavi/xmgd/i/g;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->B:Lcom/autonavi/xmgd/i/f;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/f;->b()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->C:Lcom/autonavi/xmgd/i/j;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/j;->b(Lcom/autonavi/xmgd/i/k;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->C:Lcom/autonavi/xmgd/i/j;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/j;->b()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->D:Lcom/autonavi/xmgd/i/a;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/i/a;->b(Lcom/autonavi/xmgd/i/c;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->D:Lcom/autonavi/xmgd/i/a;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/i/a;->b()V

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->a:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/MyNavigate;->a:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/ab;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d()V

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->d()V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
