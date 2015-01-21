.class public Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PanoramaSwitchBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;
    }
.end annotation


# static fields
.field public static final BUTTON_3D:I = 0x2

.field public static final BUTTON_NORMAL:I = 0x1

.field private static final GRAY:I = -0x555556

.field public static final INVILED_BUTTON:I = 0x0

.field public static final SWITCH_BAR_TOP_GAP:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final SWITCH_BUTTON_GAP:I = 0x0

.field public static final SWITCH_BUTTON_LENG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/PanoramaSwitchBarView"


# instance fields
.field private mBackGround:Lcom/android/gallery3d/ui/ColorTexture;

.field private mContentHight:I

.field private mContentWidth:I

.field private mEnable:Z

.field private mFocusButtion:I

.field private mLength:I

.field private mMeasureHight:I

.field private mMeasureWidth:I

.field private mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

.field private mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->SWITCH_BUTTON_GAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 41
    new-array v0, v6, [Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    iput-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    .line 42
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mEnable:Z

    .line 43
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    const v3, 0x7f020175

    const v4, 0x7f020174

    sget v5, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->SWITCH_BUTTON_GAP:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;-><init>(ILandroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->addSwitchButton(Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;)V

    .line 45
    new-instance v0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    const v3, 0x7f020173

    const v4, 0x7f020172

    sget v5, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->SWITCH_BUTTON_GAP:I

    move v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;-><init>(ILandroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->addSwitchButton(Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;)V

    .line 47
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->adjustButtonsPosition()V

    .line 48
    return-void
.end method

.method private getButton(I)Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;
    .locals 2
    .parameter "button"

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mName:I

    if-ne v1, p1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    .line 160
    :goto_1
    return-object v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private pressDown(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->pressed(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mName:I

    .line 173
    :goto_1
    return v1

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addSwitchButton(Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    aput-object p1, v0, v1

    .line 52
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureWidth:I

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureWidth:I

    .line 53
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureHight:I

    invoke-virtual {p1}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureHight:I

    .line 54
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    .line 55
    return-void
.end method

.method public adjustButtonsPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, begin:I
    iput v4, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentWidth:I

    .line 60
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mVisible:Z

    if-eqz v2, :cond_0

    .line 62
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentWidth:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentWidth:I

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureWidth:I

    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 66
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v1, v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mVisible:Z

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, v4}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->setPosition(II)V

    .line 69
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentHight:I

    .line 66
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_3
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0, v0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 94
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 86
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureWidth:I

    iget v3, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mContentWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 87
    .local v0, begin:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public getFocusButtion()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 97
    iget v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureWidth:I

    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mMeasureHight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/GLView;->setMeasuredSize(II)V

    .line 98
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 103
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 104
    .local v1, y:F
    const-string v2, "Gallery2/PanoramaSwitchBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch, x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v2, "Gallery2/PanoramaSwitchBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch, y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return v6

    .line 108
    :pswitch_1
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->pressDown(II)I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    goto :goto_0

    .line 111
    :pswitch_2
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    if-lez v2, :cond_0

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-direct {p0, v2, v3}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->pressDown(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    iget v2, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->setFocusButton(IZ)V

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 115
    :cond_0
    iput v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    goto :goto_0

    .line 118
    :pswitch_3
    iput v5, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mFocusButtion:I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mEnable:Z

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0
.end method

.method public setButtonVisible(IZ)V
    .locals 1
    .parameter "button"
    .parameter "visible"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->getButton(I)Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    move-result-object v0

    .line 148
    .local v0, b:Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->setVisible(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->adjustButtonsPosition()V

    .line 152
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mEnable:Z

    .line 144
    return-void
.end method

.method public setFocusButton(IZ)V
    .locals 3
    .parameter "button"
    .parameter "fromUser"

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mLength:I

    if-ge v0, v1, :cond_3

    .line 131
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->mName:I

    if-ne v1, p1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->setPress(Z)V

    .line 130
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mSwitchButtons:[Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView$SwitchButton;->setPress(Z)V

    goto :goto_2

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v1, p0}, Lcom/android/gallery3d/ui/GLView$OnClickListener;->onClick(Lcom/android/gallery3d/ui/GLView;)V

    goto :goto_0
.end method

.method public setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/gallery3d/panorama/PanoramaSwitchBarView;->mOnClickListener:Lcom/android/gallery3d/ui/GLView$OnClickListener;

    .line 77
    return-void
.end method
