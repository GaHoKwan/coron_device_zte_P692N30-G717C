.class public Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;
.source "DoodleShapeTypeView.java"


# static fields
.field public static lastShapeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->lastShapeType:I

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->init()V

    .line 19
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-super {p0, v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType;->init(Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;)V

    .line 23
    return-void
.end method


# virtual methods
.method public initImageViewOnClickListener()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView$1;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method
