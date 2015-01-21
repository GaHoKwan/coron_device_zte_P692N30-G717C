.class Lcom/zte/heartyservice/net/NetTrafficActivity$5;
.super Ljava/lang/Object;
.source "NetTrafficActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 345
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$600(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 346
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 347
    new-instance v1, Lcom/zte/heartyservice/net/NetTrafficActivity$5$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$5$1;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity$5;)V

    .line 382
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    const v3, 0x7f0a0107

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    .line 447
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 393
    new-instance v1, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity$5;)V

    .line 434
    .restart local v1       #listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;I)Landroid/app/Dialog;

    goto :goto_0

    .line 442
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$600(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 443
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->showAdjDialog()V
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$500(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustTraffic()V
    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$800(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    goto :goto_0
.end method
