.class Lcom/android/email/activity/MessageViewFragmentBase$5;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->addVip(Lcom/android/emailcommon/mail/Address;)V
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
.field private mIsDuplicateVip:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 1
    .parameter
    .parameter "x0"

    .prologue
    .line 3125
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 3126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->mIsDuplicateVip:Z

    .line 3125
    return-void
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageViewFragmentBase$5;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3125
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->mIsDuplicateVip:Z

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/emailcommon/mail/Address;)Ljava/lang/Boolean;
    .locals 4
    .parameter "addresses"

    .prologue
    .line 3130
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$5$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$5$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$5;)V

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/VipMember;->addVIP(Landroid/content/Context;Lcom/android/emailcommon/mail/Address;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)Z

    move-result v0

    .line 3142
    .local v0, result:Z
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->updateVipMemberCache()V

    .line 3143
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3125
    check-cast p1, [Lcom/android/emailcommon/mail/Address;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->doInBackground([Lcom/android/emailcommon/mail/Address;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 3148
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->mIsDuplicateVip:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updateVipIcon(Z)V
    invoke-static {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5000(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    .line 3149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3150
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipInformation(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 3152
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mVipSwitcher:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3153
    return-void

    .line 3148
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3125
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
