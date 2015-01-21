.class Lcom/mediatek/email/emailvip/activity/VipListFragment$4;
.super Ljava/lang/Object;
.source "VipListFragment.java"

# interfaces
.implements Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;->saveAsVips([Lcom/android/emailcommon/mail/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$4;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVipOverMax()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$4;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$400(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080041

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 285
    return-void
.end method

.method public tryToAddDuplicateVip()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$4;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$400(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080040

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 281
    return-void
.end method
