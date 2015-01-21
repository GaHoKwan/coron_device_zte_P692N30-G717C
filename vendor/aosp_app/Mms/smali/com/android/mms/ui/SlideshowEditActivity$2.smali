.class Lcom/android/mms/ui/SlideshowEditActivity$2;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v8, 0x7f0b0252

    const v7, 0x7f0200b2

    const/16 v6, 0x14

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 579
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 580
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v3, -0x1

    #setter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->access$302(Lcom/android/mms/ui/SlideshowEditActivity;I)I

    move-object v0, p3

    .line 582
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 583
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->access$302(Lcom/android/mms/ui/SlideshowEditActivity;I)I

    .line 585
    const v2, 0x7f0b0318

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 587
    new-instance v1, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;Lcom/android/mms/ui/SlideshowEditActivity$1;)V

    .line 588
    .local v1, slc:Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$300(Lcom/android/mms/ui/SlideshowEditActivity;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$300(Lcom/android/mms/ui/SlideshowEditActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/ui/SlideshowEditActivity;->access$500(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_4

    .line 590
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$300(Lcom/android/mms/ui/SlideshowEditActivity;)I

    move-result v2

    if-lez v2, :cond_0

    .line 591
    const v2, 0x7f0b024f

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 594
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$300(Lcom/android/mms/ui/SlideshowEditActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 595
    const/4 v2, 0x1

    const v3, 0x7f0b0250

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 599
    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 603
    :cond_2
    const/4 v2, 0x2

    const v3, 0x7f0b0251

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 611
    :cond_3
    :goto_0
    return-void

    .line 606
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity$2;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 607
    invoke-interface {p1, v4, v5, v4, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
