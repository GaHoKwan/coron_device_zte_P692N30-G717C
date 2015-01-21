.class Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;
.super Ljava/lang/Object;
.source "YellowPagesSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    .local v0, message:Landroid/os/Message;
    new-instance v1, Lcn/com/zte/yp/update/zd/UpgradeManager;

    iget-object v2, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    #getter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->context:Landroid/content/Context;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$000(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/com/zte/yp/update/zd/UpgradeManager;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, upgradeMgr:Lcn/com/zte/yp/update/zd/UpgradeManager;
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-virtual {v1}, Lcn/com/zte/yp/update/zd/UpgradeManager;->getUpdateApkInfo()Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    move-result-object v3

    #setter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    invoke-static {v2, v3}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$102(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;Lcn/com/zte/yp/update/zd/UpdateApkInfo;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    .line 183
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    #getter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    invoke-static {v2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$100(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 184
    const/16 v2, 0x65

    iput v2, v0, Landroid/os/Message;->what:I

    .line 189
    :goto_0
    iget-object v2, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$CheckUpdateThread;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    iget-object v2, v2, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void

    .line 186
    :cond_0
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
