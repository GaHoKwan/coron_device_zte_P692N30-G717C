.class public Lcom/autonavi/xmgd/navigator/NaviSetting;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field private a:Lcom/autonavi/xmgd/navigator/fh;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private e:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private f:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private g:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private h:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private i:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private j:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ImageButton;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Lcom/autonavi/xmgd/naviservice/m;

.field private t:Z

.field private u:[Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    iput v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    iput v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->p:I

    iput v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->q:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->r:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 7

    const v6, 0x7f070126

    const v5, 0x7f070125

    const v4, 0x7f070124

    const v3, 0x7f070122

    const v2, 0x7f07011f

    new-instance v0, Lcom/autonavi/xmgd/navigator/ei;

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ei;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200ed

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->d:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    new-instance v0, Lcom/autonavi/xmgd/navigator/es;

    invoke-static {p0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/es;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200ec

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->e:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    new-instance v0, Lcom/autonavi/xmgd/navigator/ez;

    invoke-static {p0, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ez;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200eb

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->f:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    new-instance v0, Lcom/autonavi/xmgd/navigator/fa;

    invoke-static {p0, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fa;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e2

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/fb;

    invoke-static {p0, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fb;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e3

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/fc;

    const v1, 0x7f070131

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fc;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200f3

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/fd;

    const v1, 0x7f070127

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fd;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200f4

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->g:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/navigator/fe;

    const v1, 0x7f070128

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fe;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200f1

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->h:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/navigator/ff;

    const v1, 0x7f070129

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ff;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e7

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/ej;

    const v1, 0x7f07012a

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ej;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200ea

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->i:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    new-instance v0, Lcom/autonavi/xmgd/navigator/ek;

    const v1, 0x7f07012b

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/ek;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e4

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->j:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    new-instance v0, Lcom/autonavi/xmgd/navigator/el;

    const v1, 0x7f07012d

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/el;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e9

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/navigator/em;

    const v1, 0x7f07012e

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/em;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Ljava/lang/String;)V

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setTitleId(I)V

    const v1, 0x7f0200e5

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->loadImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->a:Lcom/autonavi/xmgd/navigator/fh;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/navigator/fh;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/NaviSetting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/NaviSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->p:I

    return p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->setContentView(I)V

    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDTitle;->getRightView()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->o:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->o:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->o:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/autonavi/xmgd/navigator/en;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/en;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0180

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->b:Landroid/widget/ListView;

    new-instance v0, Lcom/autonavi/xmgd/navigator/fh;

    invoke-direct {v0, p0, p0}, Lcom/autonavi/xmgd/navigator/fh;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->a:Lcom/autonavi/xmgd/navigator/fh;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->a:Lcom/autonavi/xmgd/navigator/fh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->b:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/eo;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/eo;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->u:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    if-ltz v3, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-char v3, v2, v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->u:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->u:[Z

    aput-boolean v1, v3, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/NaviSetting;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/NaviSetting;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->q:I

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/NaviSetting;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b()V

    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/NaviSetting;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->p:I

    return v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/NaviSetting;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    return v0
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->d:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->e:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic i(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->i:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic j(Lcom/autonavi/xmgd/navigator/NaviSetting;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    return v0
.end method

.method static synthetic k(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->f:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic l(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->g:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic m(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->h:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic n(Lcom/autonavi/xmgd/navigator/NaviSetting;)Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->j:Lcom/autonavi/xmgd/view/GDSystemConfigMenuItem;

    return-object v0
.end method

.method static synthetic o(Lcom/autonavi/xmgd/navigator/NaviSetting;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    return v0
.end method

.method static synthetic p(Lcom/autonavi/xmgd/navigator/NaviSetting;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->q:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/plugin/PluginManager;->shareInstance()Lcom/autonavi/xmgd/plugin/PluginManager;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/plugin/PluginManager;->queryPlugin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->load(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v5, Lcom/autonavi/xmgd/controls/aa;

    invoke-direct {v5, v1, v0}, Lcom/autonavi/xmgd/controls/aa;-><init>(ILcom/autonavi/xmgd/plugin/PluginWrapper;)V

    iget-object v0, v5, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getSettingNum()I

    move-result v6

    if-gt v1, v6, :cond_2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "plugin"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "seting number"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->a()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v1, "selectItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->p:I

    const-string v1, "mPluginIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    const-string v1, "check"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->q:I

    :cond_4
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/navigator/fg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/navigator/fg;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Lcom/autonavi/xmgd/navigator/ei;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->s:Lcom/autonavi/xmgd/naviservice/m;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->s:Lcom/autonavi/xmgd/naviservice/m;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->a(Lcom/autonavi/xmgd/naviservice/m;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f070017

    const v6, 0x7f070016

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ep;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ep;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v4, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070015

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->a:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/eq;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/eq;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07011f

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->b:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/er;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/er;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070122

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->c:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    iput v4, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    :cond_0
    :goto_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/et;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/et;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070124

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    iput v5, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->f:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    if-nez v0, :cond_4

    iput v4, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    :goto_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/eu;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/eu;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070127

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :cond_4
    iput v3, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->g:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ev;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ev;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070128

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->h:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/l;->f()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v2, Lcom/autonavi/xmgd/navigator/ew;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/ew;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v1, p0, v3, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v1, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07012a

    invoke-static {v2, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->l:I

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_8
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    sget v1, Lcom/autonavi/xmgd/naviservice/l;->i:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ex;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ex;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07012b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/aa;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "seting number"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->setSettingNum(I)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getIndex()I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getDialogType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->u:[Z

    :cond_6
    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-direct {p0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->b(I)V

    :cond_7
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v2, Lcom/autonavi/xmgd/navigator/ey;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/xmgd/navigator/ey;-><init>(Lcom/autonavi/xmgd/navigator/NaviSetting;Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;)V

    invoke-direct {v1, p0, v3, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getDialogType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewType(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getSettingTitle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getItemValuesArray(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setListViewContent([Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/IPrefernceSettingItemPlugin;->getDialogType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->u:[Z

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setDefaultSelectedStatus([Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->k:I

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setInitWhichIsChose(I)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "plugin"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/aa;

    iget-object v3, v0, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    iget v0, v0, Lcom/autonavi/xmgd/controls/aa;->a:I

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->unload(I)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->s:Lcom/autonavi/xmgd/naviservice/m;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/l;->a()Lcom/autonavi/xmgd/naviservice/l;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->s:Lcom/autonavi/xmgd/naviservice/m;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/l;->b(Lcom/autonavi/xmgd/naviservice/m;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->r:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->r:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/NaviSetting;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/NaviSetting;->startActivity(Landroid/content/Intent;)V
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
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "selectItem"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mPluginIndex"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "check"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/NaviSetting;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
