.class public Lcom/farben/faq/MainActivity;
.super Landroid/app/ActivityGroup;


# static fields
.field public static a:[I

.field public static final b:[Ljava/lang/String;

.field private static f:[Ljava/lang/Class;


# instance fields
.field private c:Landroid/widget/ViewFlipper;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/farben/faq/MainActivity;->a:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "MODE_HOME"

    aput-object v1, v0, v4

    const-string v1, "MODE_SEARCH"

    aput-object v1, v0, v5

    const-string v1, "MODE_TYPE"

    aput-object v1, v0, v6

    const-string v1, "MODE_FAVORITY"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "MODE_SETTING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/farben/faq/MainActivity;->b:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/farben/faq/ListActivity;

    aput-object v1, v0, v4

    const-class v1, Lcom/farben/faq/SearchKeyAct;

    aput-object v1, v0, v5

    const-class v1, Lcom/farben/faq/TypeListAct;

    aput-object v1, v0, v6

    const-class v1, Lcom/farben/faq/FavoritesActivity;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-class v2, Lcom/farben/faq/SuggestAct;

    aput-object v2, v0, v1

    sput-object v0, Lcom/farben/faq/MainActivity;->f:[Ljava/lang/Class;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x8t 0x7ft
        0x67t 0x0t 0x8t 0x7ft
        0x69t 0x0t 0x8t 0x7ft
        0x6bt 0x0t 0x8t 0x7ft
        0x6dt 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/MainActivity;->c:Landroid/widget/ViewFlipper;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/farben/faq/MainActivity;->e:I

    return v0
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/farben/faq/MainActivity;->f:[Ljava/lang/Class;

    aget-object v1, v1, p1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/farben/faq/MainActivity;->f:[Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/farben/faq/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    sget-object v2, Lcom/farben/faq/MainActivity;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/MainActivity;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    iget-object v1, p0, Lcom/farben/faq/MainActivity;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/farben/faq/MainActivity;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/farben/faq/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/MainActivity;->a(I)V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/farben/faq/MainActivity;->f:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Lcom/farben/faq/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/farben/faq/MainActivity;->d:I

    return v0
.end method

.method static synthetic b(Lcom/farben/faq/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/farben/faq/MainActivity;->e:I

    return-void
.end method

.method static synthetic c(Lcom/farben/faq/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/farben/faq/MainActivity;->d:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onBackPressed()V

    invoke-virtual {p0}, Lcom/farben/faq/MainActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0xb

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->setContentView(I)V

    invoke-static {}, Lcom/farben/faq/common/a;->a()V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_index"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_search"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_type"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_store"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_suggest"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/farben/faq/MainActivity;->c:Landroid/widget/ViewFlipper;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/farben/faq/MainActivity;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/farben/faq/MainActivity;->a(I)V

    return-void

    :cond_0
    sget-object v2, Lcom/farben/faq/MainActivity;->a:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/farben/faq/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/farben/faq/ao;

    invoke-direct {v3, p0}, Lcom/farben/faq/ao;-><init>(Lcom/farben/faq/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, Lcom/farben/faq/common/a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1, p0}, Lcom/farben/faq/common/a;->a(Landroid/view/MenuItem;Landroid/content/Context;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
