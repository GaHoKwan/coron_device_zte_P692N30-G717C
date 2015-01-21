.class public Lcom/mediatek/gallery3d/video/ClearMotionHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "ClearMotionHooker.java"


# static fields
.field private static final MENU_CLEAR_MOTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ClearMotionHooker"


# instance fields
.field private mMenuClearMotion:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private gotoClearMotion()V
    .locals 3

    .prologue
    .line 97
    const-string v1, "ClearMotionHooker"

    const-string v2, "gotoClearMotion() entry"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.ClearMotionTool"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/gallery3d/pq/ClearMotionTool;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 64
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c01f2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->mMenuClearMotion:Landroid/view/MenuItem;

    .line 66
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->gotoClearMotion()V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 72
    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->isClearMotionSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->mMenuClearMotion:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->mMenuClearMotion:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->mMenuClearMotion:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/ClearMotionHooker;->mMenuClearMotion:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
