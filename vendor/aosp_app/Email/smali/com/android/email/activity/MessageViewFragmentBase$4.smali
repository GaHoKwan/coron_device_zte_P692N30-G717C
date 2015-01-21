.class Lcom/android/email/activity/MessageViewFragmentBase$4;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->removeVip(Lcom/android/emailcommon/mail/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Lcom/android/emailcommon/mail/Address;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$4;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/emailcommon/mail/Address;)Ljava/lang/Boolean;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v0, 0x0

    .line 3097
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 3098
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3104
    :goto_0
    return-object v1

    .line 3100
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$4;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x1000

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/VipMember;->deleteVipMembers(Landroid/content/Context;JLjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    .line 3103
    .local v0, result:Z
    :cond_2
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->updateVipMemberCache()V

    .line 3104
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3093
    check-cast p1, [Lcom/android/emailcommon/mail/Address;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$4;->doInBackground([Lcom/android/emailcommon/mail/Address;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 3109
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$4;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updateVipIcon(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5000(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    .line 3111
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$4;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipInformation(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 3113
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$4;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3114
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3093
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$4;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
