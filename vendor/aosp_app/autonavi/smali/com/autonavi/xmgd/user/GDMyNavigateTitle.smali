.class public Lcom/autonavi/xmgd/user/GDMyNavigateTitle;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mLeft:Landroid/widget/ImageButton;

.field private mRight:Landroid/widget/TextView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mLeft:Landroid/widget/ImageButton;

    const v0, 0x7f0c00f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mRight:Landroid/widget/TextView;

    const v0, 0x7f0c008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mLeft:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mLeft:Landroid/widget/ImageButton;

    new-instance v2, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;

    invoke-direct {v2, p0, p1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle$1;-><init>(Lcom/autonavi/xmgd/user/GDMyNavigateTitle;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLeftView()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mLeft:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getRightView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mRight:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDMyNavigateTitle;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
