.class public Lcom/autonavi/xmgd/navigator/RoutesSet;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private b:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private c:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Lcom/autonavi/xmgd/navigator/gj;

.field private l:I

.field private m:[Lcom/autonavi/xmgd/e/k;

.field private n:Lcom/autonavi/xmgd/naviservice/e;

.field private o:Lcom/autonavi/xmgd/navigator/gk;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->p:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/RoutesSet;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->p:I

    return v0
.end method

.method private a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c013f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/autonavi/xmgd/navigator/gd;

    invoke-direct {v2, p0, p6, p5}, Lcom/autonavi/xmgd/navigator/gd;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;Lcom/autonavi/xmgd/navigator/gj;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0c0142

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setHint(I)V

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    const v0, 0x7f0c0141

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/autonavi/xmgd/navigator/ge;

    invoke-direct {v2, p0, p6, p5}, Lcom/autonavi/xmgd/navigator/ge;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;Lcom/autonavi/xmgd/navigator/gj;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c013e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v2, Lcom/autonavi/xmgd/navigator/gf;

    invoke-direct {v2, p0, p6, p5}, Lcom/autonavi/xmgd/navigator/gf;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;Lcom/autonavi/xmgd/navigator/gj;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v0, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    new-instance v1, Lcom/autonavi/xmgd/navigator/gk;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/gk;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->o:Lcom/autonavi/xmgd/navigator/gk;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->o:Lcom/autonavi/xmgd/navigator/gk;

    invoke-interface {v1, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/naviservice/f;)V

    new-instance v1, Lcom/autonavi/xmgd/navigator/gj;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/gj;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/af;->d()[Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/af;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v1}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->szRoadName:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v3, v2}, Lcom/autonavi/xmgd/naviservice/e;->c(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v4

    new-instance v5, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v5}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iput-object v2, v5, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v1, v5, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput v3, v5, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iput v4, v5, Lcom/autonavi/xmgd/e/k;->lDistance:I

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v5, v1, v0

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/controls/af;->c()I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    array-length v1, v1

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-ge v1, v0, :cond_3

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_3
    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-ge v0, v6, :cond_4

    iput v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_4
    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v7, :cond_5

    iput v7, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_5
    return-void
.end method

.method private a(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-array v1, v6, [Lcom/autonavi/xm/navigation/server/map/GCarInfo;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v2, v1}, Lcom/autonavi/xmgd/naviservice/e;->a([Lcom/autonavi/xm/navigation/server/map/GCarInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v2, v3, :cond_0

    aget-object v0, v1, v5

    iget-object v2, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    aget-object v0, v1, v5

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/map/GCarInfo;->szRoadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->c(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/naviservice/j;->b(Lcom/autonavi/xm/navigation/server/GCoord;)I

    move-result v4

    new-instance v0, Lcom/autonavi/xmgd/e/k;

    invoke-direct {v0}, Lcom/autonavi/xmgd/e/k;-><init>()V

    iput-object v2, v0, Lcom/autonavi/xmgd/e/k;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iput-object v1, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    iput v3, v0, Lcom/autonavi/xmgd/e/k;->lAdminCode:I

    iput v4, v0, Lcom/autonavi/xmgd/e/k;->lDistance:I

    :cond_0
    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v0, v1, v5

    const v1, 0x7f0c0135

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v0, v1, v6

    const v1, 0x7f0c0136

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const v1, 0x7f0c0137

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const v1, 0x7f0c0138

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const v1, 0x7f0c0139

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const v1, 0x7f0c013a

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const v1, 0x7f0c013b

    iget-object v0, v0, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u4f4d\u7f6e\u4e0d\u53ef\u7528!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->dismissDialog(I)V

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.show_routeinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->finish()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->A()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    if-lez v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070159

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/RoutesSet;ILcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILcom/autonavi/xm/navigation/server/GStatus;)V

    return-void
.end method

.method private a(Lcom/autonavi/xmgd/e/k;I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v3, v3, p2

    invoke-interface {v2, v3}, Lcom/autonavi/xmgd/naviservice/e;->e(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v2

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v2, v3, :cond_2

    const v2, 0x7f070162

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v5, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x5

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v5, v1, p2

    iget v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e()V

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/RoutesSet;[Lcom/autonavi/xmgd/e/k;)[Lcom/autonavi/xmgd/e/k;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    return-object p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/RoutesSet;)Lcom/autonavi/xmgd/utility/CustomDialog;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    return-object v0
.end method

.method private b()V
    .locals 9

    const v8, 0x7f070140

    const v7, 0x7f020094

    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v1, 0x7f0c0135

    const v2, 0x7f0200fc

    const v3, 0x7f07013f

    const v4, 0x7f02007f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->d:Landroid/view/View;

    const v1, 0x7f0c0136

    const v2, 0x7f0200fd

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->e:Landroid/view/View;

    const v1, 0x7f0c0137

    const v2, 0x7f0200fe

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->f:Landroid/view/View;

    const v1, 0x7f0c0138

    const v2, 0x7f0200ff

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->g:Landroid/view/View;

    const v1, 0x7f0c0139

    const v2, 0x7f020100

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->h:Landroid/view/View;

    const v1, 0x7f0c013a

    const v2, 0x7f020101

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->i:Landroid/view/View;

    const v1, 0x7f0c013b

    const v2, 0x7f0200fb

    const v3, 0x7f070141

    const v4, 0x7f020091

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->k:Lcom/autonavi/xmgd/navigator/gj;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(IIIIILcom/autonavi/xmgd/navigator/gj;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    const v0, 0x7f0c013c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c013d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/controls/af;->b(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.autonavi.xmgd.navigator_new.action.select_poi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b(I)V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0135

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c0136

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c0137

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c0138

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c0139

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c013a

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const v0, 0x7f0c013b

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-lt v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const v0, 0x7f0c0135

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    const v0, 0x7f0c0136

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const v0, 0x7f0c0137

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4

    const v0, 0x7f0c0138

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    const v0, 0x7f0c0139

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const v0, 0x7f0c013a

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const v0, 0x7f0c013b

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private c(I)V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/controls/af;->b(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->d(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/RoutesSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e()V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c(I)V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e()V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/controls/af;->a(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto :goto_0
.end method

.method private d(I)V
    .locals 5

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/xmgd/controls/af;->b(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->D()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    div-int/lit16 v0, v0, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v1

    const-class v2, Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/controls/ab;->f(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/autonavi/xmgd/navigator/SearchForRoute;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "searchType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "admincode"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/RoutesSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->d(I)V

    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/RoutesSet;)Lcom/autonavi/xmgd/naviservice/e;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->m()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->x()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->a(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "deleteRoute"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/logic/ac;->a(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v1, v2, v5

    const v2, 0x7f0c013b

    invoke-direct {p0, v2, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v1, v0, v4

    const v0, 0x7f0c0135

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v3

    aput-object v3, v2, v5

    const v2, 0x7f0c013b

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    aput-object v0, v1, v4

    const v0, 0x7f0c0135

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/autonavi/xmgd/e/k;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v1, v0, v2

    const v0, 0x7f0c0136

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v1, v0, v3

    const v0, 0x7f0c0137

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v0, 0x7f0c0138

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v3, :cond_4

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_4
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v0, 0x7f0c0139

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v3, :cond_5

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_5
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v0, 0x7f0c013a

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    if-le v0, v3, :cond_6

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    :cond_6
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowNum \u53d6\u503c\u51fa\u9519, mShowNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->j:Landroid/view/View;

    const v1, 0x7f0c013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    goto/16 :goto_0

    :pswitch_c
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u9014\u7ecf\u70b9\u5df2\u7ecf\u6ee1\u5566!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/RoutesSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e(I)V

    return-void
.end method

.method private f()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u8bf7\u8bbe\u7f6e\u8d77\u70b9\u548c\u7ec8\u70b9!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015c

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07015d

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->x()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->d(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070160

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v1, v0}, Lcom/autonavi/xmgd/naviservice/e;->f(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v1, v2, :cond_6

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070161

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->e()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-static {v0}, Lcom/autonavi/xmgd/e/j;->a(Lcom/autonavi/xmgd/e/k;)Lcom/autonavi/xmgd/e/j;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/e/j;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v5

    invoke-direct {p0, v0, v5}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/e/k;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v4

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v4

    invoke-direct {p0, v0, v4}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/e/k;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v6

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v6}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/e/k;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_9
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v7

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aget-object v0, v0, v7

    invoke-direct {p0, v0, v7}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/e/k;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_a
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a(Lcom/autonavi/xmgd/e/k;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_b
    invoke-virtual {p0, v4}, Lcom/autonavi/xmgd/navigator/RoutesSet;->showDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, v3}, Lcom/autonavi/xmgd/naviservice/e;->b(Z)Lcom/autonavi/xm/navigation/server/GStatus;

    goto/16 :goto_0
.end method

.method private f(I)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v3, v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v3, v0, p1

    :goto_1
    if-ge p1, v4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    aput-object v3, v0, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/autonavi/xmgd/e/k;->b()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    add-int/lit8 v1, p1, 0x1

    aput-object v3, v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c013c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviLogic] RouteSet onCreate Logicinstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->isNeedFinishAndReboot()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->c()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f07001a

    const v6, 0x7f070019

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    const-string v0, "linrId"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->p:I

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/gg;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/gg;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    invoke-direct {v0, p0, v5, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070142

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->b:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/gh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/gh;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070015

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070029

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070026

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->a:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/gi;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/gi;-><init>(Lcom/autonavi/xmgd/navigator/RoutesSet;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07020a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    const v1, 0x7f07015a

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "<font color=\'red\'></font>"

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NaviLogic] RouteSet onDestroy Logicinstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->isNeedFinishAndReboot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/af;->a()Lcom/autonavi/xmgd/controls/af;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/af;->a([Lcom/autonavi/xmgd/e/k;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->o:Lcom/autonavi/xmgd/navigator/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->o:Lcom/autonavi/xmgd/navigator/gk;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xmgd/naviservice/f;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->q:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->q:Z

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->m:[Lcom/autonavi/xmgd/e/k;

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/RoutesSet;->startActivity(Landroid/content/Intent;)V
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

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f07015a

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->n:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0}, Lcom/autonavi/xmgd/naviservice/e;->A()Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v0, v5, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    if-lez v0, :cond_6

    iget v0, v5, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->nNumberOfList:I

    iget-object v1, v5, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    aget v6, v6, v3

    invoke-virtual {v0, v6, v9}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget-object v6, v5, Lcom/autonavi/xm/navigation/server/guide/GRouteErrorInfo;->pAdminCodeList:[I

    aget v6, v6, v3

    invoke-virtual {v0, v6, v8}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ","

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "<font color=\'red\'></font>"

    aput-object v4, v3, v2

    invoke-virtual {p0, v10, v3}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-ne v0, v8, :cond_4

    new-array v0, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'red\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v10, v0}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/RoutesSet;->c:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    if-le v0, v8, :cond_5

    const v3, 0x7f07015b

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'red\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</font>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'red\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/autonavi/xmgd/navigator/RoutesSet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
