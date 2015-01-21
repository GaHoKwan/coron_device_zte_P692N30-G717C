.class Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;
.super Ljava/lang/Object;
.source "AppInfoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/page/AppInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionButtonOnClickListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoItem;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoItem;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 354
    move-object v0, p1

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    .line 355
    .local v0, bton:Lcom/zte/update/ui/OptionButton;
    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 372
    :goto_0
    :pswitch_0
    return-void

    .line 358
    :pswitch_1
    new-instance v2, Lcom/zte/update/ui/pop/DownloadActionWithPop;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    #getter for: Lcom/zte/update/ui/page/AppInfoItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/update/ui/page/AppInfoItem;->access$000(Lcom/zte/update/ui/page/AppInfoItem;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/zte/update/ui/pop/DownloadActionWithPop;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/update/ui/pop/DownloadActionWithPop;->startAction()V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->stopDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_3
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;->this$0:Lcom/zte/update/ui/page/AppInfoItem;

    iget-object v1, v1, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->launchApp(Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
