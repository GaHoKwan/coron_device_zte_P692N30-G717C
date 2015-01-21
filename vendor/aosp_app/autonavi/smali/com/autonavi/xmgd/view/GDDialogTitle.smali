.class public Lcom/autonavi/xmgd/view/GDDialogTitle;
.super Landroid/widget/FrameLayout;


# instance fields
.field private right:Lcom/autonavi/xmgd/view/GDImageButton;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/xmgd/view/GDDialogTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/xmgd/view/GDDialogTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/GDDialogTitle;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c003a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->title:Landroid/widget/TextView;

    const v0, 0x7f0c003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->right:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/view/GDDialogTitle;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getRightView()Lcom/autonavi/xmgd/view/GDImageButton;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->right:Lcom/autonavi/xmgd/view/GDImageButton;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/GDDialogTitle;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
