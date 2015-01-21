.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;
.super Ljava/lang/Object;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->this$1:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;

    iput-object p2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 418
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 419
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x1e

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 420
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 421
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1e

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 422
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 423
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->val$parent:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1$1;->val$view:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 424
    return-void
.end method
