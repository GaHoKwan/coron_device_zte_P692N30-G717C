.class public Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/ui/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CursorAnimationOnPageChangeListener"
.end annotation


# instance fields
.field protected bmpW:I

.field protected currIndex:I

.field protected cursor:Landroid/widget/ImageView;

.field protected fromPos:I

.field protected lastIndex:I

.field protected offset:I

.field final synthetic this$0:Lcom/zte/aliveupdate/ui/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/zte/aliveupdate/ui/SettingActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object p1, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->offset:I

    .line 151
    iput v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->currIndex:I

    .line 155
    const v0, 0x7f0a0042

    invoke-virtual {p1, v0}, Lcom/zte/aliveupdate/ui/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->cursor:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p0}, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->init()V

    .line 158
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->cursor:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->bmpW:I

    .line 164
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 165
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    invoke-virtual {v3}, Lcom/zte/aliveupdate/ui/SettingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 167
    .local v2, screenW:I
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    iget-object v3, v3, Lcom/zte/aliveupdate/ui/SettingActivity;->tabTitles:[Landroid/view/View;

    array-length v3, v3

    div-int v3, v2, v3

    iget v4, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->offset:I

    .line 168
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 169
    .local v1, matrix:Landroid/graphics/Matrix;
    iget v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 170
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->cursor:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 172
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 178
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 184
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .parameter "currentIndex"

    .prologue
    const/4 v5, 0x0

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, animation:Landroid/view/animation/Animation;
    iget v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->lastIndex:I

    sub-int v1, p1, v3

    .line 190
    .local v1, delta:I
    iget v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->offset:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->bmpW:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->fromPos:I

    add-int v2, v3, v4

    .line 192
    .local v2, toPos:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    iget v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->fromPos:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-direct {v0, v3, v4, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 193
    .restart local v0       #animation:Landroid/view/animation/Animation;
    iput v2, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->fromPos:I

    .line 195
    iput p1, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->lastIndex:I

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 197
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 198
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->cursor:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v3, p0, Lcom/zte/aliveupdate/ui/SettingActivity$CursorAnimationOnPageChangeListener;->this$0:Lcom/zte/aliveupdate/ui/SettingActivity;

    invoke-virtual {v3, p1}, Lcom/zte/aliveupdate/ui/SettingActivity;->onTabTitleChange(I)V

    .line 200
    return-void
.end method
