.class Lcom/mediatek/email/emailvip/activity/VipListFragment$5;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "VipListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/VipListFragment;->onAvatarNameChanged(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

.field final synthetic val$avatarInfo:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    iput-object p3, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->val$avatarInfo:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 357
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$400(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->this$0:Lcom/mediatek/email/emailvip/activity/VipListFragment;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListFragment;->mImmutableAccountId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->access$500(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->val$avatarInfo:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    iget-object v3, v3, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;->val$avatarInfo:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    iget-object v4, v4, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/provider/VipMember;->updateVipDisplayName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    return-object v0
.end method
