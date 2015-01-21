.class Lcom/android/email/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v6, 0x0

    .line 373
    if-nez p2, :cond_1

    .line 375
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mExtension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isEmailPrefixNameValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->getSelectedDoamin()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, selectedDomain:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isServerDomainUnknown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 382
    .local v1, end:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #end:I
    .end local v2           #selectedDomain:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/EmailAccountAutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 391
    :cond_1
    return-void

    .line 380
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #selectedDomain:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method
