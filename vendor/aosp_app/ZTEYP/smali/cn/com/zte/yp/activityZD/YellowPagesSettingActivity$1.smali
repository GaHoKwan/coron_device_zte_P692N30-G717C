.class Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;
.super Landroid/os/Handler;
.source "YellowPagesSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-virtual {v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    #getter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$200(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    #getter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->mVersionInfo:Lcn/com/zte/yp/update/zd/UpdateApkInfo;
    invoke-static {v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$100(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Lcn/com/zte/yp/update/zd/UpdateApkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->hasUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    const v1, 0x7f080053

    const v2, 0x7f080054

    #calls: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->showVersionDialog(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$300(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;II)V

    goto :goto_0

    .line 204
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-virtual {v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    #getter for: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$200(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 208
    :cond_4
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity$1;->this$0:Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    const v1, 0x7f080055

    const v2, 0x7f080056

    #calls: Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->showVersionDialog(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;->access$300(Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;II)V

    goto :goto_0
.end method
