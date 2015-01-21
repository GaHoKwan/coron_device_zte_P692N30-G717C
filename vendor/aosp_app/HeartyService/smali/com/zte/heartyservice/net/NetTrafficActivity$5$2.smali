.class Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;
.super Ljava/lang/Object;
.source "NetTrafficActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 398
    move-object v4, p1

    check-cast v4, Landroid/app/Dialog;

    const v5, 0x7f0e01bd

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 400
    .local v0, editor:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, value:Ljava/lang/String;
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const v4, 0x7f0e03c3

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-virtual {v4}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getText()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, unit:Ljava/lang/String;
    const/4 v1, -0x1

    .line 407
    .local v1, flowSize:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    mul-int/lit16 v1, v1, 0x400

    .line 414
    :cond_0
    if-gtz v1, :cond_1

    .line 415
    const/4 v1, -0x1

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v5, v5, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonthThreshold(II)V

    .line 419
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.zte.heartyservice.appwidget.WidgetReceiver.updateTraffic"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetTrafficActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 422
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v5, v5, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #getter for: Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 423
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    const v5, 0x7f0a0587

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 428
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 429
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustTraffic()V
    invoke-static {v4}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$800(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    .line 430
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    const/4 v5, 0x0

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v4, v5}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    .line 431
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-static {v4, v0}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 432
    return-void

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$5$2;->this$1:Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    const v5, 0x7f0a00e5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
