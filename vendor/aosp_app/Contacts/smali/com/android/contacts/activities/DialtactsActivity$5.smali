.class Lcom/android/contacts/activities/DialtactsActivity$5;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .parameter "newText"

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1100(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCallLogSearchFragment:Lcom/mediatek/contacts/calllog/CallLogSearchFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/mediatek/contacts/calllog/CallLogSearchFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/calllog/CallLogSearchFragment;->setSearchString(Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    return v1

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #getter for: Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .parameter "query"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 564
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$1600(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V

    .line 566
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 568
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
