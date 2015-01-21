.class Lcom/zte/heartyservice/net/NetSettingListener$1;
.super Ljava/lang/Object;
.source "NetSettingListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/NetSettingListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetSettingListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetSettingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0x7f0a00e4

    .line 115
    move-object v5, p1

    check-cast v5, Landroid/app/Dialog;

    const v6, 0x7f0e01bd

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, value:Ljava/lang/String;
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    const v5, 0x7f0e03c3

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;

    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker;->getText()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, unit:Ljava/lang/String;
    const/4 v0, -0x1

    .line 123
    .local v0, flowSize:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    :cond_0
    const/4 v2, 0x0

    .line 128
    .local v2, showStr:Ljava/lang/String;
    if-gtz v0, :cond_1

    .line 129
    const/4 v0, -0x1

    .line 130
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v5

    const v6, 0x7f0a00e6

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_0
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingListener;->access$100(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonthThreshold(I)V

    .line 145
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.zte.heartyservice.appwidget.WidgetReceiver.updateTraffic"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    iget-object v5, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v5}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v5

    const v6, 0x7f0e01dc

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    .local v1, maxMonthFlowTxt:Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void

    .line 132
    .end local v1           #maxMonthFlowTxt:Landroid/widget/TextView;
    :cond_1
    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    mul-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 136
    :cond_2
    const/16 v5, 0x400

    if-lt v0, v5, :cond_3

    rem-int/lit16 v5, v0, 0x400

    if-nez v5, :cond_3

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v6, v0, 0x400

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 139
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/net/NetSettingListener$1;->this$0:Lcom/zte/heartyservice/net/NetSettingListener;

    #getter for: Lcom/zte/heartyservice/net/NetSettingListener;->mContext:Lcom/zte/heartyservice/net/NetSettingActivity;
    invoke-static {v6}, Lcom/zte/heartyservice/net/NetSettingListener;->access$000(Lcom/zte/heartyservice/net/NetSettingListener;)Lcom/zte/heartyservice/net/NetSettingActivity;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/net/NetSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
