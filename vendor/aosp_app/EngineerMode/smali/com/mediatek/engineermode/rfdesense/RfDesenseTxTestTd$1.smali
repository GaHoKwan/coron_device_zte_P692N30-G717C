.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;
.super Ljava/lang/Object;
.source "RfDesenseTxTestTd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->checkValues()Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 113
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/ModemCategory;->getModemType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 119
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    aget-object v0, v4, v5

    .line 123
    .local v0, band:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, channel:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, power:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AT+ERFTX=0,0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, command:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    const-string v5, ""

    invoke-virtual {v4, v2, v5, v6}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 130
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iput v6, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    goto/16 :goto_0

    .line 121
    .end local v0           #band:Ljava/lang/String;
    .end local v1           #channel:Ljava/lang/String;
    .end local v2           #command:Ljava/lang/String;
    .end local v3           #power:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    aget-object v0, v4, v5

    .restart local v0       #band:Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v0           #band:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    const-string v5, "AT+ERFTX=0,1"

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 138
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v4, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iget-object v5, v5, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    iput v7, v4, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    goto/16 :goto_0

    .line 143
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd$1;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestTd;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0b03bb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
