.class Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "VipListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Landroid/content/Context;Lcom/mediatek/email/emailvip/activity/VipAddressTextView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "list"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    .line 327
    invoke-direct {p0, p2}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 328
    return-void
.end method


# virtual methods
.method protected getDefaultPhotoResource()I
    .locals 1

    .prologue
    .line 345
    const v0, 0x7f020026

    return v0
.end method

.method protected getItemLayout()I
    .locals 1

    .prologue
    .line 350
    const v0, 0x7f040025

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 339
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 341
    :cond_0
    return-void
.end method
