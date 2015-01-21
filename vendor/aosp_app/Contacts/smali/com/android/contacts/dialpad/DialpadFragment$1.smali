.class Lcom/android/contacts/dialpad/DialpadFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 266
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    .line 267
    .local v0, phoneIsInUse:Z
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #calls: Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    if-nez v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->access$100(Lcom/android/contacts/dialpad/DialpadFragment;Z)V

    .line 270
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    .line 274
    :cond_0
    if-nez v0, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    .end local v0           #phoneIsInUse:Z
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged, serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, newIso:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #setter for: Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$302(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->access$400(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-set phone number formatting text watcher, mCurrentCountryIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->access$500(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->access$200(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment$1;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->access$500(Lcom/android/contacts/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method
