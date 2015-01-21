.class Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;
.super Ljava/lang/Object;
.source "RfDesenseTxTestBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    const-wide/16 v11, 0x3e8

    const/4 v10, 0x4

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->checkValues()Z

    move-result v7

    if-nez v7, :cond_0

    .line 240
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 241
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v8, v8, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 245
    :cond_0
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v8, v8, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mBand:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    aget-object v1, v7, v8

    .line 247
    .local v1, band:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mChannel:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, channel:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPower:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, power:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mAfc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, afc:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mTsc:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$Editor;->getText()Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, tsc:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v8, v8, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    aget-object v4, v7, v8

    .line 253
    .local v4, pattern:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AT+ERFTX=2,1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, command:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    const-string v8, ""

    invoke-virtual {v7, v3, v8, v9}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 259
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v8, v8, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 260
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iput v9, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    goto/16 :goto_0

    .line 264
    .end local v0           #afc:Ljava/lang/String;
    .end local v1           #band:Ljava/lang/String;
    .end local v2           #channel:Ljava/lang/String;
    .end local v3           #command:Ljava/lang/String;
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #power:Ljava/lang/String;
    .end local v6           #tsc:Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    const-string v8, "AT+ERFTX=2,0"

    const-string v9, ""

    invoke-virtual {v7, v8, v9, v13}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->sendAtCommand(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->disableAllButtons()V

    .line 267
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v7, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iget-object v8, v8, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mHandler:Landroid/os/Handler;

    invoke-static {v8, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 268
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    iput v13, v7, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;->mState:I

    goto/16 :goto_0

    .line 272
    :pswitch_2
    iget-object v7, p0, Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase$2;->this$0:Lcom/mediatek/engineermode/rfdesense/RfDesenseTxTestBase;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03bb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
