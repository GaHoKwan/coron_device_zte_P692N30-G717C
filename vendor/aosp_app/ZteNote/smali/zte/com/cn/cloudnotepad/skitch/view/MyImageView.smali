.class public Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;
.super Landroid/widget/ImageView;
.source "MyImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/MyImageView$ImageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyImageView"


# instance fields
.field private mContentMeta:Ljava/lang/Object;

.field private mControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private mImageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getContentMeta()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mContentMeta:Ljava/lang/Object;

    return-object v0
.end method

.method public getControlData()Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mImageType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method public setContentMeta(Ljava/lang/Object;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 60
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mContentMeta:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public setControlData(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
    .locals 0
    .parameter "controlData"

    .prologue
    .line 70
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mControlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    .line 71
    return-void
.end method

.method public setImageType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 50
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->mImageType:I

    .line 51
    return-void
.end method
