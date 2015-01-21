.class public abstract Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.source "AbstractDoodleInputType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;
    }
.end annotation


# static fields
.field protected static INNER_MARGIN:I

.field private static PADDING:I

.field public static final inputIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCurrentPaintTool:Landroid/widget/ImageView;

.field protected mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

.field protected mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/16 v0, 0xd

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->PADDING:I

    .line 16
    const/16 v0, 0xf

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->INNER_MARGIN:I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    .line 104
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f0200c5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f0200c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f02006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f02002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f020030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f020032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f020031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    const v1, 0x7f02002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public addImageView(I)V
    .locals 6
    .parameter "type"

    .prologue
    const v4, 0x7f080012

    .line 45
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v4, 0x3f80

    .line 47
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 50
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->INNER_MARGIN:I

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->INNER_MARGIN:I

    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->INNER_MARGIN:I

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->INNER_MARGIN:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 57
    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    const v2, 0x7f02003a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->addView(Landroid/view/View;)V

    .line 64
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 65
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public init(Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 33
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->initImageViewOnClickListener()V

    .line 35
    const v1, 0x7f020033

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setBackgroundResource(I)V

    .line 36
    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->PADDING:I

    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->PADDING:I

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->PADDING:I

    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->PADDING:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setPadding(IIII)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setOrientation(I)V

    .line 38
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 41
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->addImageView(I)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract initImageViewOnClickListener()V
.end method

.method protected setCurrentToolType(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 71
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    .line 72
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setViewSelectedStatus(Landroid/widget/ImageView;Z)V

    .line 74
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->setInputType()V

    .line 76
    :cond_0
    return-void
.end method

.method public setInputType()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mCurrentPaintTool:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, type:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    instance-of v1, v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setInputType(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setOnClickInputTypeToolListener(Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 123
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    .line 124
    return-void
.end method

.method public setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V
    .locals 0
    .parameter "skitch"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 91
    return-void
.end method

.method protected setViewSelectedStatus(Landroid/widget/ImageView;Z)V
    .locals 3
    .parameter "view"
    .parameter "isSelected"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, type:I
    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->inputIconList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    .local v0, resId:I
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    return-void
.end method
