.class public Lcom/android/email/RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0
    .parameter "context"
    .parameter "list"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getDefaultPhotoResource()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f020026

    return v0
.end method

.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f040025

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 41
    :cond_0
    return-void
.end method
