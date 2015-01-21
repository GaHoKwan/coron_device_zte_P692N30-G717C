.class public Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
.super Ljava/lang/Object;
.source "CreateSkitchInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$ImageOp;,
        Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;,
        Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    }
.end annotation


# static fields
.field public static final DOODLE_EDIT:I = 0x2

.field public static final HANDWRITE_EDIT:I = 0x3

.field public static final TEXT_EDIT:I = 0x1


# instance fields
.field private SKITCH_MARGIN:I

.field private edit_mode:I

.field private mActivity:Landroid/app/Activity;

.field private mBlockEventView:Landroid/view/View;

.field private mCreateNewNoteLayout:Landroid/widget/LinearLayout;

.field private mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDoodleChangeListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

.field private mDoodleLayout:Landroid/widget/LinearLayout;

.field private mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

.field private mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

.field private mDoodleViewHeight:I

.field private mDoodleViewOuter:Landroid/widget/FrameLayout;

.field private mDoodleViewWidth:I

.field private mHandWriteOuterLayout:Landroid/widget/LinearLayout;

.field private mHandWritePageLayout:Landroid/widget/LinearLayout;

.field private mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

.field private mImageOpType:I

.field private mInputToolsOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

.field private mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

.field private mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

.field private mRedo:Landroid/view/View;

.field private mUndo:Landroid/view/View;

.field private oldHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

.field private writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;)V
    .locals 2
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    .line 65
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->SKITCH_MARGIN:I

    .line 538
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$1;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleChangeListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    .line 619
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$2;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    .line 652
    new-instance v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$3;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mInputToolsOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    .line 95
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewState()V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedStateByType(IZ)V

    return-void
.end method

.method static synthetic access$10(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V

    return-void
.end method

.method static synthetic access$11(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    return-object v0
.end method

.method static synthetic access$12(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showSliderOrColorView(Z)V

    return-void
.end method

.method static synthetic access$13(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->giveupDoodleOrHandwrite()V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getPaintToolByInputType(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getCurrentPaintToolByViewId(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->showPaintToolView(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V

    return-void
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getViewIdByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;Landroid/widget/ImageView;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-direct {p0, p1, p2, p3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedState(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method private generateHandwrite(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "paramDrawable1"
    .parameter "paramDrawable2"

    .prologue
    const/4 v11, 0x0

    .line 952
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v9}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 958
    .local v1, bm_page:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 959
    .local v5, len:I
    if-eqz p1, :cond_0

    .line 960
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v5, v9

    .line 962
    :cond_0
    if-eqz p2, :cond_1

    .line 963
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v5, v9

    .line 972
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 973
    .local v0, bm_handwrite:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 974
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 975
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 976
    .local v7, paint:Landroid/graphics/Paint;
    const/high16 v9, -0x100

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 977
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 979
    const/4 v3, 0x0

    .line 980
    .local v3, drawable1_height:I
    if-eqz p1, :cond_2

    .line 981
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p1, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 982
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 984
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 986
    :cond_2
    if-eqz p2, :cond_3

    .line 987
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p2, v11, v9, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 988
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 997
    :cond_3
    move v6, v3

    .line 999
    .local v6, pageTop:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1000
    .local v8, srcRectPage:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-direct {v4, v11, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1001
    .local v4, dstRectPage:Landroid/graphics/Rect;
    invoke-virtual {v2, v1, v8, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1003
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    return-object v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "drawable"

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 301
    .local v4, w:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 302
    .local v2, h:I
    const/4 v0, 0x0

    .line 304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 306
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :catch_0
    move-exception v3

    .line 309
    .local v3, tr:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBitmapFromDrawable() exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentPaintToolByViewId(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 1
    .parameter "id"

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, tool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    packed-switch p1, :pswitch_data_0

    .line 801
    :goto_0
    :pswitch_0
    return-object v0

    .line 790
    :pswitch_1
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    .line 791
    goto :goto_0

    .line 793
    :pswitch_2
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    .line 794
    goto :goto_0

    .line 796
    :pswitch_3
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    .line 797
    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x7f060028
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    .locals 4
    .parameter "tool"

    .prologue
    .line 699
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v3, 0x7f06007d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    .line 700
    .local v0, penTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getInputType()I

    move-result v1

    .line 701
    .local v1, type:I
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v2, :cond_1

    .line 702
    iget v1, v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->lastPenType:I

    .line 708
    :cond_0
    :goto_0
    return v1

    .line 703
    :cond_1
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v2, :cond_2

    .line 704
    sget-object v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    goto :goto_0

    .line 705
    :cond_2
    sget-object v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v2, :cond_0

    .line 706
    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->lastShapeType:I

    goto :goto_0
.end method

.method private getPaintToolByInputType(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    .locals 2
    .parameter "type"

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, tool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 808
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 809
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    .line 816
    :cond_0
    :goto_0
    return-object v0

    .line 810
    :cond_1
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ERASER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 811
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    goto :goto_0

    .line 812
    :cond_2
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 813
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 814
    sget-object v0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    goto :goto_0
.end method

.method private getProperLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 894
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 895
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewWidth:I

    const/4 v2, -0x1

    .line 894
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 897
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 898
    return-object v0
.end method

.method private getViewIdByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I
    .locals 2
    .parameter "tool"

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, id:I
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v1, :cond_1

    .line 776
    const v0, 0x7f060029

    .line 782
    :cond_0
    :goto_0
    return v0

    .line 777
    :cond_1
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v1, :cond_2

    .line 778
    const v0, 0x7f060028

    goto :goto_0

    .line 779
    :cond_2
    sget-object v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v1, :cond_0

    .line 780
    const v0, 0x7f06002c

    goto :goto_0
.end method

.method private giveupDoodleOrHandwrite()V
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 1252
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->displayCurrentView()V

    .line 1253
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->trash()V

    .line 1256
    :cond_0
    return-void
.end method

.method private hideTopViewWhenBackPressed()V
    .locals 5

    .prologue
    .line 1260
    const/4 v3, 0x6

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 1269
    .local v1, resIds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 1275
    return-void

    .line 1270
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1271
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1272
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    nop

    :array_0
    .array-data 0x4
        0x7bt 0x0t 0x6t 0x7ft
        0x7ct 0x0t 0x6t 0x7ft
        0x7dt 0x0t 0x6t 0x7ft
        0x7et 0x0t 0x6t 0x7ft
        0x86t 0x0t 0x6t 0x7ft
        0x87t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private initDoodleUndoRedoViewListener()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mUndo:Landroid/view/View;

    .line 519
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mUndo:Landroid/view/View;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$10;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$10;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mRedo:Landroid/view/View;

    .line 527
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mRedo:Landroid/view/View;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$11;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$11;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    return-void
.end method

.method private initDoodleViewListener()V
    .locals 8

    .prologue
    .line 574
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f060029

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, penTypeView:Landroid/view/View;
    move-object v6, v3

    .line 575
    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f020025

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mInputToolsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f060028

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 580
    .local v2, eraserView:Landroid/view/View;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mInputToolsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06002c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 583
    .local v4, shapeView:Landroid/view/View;
    check-cast v3, Landroid/widget/ImageView;

    .end local v3           #penTypeView:Landroid/view/View;
    const v6, 0x7f020030

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mInputToolsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06002b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, colorView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$12;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$12;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 597
    .local v5, strokeView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$13;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$13;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06002d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, doodleDoneView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$14;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$14;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initViewSelectedStateByCurrType()V

    .line 616
    return-void
.end method

.method private initHandWrite()V
    .locals 8

    .prologue
    .line 378
    :try_start_0
    new-instance v4, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-direct {v4}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;-><init>()V

    iput-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    .line 379
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v4, v5}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 382
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 383
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 384
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5, v6, v7}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->init(FII)V

    .line 386
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v4, v5}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->setHandWriteCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;)V

    .line 387
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v5, 0x7f060086

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 388
    .local v3, sliderView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 389
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setVisibility(I)V

    .line 391
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v5, 0x7f060087

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 392
    .local v0, colorBoxView:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 393
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setVisibility(I)V

    .line 395
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initHandWriteViewListener()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0           #colorBoxView:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
    .end local v1           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #sliderView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, localOutOfMemoryError:Ljava/lang/OutOfMemoryError;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v5, 0x7f09003c

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 398
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private initHandWriteViewListener()V
    .locals 8

    .prologue
    .line 405
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f060048

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, deleteView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$4;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$4;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f060049

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, blankView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$5;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$5;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06004a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 424
    .local v5, returnView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$6;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$6;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06004c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 433
    .local v4, paintView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$7;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$7;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06004b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, colorBoxBtn:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$8;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$8;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06004d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 452
    .local v3, handwriteDownView:Landroid/view/View;
    new-instance v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$9;

    invoke-direct {v6, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$9;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCreateNewNoteLayout:Landroid/widget/LinearLayout;

    .line 352
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mBlockEventView:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleLayout:Landroid/widget/LinearLayout;

    .line 355
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06007a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    .line 356
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060079

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewOuter:Landroid/widget/FrameLayout;

    .line 358
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 359
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWriteOuterLayout:Landroid/widget/LinearLayout;

    .line 364
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    .line 365
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    .line 368
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 369
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 370
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getDefaultMaxViewHeight()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewHeight:I

    .line 371
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->SKITCH_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewWidth:I

    .line 372
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    .line 373
    return-void
.end method

.method private initViewSelectedStateByCurrType()V
    .locals 5

    .prologue
    .line 685
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getInputType()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getPaintToolByInputType(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v1

    .line 686
    .local v1, tool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getViewIdByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v2

    .line 687
    .local v2, viewId:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 688
    .local v0, oldView:Landroid/widget/ImageView;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getInputType()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedState(Landroid/widget/ImageView;IZ)V

    .line 689
    return-void
.end method

.method private isHandWriteEmpty()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isEmpty()Z

    move-result v0

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setActionBarButtonState(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 142
    return-void
.end method

.method private setDoodleLayoutParams(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, -0x2

    .line 254
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewHeight:I

    .line 255
    .local v0, height:I
    iget v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewWidth:I

    .line 256
    .local v3, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewHeight:I

    if-ge v4, v5, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewWidth:I

    if-ge v4, v5, :cond_1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 262
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set doodle width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v2, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v4, v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v1, outerParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x51

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewOuter:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    return-void
.end method

.method private setInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    .locals 2
    .parameter "tool"

    .prologue
    .line 693
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getInputTypeByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v0

    .line 694
    .local v0, type:I
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setInputType(I)V

    .line 695
    return-void
.end method

.method private setViewSelectedState(Landroid/widget/ImageView;IZ)V
    .locals 2
    .parameter "view"
    .parameter "type"
    .parameter "isSelected"

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, imageId:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 747
    return-void

    .line 717
    :pswitch_1
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PEN:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 718
    const v0, 0x7f0200c5

    goto :goto_0

    .line 719
    :cond_1
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 720
    const v0, 0x7f0200c6

    goto :goto_0

    .line 721
    :cond_2
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 722
    const v0, 0x7f02006d

    .line 725
    goto :goto_0

    .line 727
    :pswitch_2
    const v0, 0x7f02002b

    .line 728
    goto :goto_0

    .line 730
    :pswitch_3
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ELLIPSE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 731
    const v0, 0x7f020030

    goto :goto_0

    .line 732
    :cond_3
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->RECT:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 733
    const v0, 0x7f020032

    goto :goto_0

    .line 734
    :cond_4
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->LINE:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 735
    const v0, 0x7f020031

    goto :goto_0

    .line 736
    :cond_5
    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->ARROW:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView$InputType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 737
    const v0, 0x7f02002f

    .line 740
    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x7f060028
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setViewSelectedStateByType(IZ)V
    .locals 4
    .parameter "type"
    .parameter "selected"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getPaintToolByInputType(I)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    move-result-object v0

    .line 647
    .local v0, tool:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getViewIdByPaintTool(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)I

    move-result v2

    .line 648
    .local v2, viewId:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 649
    .local v1, view:Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1, p2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setViewSelectedState(Landroid/widget/ImageView;IZ)V

    .line 650
    return-void
.end method

.method private showEmptyHandwriteDialog()V
    .locals 3

    .prologue
    .line 1080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1081
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1083
    const v1, 0x7f09003b

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$15;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$15;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1090
    return-void
.end method

.method private showPaintToolView(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;)V
    .locals 8
    .parameter "tool"

    .prologue
    .line 833
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06007c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 834
    .local v0, colorBoxView:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06007b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 835
    .local v5, sliderView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06007d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    .line 836
    .local v3, penTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06007e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    .line 837
    .local v4, shapeTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v7, 0x7f06007f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    .line 839
    .local v1, eraserTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;
    const/4 v2, 0x0

    .line 841
    .local v2, isViewVisibleBefore:Z
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 842
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->dismiss()V

    .line 843
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ColorBox:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_0

    .line 844
    const/4 v2, 0x1

    .line 847
    :cond_0
    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 848
    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->dismiss()V

    .line 849
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_1

    .line 850
    const/4 v2, 0x1

    .line 853
    :cond_1
    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 854
    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->dismiss()V

    .line 855
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_2

    .line 856
    const/4 v2, 0x1

    .line 860
    :cond_2
    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 861
    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->dismiss()V

    .line 862
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_3

    .line 863
    const/4 v2, 0x1

    .line 867
    :cond_3
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 868
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->dismiss()V

    .line 869
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_4

    .line 870
    const/4 v2, 0x1

    .line 874
    :cond_4
    if-eqz v2, :cond_6

    .line 890
    :cond_5
    :goto_0
    return-void

    .line 879
    :cond_6
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ColorBox:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_7

    .line 880
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->show()V

    goto :goto_0

    .line 881
    :cond_7
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->SliderView:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_8

    .line 882
    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->show()V

    goto :goto_0

    .line 883
    :cond_8
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->PenType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_9

    .line 884
    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->show()V

    goto :goto_0

    .line 885
    :cond_9
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->ShapeType:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_a

    .line 886
    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->show()V

    goto :goto_0

    .line 887
    :cond_a
    sget-object v6, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;->Eraser:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$PaintTool;

    if-ne p1, v6, :cond_5

    .line 888
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->show()V

    goto :goto_0
.end method

.method private showSliderOrColorView(Z)V
    .locals 5
    .parameter "isSliderViewShow"

    .prologue
    .line 462
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v4, 0x7f060087

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 463
    .local v0, colorBoxView:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v4, 0x7f060086

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 464
    .local v2, sliderView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
    const/4 v1, 0x0

    .line 465
    .local v1, isViewVisible:Z
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 466
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->dismiss()V

    .line 467
    if-eqz p1, :cond_0

    .line 468
    const/4 v1, 0x1

    .line 471
    :cond_0
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 472
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->dismiss()V

    .line 473
    if-nez p1, :cond_1

    .line 474
    const/4 v1, 0x1

    .line 477
    :cond_1
    if-eqz v1, :cond_2

    .line 486
    :goto_0
    return-void

    .line 481
    :cond_2
    if-eqz p1, :cond_3

    .line 482
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->show()V

    goto :goto_0

    .line 484
    :cond_3
    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->show()V

    goto :goto_0
.end method

.method private updateUndoRedoViewState()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "updateUndoRedoViewState"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mUndo:Landroid/view/View;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getUndoCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewVisibility(Landroid/view/View;I)V

    .line 550
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mRedo:Landroid/view/View;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getRedoCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewVisibility(Landroid/view/View;I)V

    .line 551
    return-void
.end method

.method private updateUndoRedoViewVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "count"

    .prologue
    .line 555
    if-nez p2, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 146
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 148
    :pswitch_0
    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setActionBarButtonState(Z)V

    .line 149
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCreateNewNoteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mBlockEventView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWriteOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->setVisibility(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setActionBarButtonState(Z)V

    .line 159
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCreateNewNoteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mBlockEventView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWriteOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->setVisibility(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setActionBarButtonState(Z)V

    .line 169
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCreateNewNoteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mBlockEventView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWriteOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->startCursorDrawer()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addDoodle()V
    .locals 2

    .prologue
    .line 903
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodle()V

    .line 904
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 906
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewOuter:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getProperLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getProperLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 910
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 911
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleChangeListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V

    .line 912
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewState()V

    .line 913
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    .line 914
    return-void
.end method

.method public addHandWrite()V
    .locals 2

    .prologue
    .line 918
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initHandWrite()V

    .line 919
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 920
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getProperLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 924
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    .line 925
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 926
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    .line 927
    return-void
.end method

.method public displayCurrentView()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setVisibility(I)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .line 188
    :cond_0
    return-void
.end method

.method public editDooleImage(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x2

    .line 321
    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 322
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setDoodleLayoutParams(Landroid/view/View;)V

    .line 324
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getContentMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->copy()Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 325
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 327
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleChangeListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V

    .line 328
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewState()V

    .line 330
    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    .line 331
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .line 332
    return-void
.end method

.method public editHandwriteImage(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 336
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 337
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getProperLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 341
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getContentMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->copy()Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    .line 342
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 344
    const/4 v0, 0x2

    iput v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    .line 346
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .line 347
    return-void
.end method

.method public editNormalImage(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0, v2}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 275
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setDoodleLayoutParams(Landroid/view/View;)V

    .line 277
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getContentMeta()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 279
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    .line 287
    :goto_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleChangeListener:Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->setDoodleChangeListener(Lzte/com/cn/cloudnotepad/skitch/iface/IDoodleChangeListener;)V

    .line 288
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateUndoRedoViewState()V

    .line 290
    iput v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    .line 292
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->setDoodleRect(Landroid/graphics/Rect;)V

    .line 293
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->setDoodleBackground(Landroid/graphics/Bitmap;)V

    .line 295
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .line 296
    return-void

    .line 283
    :cond_0
    invoke-virtual {p1}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->getContentMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;->copy()Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    .line 284
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V

    goto :goto_0
.end method

.method public getDefaultMaxViewHeight()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    return v0
.end method

.method public getToolBarHeight()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public initDoodle()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 490
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06007b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;

    .line 491
    .local v4, sliderView:Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v4, v5}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 492
    invoke-virtual {v4, v7}, Lzte/com/cn/cloudnotepad/skitch/view/PaintSliderView;->setVisibility(I)V

    .line 493
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06007c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;

    .line 495
    .local v0, colorBoxView:Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v0, v5}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 496
    invoke-virtual {v0, v7}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setVisibility(I)V

    .line 498
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06007d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;

    .line 499
    .local v2, penTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v2, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 500
    invoke-virtual {v2, v7}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->setVisibility(I)V

    .line 501
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    invoke-virtual {v2, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodlePenTypeView;->setOnClickInputTypeToolListener(Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;)V

    .line 503
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06007e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;

    .line 504
    .local v3, shapeTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v3, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 505
    invoke-virtual {v3, v7}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->setVisibility(I)V

    .line 506
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnClickInputTypeToolListener:Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;

    invoke-virtual {v3, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleShapeTypeView;->setOnClickInputTypeToolListener(Lzte/com/cn/cloudnotepad/skitch/view/AbstractDoodleInputType$OnClickInputTypeToolListener;)V

    .line 508
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    const v6, 0x7f06007f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;

    .line 509
    .local v1, eraserTypeView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v1, v5}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setSkitchCanvas(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;)V

    .line 510
    invoke-virtual {v1, v7}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleEraserTypeView;->setVisibility(I)V

    .line 512
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodleViewListener()V

    .line 513
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodleUndoRedoViewListener()V

    .line 514
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initView()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->trash()V

    .line 116
    :cond_0
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    .line 117
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandWritePageLayout:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleLayout:Landroid/widget/LinearLayout;

    .line 119
    return-void
.end method

.method public onDoodleDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 192
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    if-nez v2, :cond_0

    .line 217
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    if-ne v2, v4, :cond_3

    .line 199
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-interface {v2, v3, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;->onAddDoodleDone(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 207
    :cond_1
    :goto_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleView:Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/DoodleView;->onDoodleDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_2
    :goto_2
    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    goto :goto_0

    .line 200
    :cond_3
    :try_start_1
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 202
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleMeta:Lzte/com/cn/cloudnotepad/skitch/meta/DoodleMeta;

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setContentMeta(Ljava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    invoke-interface {v2, v3, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;->onEditDoodleDone(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    .line 210
    .local v1, tr:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in onDoodleDone(), exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onHandwriteDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    if-nez v2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 227
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->generateHandwrite(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->trash()V

    .line 231
    :cond_1
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    if-ne v2, v4, :cond_4

    .line 232
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-interface {v2, v3, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;->onAddHandwriteDone(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 238
    :cond_2
    :goto_1
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->writeViewLayout:Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/WriteViewLayout;->onHandwriteDone()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_3
    :goto_2
    invoke-virtual {p0, v4}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->setEditMode(I)V

    .line 249
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mPageView:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->stopCursorDrawer()V

    goto :goto_0

    .line 233
    :cond_4
    :try_start_1
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mImageOpType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 234
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mHandwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;->setContentMeta(Ljava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mOnSkitchListener:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mCurrentView:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    invoke-interface {v2, v3, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$OnSkitchListener;->onEditHandwriteDone(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, tr:Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateViewState()V

    .line 109
    return-void
.end method

.method public setEditMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 931
    iget v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    if-eq v0, p1, :cond_0

    .line 937
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    .line 938
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->updateViewState()V

    .line 940
    :cond_0
    return-void
.end method

.method public setMaxViewHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 124
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mDoodleViewHeight:I

    .line 125
    return-void
.end method

.method public showBackDialog()V
    .locals 4

    .prologue
    .line 1224
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->hideTopViewWhenBackPressed()V

    .line 1226
    const v0, 0x7f090042

    .line 1227
    .local v0, giveUpId:I
    iget v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->edit_mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1228
    const v0, 0x7f09003e

    .line 1230
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1231
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1232
    const v2, 0x7f09003b

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$18;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$18;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1240
    const v2, 0x7f09003a

    new-instance v3, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$19;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$19;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1246
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1247
    return-void
.end method

.method public showTrashDialog()V
    .locals 3

    .prologue
    .line 1204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1205
    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1206
    const v1, 0x7f090041

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$16;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$16;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1213
    const v1, 0x7f09003a

    new-instance v2, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$17;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo$17;-><init>(Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1220
    return-void
.end method
