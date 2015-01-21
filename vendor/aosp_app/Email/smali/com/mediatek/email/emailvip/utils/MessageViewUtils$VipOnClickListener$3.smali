.class Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 513
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    if-eqz v1, :cond_2

    .line 514
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    #getter for: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mRemoveVipRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$000(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 515
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->needUpdateVipIcon(Lcom/android/emailcommon/mail/Address;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateSenderVipIcon(Z)V

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mFragment:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateVipInformation(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;)V

    .line 532
    return-void

    .line 517
    :cond_2
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMembersCount()I

    move-result v0

    .line 518
    .local v0, vipCount:I
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x63

    if-le v1, v2, :cond_3

    .line 519
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    const v2, 0x7f080041

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    #getter for: Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mAddVipRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->access$100(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 522
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener$3;->this$0:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->getTempAddress()Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$TempAddress;->mIsVipMember:Z

    goto :goto_0
.end method
