.class public Lcom/android/gallery3d/filtershow/PanelController;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/PanelController$ViewType;,
        Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;,
        Lcom/android/gallery3d/filtershow/PanelController$Panel;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static COMPONENT:I = 0x0

.field private static HORIZONTAL_MOVE:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/PanelController"

.field private static PANEL:I

.field private static VERTICAL_MOVE:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mCurrentPanel:Landroid/view/View;

.field private mDisableFilterButtons:Z

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private final mPanels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$Panel;",
            ">;"
        }
    .end annotation
.end field

.field private mRowPanel:Landroid/view/View;

.field private mSaveAndSetPreset:Z

.field private mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

.field private final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/gallery3d/filtershow/PanelController$ViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    .line 55
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    .line 56
    sput v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    .line 57
    sput v1, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mSaveAndSetPreset:Z

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    .line 307
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    .line 308
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    .line 309
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 310
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 311
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 312
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 313
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    return-object v0
.end method

.method private showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 592
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 593
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110006

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 594
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/PanelController$2;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 601
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 602
    return-void
.end method

.method private showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V
    .locals 4
    .parameter "curves"
    .parameter "anchor"

    .prologue
    .line 578
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 579
    .local v0, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110007

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 580
    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 588
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 589
    return-void
.end method


# virtual methods
.method public addComponent(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "aPanel"
    .parameter "component"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 332
    .local v0, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v2, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v3, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v2, p0, p2, v3}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addImageView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 342
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 343
    .local v0, imageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setPanelController(Lcom/android/gallery3d/filtershow/PanelController;)V

    .line 344
    return-void
.end method

.method public addPanel(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 320
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    new-instance v1, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method

.method public ensureFilter(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    .line 509
    .local v2, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 510
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    if-eqz v1, :cond_0

    .line 513
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 514
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 516
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 519
    .end local v0           #copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 523
    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 525
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 527
    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 531
    :cond_3
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 533
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 535
    :cond_4
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 537
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 539
    :cond_5
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 541
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 543
    :cond_6
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 545
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 547
    :cond_7
    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 549
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 551
    :cond_8
    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 553
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 555
    :cond_9
    if-nez v1, :cond_a

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 557
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 559
    :cond_a
    if-nez v1, :cond_b

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 562
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 564
    :cond_b
    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 566
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 568
    :cond_c
    if-nez v1, :cond_d

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 570
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    invoke-virtual {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 572
    :cond_d
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 574
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mSaveAndSetPreset:Z

    .line 575
    return-void
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public haveSavePreset(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 788
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mSaveAndSetPreset:Z

    .line 789
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    :cond_0
    const/4 v2, 0x1

    .line 383
    :goto_0
    return v2

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 367
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->showPreGeometry()V

    .line 370
    :cond_2
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mSaveAndSetPreset:Z

    if-eqz v2, :cond_3

    .line 371
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->deleteLast()I

    move-result v1

    .line 372
    .local v1, position:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 376
    .end local v1           #position:I
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 377
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 378
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v2, :cond_4

    .line 379
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 380
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    .line 381
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    :cond_4
    move v2, v3

    .line 383
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/PanelController$ViewType;

    .line 424
    .local v0, type:Lcom/android/gallery3d/filtershow/PanelController$ViewType;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->PANEL:I

    if-ne v1, v2, :cond_1

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$ViewType;->type()I

    move-result v1

    sget v2, Lcom/android/gallery3d/filtershow/PanelController;->COMPONENT:I

    if-ne v1, v2, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onNewValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->onNewValue(I)V

    .line 397
    return-void
.end method

.method public resetParameters()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableFilterButtons()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    .line 356
    :cond_1
    return-void
.end method

.method public setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 317
    return-void
.end method

.method public setCurrentPanel(Landroid/view/View;)V
    .locals 0
    .parameter "panel"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/filters/ImageFilter;Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .parameter "filter"
    .parameter "name"

    .prologue
    .line 496
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 497
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 498
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 500
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 503
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 504
    return-object p1
.end method

.method public setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "imageShow"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 419
    return-void
.end method

.method public setRowPanel(Landroid/view/View;)V
    .locals 0
    .parameter "rowPanel"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;

    .line 409
    return-void
.end method

.method public setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter "context"
    .parameter "utilityPanel"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    .line 413
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;-><init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    .line 415
    return-void
.end method

.method public showComponent(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const v10, 0x7f0b0039

    const/4 v9, 0x0

    const v8, 0x7f0b0034

    const/4 v7, 0x1

    .line 605
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 606
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 607
    .local v2, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    const/4 v5, -0x1

    sget v6, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 608
    .local v0, anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 609
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v5, :cond_0

    .line 610
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->select()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 611
    .local v1, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 615
    .end local v0           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v1           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v2           #current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b0043

    if-ne v5, v6, :cond_1

    .line 616
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 617
    .local v3, curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, v3, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCurvesPopupMenu(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    .line 785
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    :goto_0
    return-void

    .line 621
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b0042

    if-ne v5, v6, :cond_2

    .line 622
    check-cast p1, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/PanelController;->showCropPopupMenu(Lcom/android/gallery3d/filtershow/ui/FramedTextButton;)V

    goto :goto_0

    .line 626
    .restart local p1
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v5, :cond_3

    .line 627
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->unselect()V

    .line 629
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideAspectButtons()V

    .line 630
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->hideCurvesButtons()V

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 784
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    goto :goto_0

    .line 633
    :pswitch_1
    const v5, 0x7f0b003c

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 634
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    .line 637
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    if-nez v5, :cond_4

    .line 638
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->disableFilterButtons()V

    .line 639
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mDisableFilterButtons:Z

    goto :goto_1

    .line 644
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_2
    const v5, 0x7f0b0035

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 645
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01bc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 646
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 648
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateCurrentValue()V

    goto :goto_1

    .line 652
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_3
    const v5, 0x7f0b0036

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 653
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 654
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 655
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 656
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iget-boolean v5, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    if-eqz v5, :cond_5

    .line 657
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 658
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    iput-boolean v9, v5, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 660
    :cond_5
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 664
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_4
    const v5, 0x7f0b0037

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 665
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01be

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 668
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateCurrentValue()V

    goto/16 :goto_1

    .line 672
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_5
    const v5, 0x7f0b0038

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 673
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01bf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 674
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 675
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    goto/16 :goto_1

    .line 679
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 680
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01ba

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 681
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 686
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 687
    .restart local v3       #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 689
    .restart local v4       #ename:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setFilterName(Ljava/lang/String;)V

    .line 690
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 691
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 692
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showCurvesButtons()V

    .line 693
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 694
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    .end local v3           #curves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_8
    const v5, 0x7f0b003b

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 699
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 705
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 706
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 707
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 713
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 714
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 719
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 720
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 721
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 727
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 728
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 729
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v9}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 730
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 734
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 735
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 736
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 741
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 742
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 743
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 748
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 749
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 750
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 755
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 756
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01b8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 762
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 763
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c01bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 764
    .restart local v4       #ename:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setEffectName(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/PanelController;->ensureFilter(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    .end local v4           #ename:Ljava/lang/String;
    :pswitch_12
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->showAspectButtons()V

    goto/16 :goto_1

    .line 773
    :pswitch_13
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v5

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    if-eqz v5, :cond_6

    .line 774
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto/16 :goto_1

    .line 776
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    instance-of v5, v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    if-eqz v5, :cond_7

    .line 777
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 779
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    goto/16 :goto_1

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0042
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_6
        :pswitch_9
        :pswitch_10
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public showCurrentPanel()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showPanel(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->select()V

    goto :goto_0
.end method

.method public showDefaultImageView()V
    .locals 2

    .prologue
    .line 445
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController;->showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 447
    return-void
.end method

.method public showImageView(I)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    .locals 4
    .parameter "id"

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, image:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 434
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 435
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 436
    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    goto :goto_0

    .line 438
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 441
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method public showPanel(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 451
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mSaveAndSetPreset:Z

    .line 453
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 454
    const/4 v6, 0x0

    .line 455
    .local v6, removedUtilityPanel:Z
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 456
    .local v3, current:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->selected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->unselect()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 458
    .local v1, anim1:Landroid/view/ViewPropertyAnimator;
    const/4 v6, 0x1

    .line 459
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 460
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_0

    .line 461
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v3, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 462
    .local v2, anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 463
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 467
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    if-ne v7, p1, :cond_1

    .line 489
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/PanelController;->mPanels:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/PanelController$Panel;

    .line 472
    .local v5, panel:Lcom/android/gallery3d/filtershow/PanelController$Panel;
    if-nez v6, :cond_4

    .line 473
    const/4 v4, -0x1

    .line 474
    .local v4, currentPos:I
    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v4

    .line 477
    :cond_2
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v5, v4, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 478
    .restart local v1       #anim1:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 479
    if-eqz v3, :cond_3

    .line 480
    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->getPosition()I

    move-result v7

    sget v8, Lcom/android/gallery3d/filtershow/PanelController;->HORIZONTAL_MOVE:I

    invoke-virtual {v3, v7, v8}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselect(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 481
    .restart local v2       #anim2:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 487
    .end local v1           #anim1:Landroid/view/ViewPropertyAnimator;
    .end local v2           #anim2:Landroid/view/ViewPropertyAnimator;
    .end local v4           #currentPos:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController;->showDefaultImageView()V

    .line 488
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController;->mCurrentPanel:Landroid/view/View;

    goto :goto_0

    .line 484
    :cond_4
    sget v7, Lcom/android/gallery3d/filtershow/PanelController;->VERTICAL_MOVE:I

    invoke-virtual {v5, v9, v7}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->select(II)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 485
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method public showParameter(Z)V
    .locals 1
    .parameter "s"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController;->mUtilityPanel:Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 401
    return-void
.end method
