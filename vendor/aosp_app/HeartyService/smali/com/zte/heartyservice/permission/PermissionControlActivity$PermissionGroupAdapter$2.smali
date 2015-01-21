.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x1

    .line 390
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-nez v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->access$500(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 392
    .local v3, popupwindow_3_choose:Landroid/view/View;
    const v4, 0x7f0e02d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v4, 0x7f0e02d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v4, 0x7f0e02d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v3, v7, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$402(Lcom/zte/heartyservice/permission/PermissionControlActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 396
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 398
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 399
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    const v5, 0x7f0c00cc

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 400
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 403
    .end local v3           #popupwindow_3_choose:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 404
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 405
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;

    .line 407
    .local v2, pHolder:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$600(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->groupPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    iget v5, v2, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$PositionHolder;->childPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 409
    .local v0, item:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #setter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mAppItem:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    invoke-static {v4, v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$702(Lcom/zte/heartyservice/permission/PermissionControlActivity;Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;)Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 410
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PermissionControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->access$400(Lcom/zte/heartyservice/permission/PermissionControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    aget v5, v1, v9

    iget-object v6, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v6, v6, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v6}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b013b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aget v6, v1, v8

    iget-object v7, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter$2;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;

    iget-object v7, v7, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PermissionControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b013a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, p1, v9, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 411
    return-void
.end method
