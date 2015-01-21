.class public Lzte/com/cn/driverMode/ui/DMGridActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Ljava/util/List;

.field private c:Lzte/com/cn/driverMode/ui/ef;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMGridActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->a:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMGridActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->setContentView(I)V

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->a:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->b:Ljava/util/List;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->h:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/driverMode/service/ce;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->b:Ljava/util/List;

    new-instance v0, Lzte/com/cn/driverMode/ui/ef;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->c:Lzte/com/cn/driverMode/ui/ef;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->c:Lzte/com/cn/driverMode/ui/ef;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/ef;->a(Ljava/util/List;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->c:Lzte/com/cn/driverMode/ui/ef;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMGridActivity;->a:Landroid/widget/GridView;

    new-instance v1, Lzte/com/cn/driverMode/ui/as;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/as;-><init>(Lzte/com/cn/driverMode/ui/DMGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
