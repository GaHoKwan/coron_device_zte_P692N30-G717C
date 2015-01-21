.class Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberActionModeCallback"
.end annotation


# instance fields
.field private final mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

.field private final mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "targetView"

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    .line 2016
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    .line 2017
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2018
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 2037
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2044
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2039
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogFragment;->access$2700(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/contacts/calllog/CallLogFragment;->access$2600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 2041
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 2037
    nop

    :pswitch_data_0
    .packed-switch 0x7f0701dd
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$2600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    const/4 v0, 0x0

    .line 2027
    :goto_0
    return v0

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2027
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$4202(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2052
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2053
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2032
    const/4 v0, 0x1

    return v0
.end method
