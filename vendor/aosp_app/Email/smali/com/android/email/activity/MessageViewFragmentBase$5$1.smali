.class Lcom/android/email/activity/MessageViewFragmentBase$5$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$5;->doInBackground([Lcom/android/emailcommon/mail/Address;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$5;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$5;)V
    .locals 0
    .parameter

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$5$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVipOverMax()V
    .locals 2

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$5;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080041

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 3140
    return-void
.end method

.method public tryToAddDuplicateVip()V
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$5;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080040

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 3135
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$5;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$5;->mIsDuplicateVip:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->access$5202(Lcom/android/email/activity/MessageViewFragmentBase$5;Z)Z

    .line 3136
    return-void
.end method
