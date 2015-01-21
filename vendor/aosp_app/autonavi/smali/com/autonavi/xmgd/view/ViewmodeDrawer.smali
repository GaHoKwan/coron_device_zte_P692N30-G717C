.class public Lcom/autonavi/xmgd/view/ViewmodeDrawer;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private itemMargin:I

.field private item_AR_Margin:I

.field private mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

.field private mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

.field private mMode_3D:Lcom/autonavi/xmgd/view/GDImageButton;

.field private mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

.field private mMode_Car:Lcom/autonavi/xmgd/view/GDImageButton;

.field private mMode_North:Lcom/autonavi/xmgd/view/GDImageButton;

.field private mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

.field private mPopDrawer:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->itemMargin:I

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->item_AR_Margin:I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->itemMargin:I

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->item_AR_Margin:I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->itemMargin:I

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->item_AR_Margin:I

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getCurrentViewNum()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_North:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Car:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_3D:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f030068

    invoke-virtual {v1, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->itemMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->item_AR_Margin:I

    const v0, 0x7f0c01c0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    const/high16 v2, 0x7f0b

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0c01bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_North:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_North:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c01bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Car:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Car:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c01be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_3D:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_3D:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c01bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/view/GDImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private openViewModeDrawer()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->item_AR_Margin:I

    :cond_0
    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->itemMargin:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->getCurrentViewNum()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v1}, Lcom/autonavi/xmgd/view/GDImageButton;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getCurrentViewMode()Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->hide()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;->onChangedToNorth()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;->onChangedToCar()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;->onChangedTo3D()V

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iput-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    invoke-interface {v0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;->onChangedToAR()V

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mPopDrawer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->openViewModeDrawer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c01bc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mListener:Lcom/autonavi/xmgd/view/ViewmodeDrawer$IViewModeDrawerListener;

    return-void
.end method

.method public setViewMode(Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;)V
    .locals 2

    iput-object p1, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mCurrentViewMode:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "setViewMode \u9519\u8bef\u7684ViewMode!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewVisibility(Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;I)V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_NORTH:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_North:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_CAR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Car:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_3D:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_3D:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;->ViewmodeDrawer_AR:Lcom/autonavi/xmgd/view/ViewmodeDrawer$ViewMode;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_AR:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0, p2}, Lcom/autonavi/xmgd/view/GDImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "setViewVisibility \u9519\u8bef\u7684ViewMode!"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/view/ViewmodeDrawer;->mMode_Show:Lcom/autonavi/xmgd/view/GDImageButton;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/view/GDImageButton;->show()V

    return-void
.end method
