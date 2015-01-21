.class public Lcom/autonavi/xmgd/navigator/CitySelect;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# static fields
.field private static c:I


# instance fields
.field private a:Lcom/autonavi/xmgd/navigator/d;

.field private b:Landroid/widget/ExpandableListView;

.field private d:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

.field private e:Lcom/autonavi/xmgd/view/GDTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/xmgd/navigator/CitySelect;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->d:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/autonavi/xmgd/navigator/CitySelect;->c:I

    return p0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/CitySelect;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->f(I)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->d:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    new-instance v0, Lcom/autonavi/xmgd/navigator/d;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/xmgd/navigator/d;-><init>(Lcom/autonavi/xmgd/navigator/CitySelect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->a:Lcom/autonavi/xmgd/navigator/d;

    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->e:Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->e:Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->a:Lcom/autonavi/xmgd/navigator/d;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->a:Lcom/autonavi/xmgd/navigator/d;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/d;->getGroupCount()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    sget v2, Lcom/autonavi/xmgd/navigator/CitySelect;->c:I

    if-lt v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/a;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/a;-><init>(Lcom/autonavi/xmgd/navigator/CitySelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/b;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/b;-><init>(Lcom/autonavi/xmgd/navigator/CitySelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/c;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/c;-><init>(Lcom/autonavi/xmgd/navigator/CitySelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-void

    :cond_0
    sget v0, Lcom/autonavi/xmgd/navigator/CitySelect;->c:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/CitySelect;)[Lcom/autonavi/xm/navigation/server/poi/GAdarea;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/CitySelect;->d:[Lcom/autonavi/xm/navigation/server/poi/GAdarea;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/CitySelect;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/CitySelect;->setContentView(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/CitySelect;->a()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/CitySelect;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
