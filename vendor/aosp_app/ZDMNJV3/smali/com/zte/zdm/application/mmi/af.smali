.class public Lcom/zte/zdm/application/mmi/af;
.super Ljava/lang/Object;


# static fields
.field public static final a:D = 0.3125

.field public static final b:D = 0.4791666666666667

.field public static final c:D = 0.20833333333333334


# instance fields
.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    iput v0, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 10

    const-wide/high16 v3, 0x3f90

    const-wide/16 v5, 0x0

    iget v0, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget v1, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget v3, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fd4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 10

    const-wide/high16 v3, 0x3fa8

    const-wide/16 v5, 0x0

    iget v0, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget v1, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget v3, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v6, v6

    const-wide v8, 0x3fdeaaaaaaaaaaabL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private c(Landroid/widget/LinearLayout;)V
    .locals 10

    const-wide/high16 v3, 0x3fa8

    const-wide/16 v5, 0x0

    iget v0, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget v1, p0, Lcom/zte/zdm/application/mmi/af;->d:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    iget v3, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/zte/zdm/application/mmi/af;->e:I

    int-to-double v6, v6

    const-wide v8, 0x3fcaaaaaaaaaaaabL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_1

    const-string v0, "oriLayout is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/high16 v0, 0x7f0d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d0011

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0d0017

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/widget/LinearLayout;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/zte/zdm/application/mmi/af;->b(Landroid/widget/LinearLayout;)V

    :cond_3
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/zte/zdm/application/mmi/af;->c(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
