.class Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberActionModeCallback"
.end annotation


# instance fields
.field private final mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

.field private final mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter "targetView"

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1382
    iput-object p2, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    .line 1385
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    .line 1386
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1387
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1404
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1411
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1406
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/contacts/CallDetailActivity;->access$1700(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/contacts/CallDetailActivity;->access$1600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1408
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1404
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
    .line 1391
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    #getter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$1600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1394
    :goto_0
    return v0

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1394
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/contacts/CallDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/contacts/CallDetailActivity;->access$2502(Lcom/android/contacts/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1419
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1420
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1399
    const/4 v0, 0x1

    return v0
.end method
