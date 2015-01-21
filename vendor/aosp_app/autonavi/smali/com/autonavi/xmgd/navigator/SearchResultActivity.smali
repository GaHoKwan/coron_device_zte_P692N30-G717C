.class public Lcom/autonavi/xmgd/navigator/SearchResultActivity;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Lcom/autonavi/xmgd/c/h;
.implements Lcom/autonavi/xmgd/naviservice/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/xmgd/controls/GDActivity;",
        "Lcom/autonavi/xmgd/naviservice/g;",
        "Lcom/autonavi/xmgd/c/h",
        "<",
        "Lcom/autonavi/xmgd/c/k;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/autonavi/xmgd/c/i;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Landroid/widget/Button;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/Button;

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Lcom/autonavi/xmgd/naviservice/e;

.field private O:Z

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/autonavi/xmgd/controls/t;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/autonavi/xmgd/controls/c;

.field private f:Lcom/autonavi/xmgd/controls/c;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Button;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ExpandableListView;

.field private p:Lcom/autonavi/xmgd/controls/x;

.field private q:Landroid/widget/TextView;

.field private r:[Lcom/autonavi/xmgd/e/k;

.field private s:Z

.field private t:I

.field private u:Landroid/view/View;

.field private v:Lcom/autonavi/xmgd/view/GDPageableListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/xmgd/view/GDPageableListView",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/autonavi/xmgd/controls/u;

.field private x:Lcom/autonavi/xmgd/c/l;

.field private y:Landroid/widget/TextView;

.field private z:[Lcom/autonavi/xmgd/c/k;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    iput v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->j:I

    iput v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k:I

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->m:I

    iput-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s:Z

    iput v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t:I

    iput-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    iput-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->J:I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->O:Z

    return-void
.end method

.method static synthetic A(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;Lcom/autonavi/xmgd/controls/c;)Lcom/autonavi/xmgd/controls/c;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f:Lcom/autonavi/xmgd/controls/c;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-array v0, v5, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v1, v1, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    move-object v1, v0

    :cond_1
    :goto_0
    const v0, 0x7f0c0156

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03005b

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    new-instance v1, Lcom/autonavi/xmgd/navigator/if;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/if;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->b()V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/CharSequence;

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    const v5, 0x7f08000c

    const v4, 0x7f08000b

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c:Landroid/widget/Button;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c:Landroid/widget/Button;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->l:Z

    return p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/SearchResultActivity;[Lcom/autonavi/xmgd/c/k;)[Lcom/autonavi/xmgd/c/k;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    return-object p1
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    return v0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->m:I

    return p1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f030056

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    const v1, 0x7f0c0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ig;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ig;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    const v1, 0x7f070080

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    const v1, 0x7f0c015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    const v1, 0x7f0c0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->H:Landroid/widget/TextView;

    new-instance v0, Lcom/autonavi/xmgd/controls/x;

    invoke-direct {v0}, Lcom/autonavi/xmgd/controls/x;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/controls/x;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ih;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ih;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/x;->a(Lcom/autonavi/xmgd/controls/i;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    const v1, 0x7f0c015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ii;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ii;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->o:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ij;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ij;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    const v1, 0x7f0c0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->I:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->I:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ik;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ik;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    iget v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/SearchResultActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    return p1
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/i;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v0, 0x7f030057

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u:Landroid/view/View;

    const v1, 0x7f0c0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f07007d

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "0/0"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance v0, Lcom/autonavi/xmgd/controls/u;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/controls/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hy;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hy;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/controls/u;->a(Lcom/autonavi/xmgd/controls/i;)V

    const/16 v0, 0x1b59

    invoke-static {v0}, Lcom/autonavi/xmgd/c/l;->a(I)Lcom/autonavi/xmgd/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/l;->a(Lcom/autonavi/xmgd/c/h;)V

    const/16 v0, 0x1b8c

    invoke-static {v0}, Lcom/autonavi/xmgd/c/i;->a(I)Lcom/autonavi/xmgd/c/i;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/i;->a(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u:Landroid/view/View;

    const v1, 0x7f0c0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDPageableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDPageableListView;->setAdapter(Lcom/autonavi/xmgd/controls/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v6}, Lcom/autonavi/xmgd/view/GDPageableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v5}, Lcom/autonavi/xmgd/view/GDPageableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    new-instance v1, Lcom/autonavi/xmgd/navigator/hz;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/hz;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDPageableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u:Landroid/view/View;

    const v1, 0x7f0c0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->D:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/ia;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/ia;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->D:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/SearchResultActivity;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t:I

    return p1
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->showDialog(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->b(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/naviservice/e;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    invoke-direct {v1, v0, v2}, Lcom/autonavi/xm/navigation/server/GCoord;-><init>(II)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget v0, v0, Lcom/autonavi/xmgd/controls/c;->e:I

    :cond_3
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xm/navigation/server/GCoord;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/u;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mIsFirst"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mSearchLocalResult"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mIsSearchLocalFinish"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mListPosition"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mSearchNetResult"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mCurrentScreen"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mIsNeedSearch"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "mKeyWord"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mSearchType"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mAroundClass"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mCurrentAroundClass"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f:Lcom/autonavi/xmgd/controls/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mCurrentSelectedItem"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mSortType"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mSearchResultInfoList"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mNetCatoryString"

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isBtnsearchByNetAllCountyVisible"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/controls/ab;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    return v0
.end method

.method static synthetic g(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    return v0
.end method

.method static synthetic h(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/view/GDPageableListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    return-object v0
.end method

.method static synthetic k(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/c/l;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    return-object v0
.end method

.method static synthetic l(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/naviservice/e;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    return-object v0
.end method

.method static synthetic m(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f:Lcom/autonavi/xmgd/controls/c;

    return-object v0
.end method

.method static synthetic n(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->m:I

    return v0
.end method

.method static synthetic o(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/c;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    return-object v0
.end method

.method static synthetic r(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    return v0
.end method

.method static synthetic s(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic t(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->k:I

    return v0
.end method

.method static synthetic u(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic v(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/e/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    return-object v0
.end method

.method static synthetic w(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Lcom/autonavi/xmgd/controls/x;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    return-object v0
.end method

.method static synthetic x(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e()V

    return-void
.end method

.method static synthetic y(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)[Lcom/autonavi/xmgd/c/k;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    return-object v0
.end method

.method static synthetic z(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->D:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const v5, 0x7f07007d

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    iput-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/xmgd/controls/x;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s:Z

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->H:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    move-object v0, p1

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xmgd/controls/x;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/x;->notifyDataSetChanged()V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    move-object v0, p1

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->a([Lcom/autonavi/xmgd/e/k;)I

    :goto_1
    move-object v0, p1

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    iput-boolean v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s:Z

    invoke-virtual {p0, v3}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->removeDialog(I)V

    new-array v0, v3, [Ljava/lang/Object;

    check-cast p1, [Lcom/autonavi/xmgd/e/k;

    check-cast p1, [Lcom/autonavi/xmgd/e/k;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    move-object v0, p1

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->b([Lcom/autonavi/xmgd/e/k;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v1

    move-object v0, p1

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/naviservice/q;->a([Lcom/autonavi/xmgd/e/k;)I

    goto :goto_1
.end method

.method public citySearchResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/n;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public dataLoaded(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/c/k;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v5, 0x7f07007d

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ne p2, v3, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y:Landroid/widget/TextView;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "0/0"

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/xmgd/c/k;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/c/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/controls/u;->a([Lcom/autonavi/xmgd/c/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->w:Lcom/autonavi/xmgd/controls/u;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/u;->notifyDataSetChanged()V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/i;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/i;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/l;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/l;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->setContentView(I)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->c()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "mIsFirst"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    const-string v0, "mSearchLocalResult"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    const-string v0, "mIsSearchLocalFinish"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->s:Z

    const-string v0, "mListPosition"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->t:I

    const-string v0, "mSearchNetResult"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/c/k;

    check-cast v0, [Lcom/autonavi/xmgd/c/k;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->z:[Lcom/autonavi/xmgd/c/k;

    const-string v0, "mCurrentScreen"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->J:I

    const-string v0, "mIsNeedSearch"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->l:Z

    const-string v0, "mKeyWord"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    const-string v0, "mSearchType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const-string v0, "mAroundClass"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    const-string v0, "mCurrentAroundClass"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f:Lcom/autonavi/xmgd/controls/c;

    const-string v0, "mCurrentSelectedItem"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->m:I

    const-string v0, "mSortType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->i:I

    const-string v0, "mSearchResultInfoList"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->B:Ljava/util/ArrayList;

    const-string v0, "mLon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    const-string v0, "mLat"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    const-string v0, "isBtnsearchByNetAllCountyVisible"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->C:Z

    :cond_2
    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->b()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v0, "mKeyWord"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    const-string v0, "mSearchType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    const-string v0, "mCurrentAroundClass"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/controls/c;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->f:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->E:Ljava/lang/String;

    :cond_3
    const-string v0, "mLon"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    const-string v0, "mLat"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    if-nez v0, :cond_5

    :cond_4
    new-array v0, v5, [Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/j;->a()Lcom/autonavi/xmgd/naviservice/j;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/naviservice/j;->a([Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    iput v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->K:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/map/GMapCenterInfo;->CenterCoord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    iput v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->L:I

    :cond_5
    const v0, 0x7f0c0155

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-nez v2, :cond_8

    const v2, 0x7f07006b

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    :cond_6
    :goto_1
    const v0, 0x7f0c0158

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/xmgd/navigator/hx;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/hx;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0159

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/xmgd/navigator/id;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/id;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/n;->f()Lcom/autonavi/xmgd/naviservice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/naviservice/n;->g()Lcom/autonavi/xmgd/naviservice/e;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/naviservice/e;->a(Lcom/autonavi/xmgd/naviservice/g;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->u:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0c015a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/autonavi/xmgd/controls/t;

    invoke-direct {v0, v2}, Lcom/autonavi/xmgd/controls/t;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->b:Lcom/autonavi/xmgd/controls/t;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->b:Lcom/autonavi/xmgd/controls/t;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->J:I

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->J:I

    invoke-direct {p0, v0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/autonavi/xmgd/navigator/ie;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/ie;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    if-ne v0, v5, :cond_c

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->M:Z

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->g()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->g()V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDPageableListView;->setDataLoaderHandler(Lcom/autonavi/xmgd/c/g;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/c/i;->a(Lcom/autonavi/xmgd/c/h;)V

    :goto_2
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->d()V

    :goto_3
    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v2, v5, :cond_9

    const v2, 0x7f07006c

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    goto/16 :goto_1

    :cond_9
    iget v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    if-nez v2, :cond_a

    const v2, 0x7f07006d

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v2, v2, Lcom/autonavi/xmgd/controls/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDPageableListView;->setDataLoaderHandler(Lcom/autonavi/xmgd/c/g;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/c/l;->a(Lcom/autonavi/xmgd/c/h;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    array-length v0, v0

    :goto_4
    const v2, 0x7f07007d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->r:[Lcom/autonavi/xmgd/e/k;

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/xmgd/controls/x;->a([Lcom/autonavi/xmgd/e/k;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->p:Lcom/autonavi/xmgd/controls/x;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/x;->notifyDataSetChanged()V

    iget v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->G:I

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDPageableListView;->setDataLoaderHandler(Lcom/autonavi/xmgd/c/g;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->e()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/i;->a()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    if-lt v0, v2, :cond_d

    add-int/lit8 v0, v2, -0x1

    :cond_d
    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/c/i;->a(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/i;->h()V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDPageableListView;->setDataLoaderHandler(Lcom/autonavi/xmgd/c/g;)V

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->e()I

    move-result v0

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v2}, Lcom/autonavi/xmgd/c/l;->a()I

    move-result v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    if-lt v0, v2, :cond_f

    add-int/lit8 v0, v2, -0x1

    :cond_f
    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/view/GDPageableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->v:Lcom/autonavi/xmgd/view/GDPageableListView;

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/c/l;->a(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/c/l;->h()V

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/controls/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e:Lcom/autonavi/xmgd/controls/c;

    iget-object v0, v0, Lcom/autonavi/xmgd/controls/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->g:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v4, 0x2

    const-wide v10, 0x3fe4cccccccccccdL

    const-wide v8, 0x3fdccccccccccccdL

    const/4 v2, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-direct {v0, p0, v4, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070070

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v0, 0x3

    new-instance v3, Lcom/autonavi/xmgd/navigator/ib;

    invoke-direct {v3, p0}, Lcom/autonavi/xmgd/navigator/ib;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-direct {v1, p0, v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    const v0, 0x7f070082

    invoke-static {p0, v0}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030055

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f070081

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<font color=\'red\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v5

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/xmgd/naviservice/q;->c()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/autonavi/xmgd/naviservice/q;->b(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>\n\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=\'red\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->F:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>\n\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v7}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    const v0, 0x7f0c015d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Lcom/autonavi/xmgd/c/o;

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->B:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/autonavi/xmgd/c/o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/autonavi/xmgd/navigator/ic;

    invoke-direct {v4, p0}, Lcom/autonavi/xmgd/navigator/ic;-><init>(Lcom/autonavi/xmgd/navigator/SearchResultActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/autonavi/xmgd/c/o;->getCount()I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v4}, Lcom/autonavi/xmgd/utility/Tool;->dip2px(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v10

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v10

    double-to-int v0, v3

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCustomViewHeight(I)V

    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;->setPushCustomView(Landroid/view/View;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/autonavi/xmgd/c/o;->getCount()I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v4}, Lcom/autonavi/xmgd/utility/Tool;->dip2px(I)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v8

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double/2addr v3, v8

    double-to-int v0, v3

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCustomViewHeight(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->N:Lcom/autonavi/xmgd/naviservice/e;

    invoke-interface {v0, p0}, Lcom/autonavi/xmgd/naviservice/e;->b(Lcom/autonavi/xmgd/naviservice/g;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->x:Lcom/autonavi/xmgd/c/l;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/l;->b(Lcom/autonavi/xmgd/c/h;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->A:Lcom/autonavi/xmgd/c/i;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/i;->b(Lcom/autonavi/xmgd/c/h;)V

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->O:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->O:Z

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
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->startActivity(Landroid/content/Intent;)V
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

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/SearchResultActivity;->e()V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
