.class Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;
.super Ljava/lang/Object;
.source "AppInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/AppInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionButtonOnClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/AppInfoActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/AppInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 403
    move-object v0, p1

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    .line 404
    .local v0, bton:Lcom/zte/update/ui/OptionButton;
    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 407
    :pswitch_0
    new-instance v2, Lcom/zte/update/ui/pop/DownloadActionWithPop;

    iget-object v3, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    iget-object v1, v1, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/zte/update/ui/pop/DownloadActionWithPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/update/ui/pop/DownloadActionWithPop;->startAction()V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    iget-object v1, v1, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->stopDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_2
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    iget-object v1, v1, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->launchApp(Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :pswitch_3
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/AppInfoActivity;

    iget-object v1, v1, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->stopClearDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
