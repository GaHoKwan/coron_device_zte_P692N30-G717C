.class final Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlideListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;Lcom/android/mms/ui/SlideshowEditActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$300(Lcom/android/mms/ui/SlideshowEditActivity;)I

    move-result v0

    .line 617
    .local v0, position:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const/4 v2, -0x1

    #setter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSelectedItemPosition:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity;->access$302(Lcom/android/mms/ui/SlideshowEditActivity;I)I

    .line 618
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 661
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 620
    :pswitch_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$800(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 622
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 623
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$500(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 627
    :pswitch_1
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$800(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 629
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 630
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$500(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 634
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$800(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 636
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 640
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$700(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 641
    add-int/lit8 v0, v0, 0x1

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$800(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 647
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$500(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 648
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$500(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    const v2, 0x7f0b027d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 656
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$800(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 657
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    #getter for: Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowEditActivity;->access$600(Lcom/android/mms/ui/SlideshowEditActivity;)Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 658
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListMenuClickListener;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
