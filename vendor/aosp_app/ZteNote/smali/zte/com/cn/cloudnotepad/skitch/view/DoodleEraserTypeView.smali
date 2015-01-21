.class public Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.source "DoodleEraserTypeView.java"


# static fields
.field protected static INNER_MARGIN:I

.field private static PADDING:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPaintTool:Landroid/widget/ImageView;

.field private final mResIds:[I

.field private mViewOnClickListener:Landroid/view/View$OnClickListener;

.field private final mWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0xd

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->PADDING:I

    .line 13
    const/16 v0, 0xf

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->INNER_MARGIN:I

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x3

    .line 23
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 41
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mResIds:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 45
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mWidths:[I

    .line 84
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView$1;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->init()V

    .line 26
    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;Landroid/widget/ImageView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    return-void
.end method

.method private addImageView(II)V
    .locals 6
    .parameter "resId"
    .parameter "width"

    .prologue
    const v4, 0x7f080012

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x3f80

    .line 68
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 70
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->INNER_MARGIN:I

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->INNER_MARGIN:I

    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->INNER_MARGIN:I

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->INNER_MARGIN:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    const v2, 0x7f02003a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->addView(Landroid/view/View;)V

    .line 78
    int-to-float v2, p2

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getDoodleEraserWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 79
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    .line 80
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mCurrentPaintTool:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    .line 82
    :cond_0
    return-void
.end method

.method private findResIdByWidth(I)I
    .locals 3
    .parameter "width"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mWidths:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mResIds:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_1
    return v1

    .line 50
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mWidths:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 51
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mResIds:[I

    aget v1, v1, v0

    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 29
    const v1, 0x7f020033

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setBackgroundResource(I)V

    .line 30
    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->PADDING:I

    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->PADDING:I

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->PADDING:I

    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->PADDING:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setPadding(IIII)V

    .line 31
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setOrientation(I)V

    .line 33
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mResIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 36
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mResIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->mWidths:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->addImageView(II)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setViewSelectedStatus(Landroid/widget/ImageView;Z)V
    .locals 3
    .parameter "view"
    .parameter "isSelected"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 60
    .local v1, width:I
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->findResIdByWidth(I)I

    move-result v0

    .line 61
    .local v0, resId:I
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    return-void
.end method
