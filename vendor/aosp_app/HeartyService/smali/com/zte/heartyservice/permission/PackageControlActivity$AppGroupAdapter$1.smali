.class Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

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

    .line 321
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-nez v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->mChildInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->access$500(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 323
    .local v3, popupwindow_3_choose:Landroid/view/View;
    const v4, 0x7f0e02d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v4, 0x7f0e02d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x7f0e02d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v3, v7, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$402(Lcom/zte/heartyservice/permission/PackageControlActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 327
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 329
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 330
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    const v5, 0x7f0c00cc

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 331
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v5, v5, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 334
    .end local v3           #popupwindow_3_choose:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 335
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 336
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;

    .line 338
    .local v2, pHolder:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$600(Lcom/zte/heartyservice/permission/PackageControlActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->groupPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;->children:Ljava/util/List;

    iget v5, v2, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$PositionHolder;->childPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 340
    .local v0, item:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #setter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPermissionItem:Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;
    invoke-static {v4, v0}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$702(Lcom/zte/heartyservice/permission/PackageControlActivity;Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;)Lcom/zte/heartyservice/permission/PackageControlActivity$PermissionItem;

    .line 341
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v4, v4, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    #getter for: Lcom/zte/heartyservice/permission/PackageControlActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/zte/heartyservice/permission/PackageControlActivity;->access$400(Lcom/zte/heartyservice/permission/PackageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    aget v5, v1, v9

    iget-object v6, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v6, v6, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v6}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b013b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aget v6, v1, v8

    iget-object v7, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter$1;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;

    iget-object v7, v7, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroupAdapter;->this$0:Lcom/zte/heartyservice/permission/PackageControlActivity;

    invoke-virtual {v7}, Lcom/zte/heartyservice/permission/PackageControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b013a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, p1, v9, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 342
    return-void
.end method
