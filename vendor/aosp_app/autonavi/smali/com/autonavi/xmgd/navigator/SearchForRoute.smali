.class public Lcom/autonavi/xmgd/navigator/SearchForRoute;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/ImageButton;

.field private E:Z

.field private F:Z

.field private G:Lcom/autonavi/xmgd/navigator/hu;

.field private a:Landroid/view/View;

.field private b:Lcom/autonavi/xmgd/controls/q;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/autonavi/xmgd/navigator/hv;

.field private e:Landroid/view/View;

.field private f:Lcom/autonavi/xmgd/controls/q;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/autonavi/xmgd/navigator/hv;

.field private i:Landroid/view/View;

.field private j:Lcom/autonavi/xmgd/controls/a;

.field private k:Landroid/widget/ExpandableListView;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/controls/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

.field private n:Lcom/autonavi/xmgd/controls/c;

.field private o:Lcom/autonavi/xmgd/naviservice/e;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/EditText;

.field private r:Ljava/lang/String;

.field private s:Lcom/autonavi/xmgd/view/GDImageButton;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/support/v4/view/ViewPager;

.field private y:Lcom/autonavi/xmgd/controls/t;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->E:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->F:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Lcom/autonavi/xmgd/controls/c;)Lcom/autonavi/xmgd/controls/c;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->n:Lcom/autonavi/xmgd/controls/c;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v0, 0x7f0c0145

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->s:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->s:Lcom/autonavi/xmgd/view/GDImageButton;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hm;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hm;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0144

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hn;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hn;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ho;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ho;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/autonavi/xmgd/controls/t;

    invoke-direct {v1, v0}, Lcom/autonavi/xmgd/controls/t;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->y:Lcom/autonavi/xmgd/controls/t;

    new-array v1, v6, [I

    const v0, 0x7f07006b

    aput v0, v1, v4

    const v0, 0x7f07006c

    aput v0, v1, v3

    const v0, 0x7f07006d

    aput v0, v1, v5

    const v0, 0x7f0c0146

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->z:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->z:Landroid/widget/Button;

    aget v2, v1, v4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->z:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/xmgd/navigator/hp;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/hp;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0147

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->A:Landroid/widget/Button;

    aget v2, v1, v3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->A:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/xmgd/navigator/hq;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/hq;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0148

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->B:Landroid/widget/Button;

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->B:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hr;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hr;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->y:Lcom/autonavi/xmgd/controls/t;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hs;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hs;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0c014a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ht;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ht;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0c014c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->p:Landroid/widget/TextView;

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/q;->c()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    const/4 v6, 0x2

    const v5, 0x7f08000c

    const v4, 0x7f08000b

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->z:Landroid/widget/Button;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->A:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->B:Landroid/widget/Button;

    if-ne p1, v6, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->z:Landroid/widget/Button;

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->A:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->B:Landroid/widget/Button;

    if-ne p1, v6, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

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

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchForRoute;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchForRoute;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030051

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a:Landroid/view/View;

    const v1, 0x7f0c0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    new-instance v0, Lcom/autonavi/xmgd/controls/q;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hf;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hf;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    const-string v2, "history_dest"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/controls/q;-><init>(Lcom/autonavi/xmgd/controls/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b:Lcom/autonavi/xmgd/controls/q;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b:Lcom/autonavi/xmgd/controls/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/q;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f030008

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c0018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/autonavi/xmgd/navigator/hg;

    invoke-direct {v3, p0, v2}, Lcom/autonavi/xmgd/navigator/hg;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/navigator/hv;

    invoke-direct {v0, p0, p0, v1}, Lcom/autonavi/xmgd/navigator/hv;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->d:Lcom/autonavi/xmgd/navigator/hv;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->d:Lcom/autonavi/xmgd/navigator/hv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hh;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hh;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030050

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->e:Landroid/view/View;

    const v1, 0x7f0c014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/autonavi/xmgd/controls/q;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hi;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hi;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    const-string v2, "history_cross"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/controls/q;-><init>(Lcom/autonavi/xmgd/controls/r;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f:Lcom/autonavi/xmgd/controls/q;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f:Lcom/autonavi/xmgd/controls/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/q;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f030008

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c0018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/autonavi/xmgd/navigator/hj;

    invoke-direct {v3, p0, v2}, Lcom/autonavi/xmgd/navigator/hj;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/autonavi/xmgd/navigator/hv;

    invoke-direct {v0, p0, p0, v1}, Lcom/autonavi/xmgd/navigator/hv;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->h:Lcom/autonavi/xmgd/navigator/hv;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->h:Lcom/autonavi/xmgd/navigator/hv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hk;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hk;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f03004f

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->i:Landroid/view/View;

    const v1, 0x7f0c014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->k:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/autonavi/xmgd/controls/a;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/controls/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->j:Lcom/autonavi/xmgd/controls/a;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->k:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->j:Lcom/autonavi/xmgd/controls/a;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->k:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->k:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->k:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hl;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hl;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->e()V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->c(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b:Lcom/autonavi/xmgd/controls/q;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/q;->a(Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g()V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/ab;->g(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    const-class v1, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/s;->a(Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f:Lcom/autonavi/xmgd/controls/q;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/q;->a(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f()V

    return-void
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/view/GDImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->s:Lcom/autonavi/xmgd/view/GDImageButton;

    return-object v0
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mKeyWord"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mSearchType"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->x:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mAdmincode"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mCurrentAroundClass"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->n:Lcom/autonavi/xmgd/controls/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mLon"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mLat"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isBtnVoiceEnable"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->E:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/controls/q;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->b:Lcom/autonavi/xmgd/controls/q;

    return-object v0
.end method

.method static synthetic j(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/navigator/hv;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->d:Lcom/autonavi/xmgd/navigator/hv;

    return-object v0
.end method

.method static synthetic k(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic l(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/controls/q;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->f:Lcom/autonavi/xmgd/controls/q;

    return-object v0
.end method

.method static synthetic m(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Lcom/autonavi/xmgd/navigator/hv;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->h:Lcom/autonavi/xmgd/navigator/hv;

    return-object v0
.end method

.method static synthetic n(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic o(Lcom/autonavi/xmgd/navigator/SearchForRoute;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/xmgd/controls/GDActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/q;->c()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "bundle"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "searchType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    const-string v3, "admincode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    const-string v3, "lon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->u:I

    const-string v3, "lat"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->v:I

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->o()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "mKeyWord"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->r:Ljava/lang/String;

    const-string v3, "mSearchType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->w:I

    const-string v3, "mAdmincode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->t:I

    const-string v3, "mLon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->u:I

    const-string v3, "mLat"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->v:I

    const-string v3, "isBtnVoiceEnable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->E:Z

    :cond_2
    const v0, 0x7f0c0143

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v3, 0x7f070010

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    invoke-static {}, Lcom/autonavi/xmgd/application/NaviApplication;->getPluginExist_Voice()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDTitle;->getRightView()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    const v3, 0x7f020082

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->E:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->D:Landroid/widget/ImageButton;

    new-instance v3, Lcom/autonavi/xmgd/navigator/he;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/he;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/aa;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/aa;->b:Lcom/autonavi/xmgd/plugin/PluginWrapper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/plugin/PluginWrapper;->getPlugin()Lcom/autonavi/xmgd/plugin/interfaces/IPlugin;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    new-instance v4, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v4}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iput-boolean v2, v4, Lcom/autonavi/xmgd/controls/c;->a:Z

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-interface {v0, v5}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getTitle(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iput v1, v4, Lcom/autonavi/xmgd/controls/c;->e:I

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getSubListSize()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {v0, v10}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getSubTitles(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getSubIcons()[Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v0}, Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;->getSubListSize()I

    move-result v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_7

    new-instance v8, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v8}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iput-boolean v1, v8, Lcom/autonavi/xmgd/controls/c;->a:Z

    if-eqz v5, :cond_4

    aget-object v9, v5, v0

    iput-object v9, v8, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    :cond_4
    iput v1, v8, Lcom/autonavi/xmgd/controls/c;->e:I

    if-eqz v6, :cond_5

    aget-object v9, v6, v0

    iput-object v9, v8, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    :cond_5
    iput-object v10, v8, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iput-object v10, v8, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    iget-object v9, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput-object v10, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->o:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->e(I)Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget v3, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->lNumberOfCategory:I

    :goto_3
    if-ge v2, v3, :cond_d

    new-instance v4, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v4}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iput-boolean v1, v4, Lcom/autonavi/xmgd/controls/c;->a:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->szName:Ljava/lang/String;

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->lCategoryID:I

    iput v0, v4, Lcom/autonavi/xmgd/controls/c;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v5

    iget-object v5, v5, Lcom/autonavi/xmgd/application/Resource;->mAroundIconPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "aroundIcon"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_0.png"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->loadAssetsImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->c:Landroid/graphics/Bitmap;

    iput-object v10, v4, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v0, v0, v2

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->nNumberOfSubCategory:S

    if-lez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    move v0, v1

    :goto_4
    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v5, v5, v2

    iget-short v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->nNumberOfSubCategory:S

    if-ge v0, v5, :cond_c

    iget-object v5, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->pSubCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->szName:Ljava/lang/String;

    const-string v6, "\u7968\u52a1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "\u7968\u52d9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Ticket Office"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "\u5178\u5f53\u62cd\u5356"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "\u5178\u7576\u62cd\u8ce3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Pawn Auction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    new-instance v5, Lcom/autonavi/xmgd/controls/c;

    invoke-direct {v5}, Lcom/autonavi/xmgd/controls/c;-><init>()V

    iput-boolean v1, v5, Lcom/autonavi/xmgd/controls/c;->a:Z

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->pSubCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->szName:Ljava/lang/String;

    iput-object v6, v5, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->m:Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategoryList;->pCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->pSubCategory:[Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiCategory;->lCategoryID:I

    iput v6, v5, Lcom/autonavi/xmgd/controls/c;->e:I

    iput-object v10, v5, Lcom/autonavi/xmgd/controls/c;->d:Lcom/autonavi/xmgd/plugin/interfaces/ICustomizedAroundPlugin;

    iput-object v10, v5, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iput-object v10, v4, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->a()V

    new-instance v0, Lcom/autonavi/xmgd/navigator/hu;

    invoke-direct {v0, p0, v10}, Lcom/autonavi/xmgd/navigator/hu;-><init>(Lcom/autonavi/xmgd/navigator/SearchForRoute;Lcom/autonavi/xmgd/navigator/he;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->G:Lcom/autonavi/xmgd/navigator/hu;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.plugin.installapk.speechcommand.sendaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->G:Lcom/autonavi/xmgd/navigator/hu;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->G:Lcom/autonavi/xmgd/navigator/hu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->G:Lcom/autonavi/xmgd/navigator/hu;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->F:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchForRoute;->F:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->startActivity(Landroid/content/Intent;)V
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

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchForRoute;->g()V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
