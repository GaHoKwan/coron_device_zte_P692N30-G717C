.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;
.super Landroid/os/Handler;
.source "BluetoothFtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 198
    const/4 v8, 0x0

    .local v8, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 201
    .local v1, message:Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 203
    :sswitch_0
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7df

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto :goto_0

    .line 207
    :sswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_0

    .line 220
    :goto_1
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->dismissProgressDialog()V
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    .line 221
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f07006b

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V
    invoke-static {v9, v10}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto :goto_1

    .line 212
    :pswitch_1
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f07006c

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V
    invoke-static {v9, v10}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    goto :goto_1

    .line 225
    :sswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_1

    .line 226
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7df

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    const/4 v4, 0x0

    .line 229
    .local v4, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 231
    .local v5, showEx:Z
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 232
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__ftpc_path_root__"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070075

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    const/4 v5, 0x1

    .line 243
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070073

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 244
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070074

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v5, :cond_5

    .line 249
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertExDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__ftpc_path_parent__"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070076

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    const/4 v5, 0x1

    goto :goto_2

    .line 239
    :cond_4
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 251
    :cond_5
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #showEx:Z
    :sswitch_3
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->parseFolderContent()V
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    goto/16 :goto_0

    .line 263
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_6

    .line 266
    const-string v9, "progress"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 267
    .local v2, p:J
    const-string v9, "total"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 273
    .local v6, t:J
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mMultipleTransfer:Z
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$700(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 274
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_7

    .line 275
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgressMode(I)V

    .line 276
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 277
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    invoke-static {v2, v3, v6, v7}, Lcom/mediatek/bluetooth/ftp/Utils;->getPercentage(JJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto/16 :goto_0

    .line 269
    .end local v2           #p:J
    .end local v6           #t:J
    :cond_6
    const-string v9, "BluetoothFtpClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BT][FTP] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with null data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    .restart local v2       #p:J
    .restart local v6       #t:J
    :cond_7
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setIndeterminate(Z)V

    .line 280
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mProgressDialog:Lcom/mediatek/bluetooth/ftp/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$800(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Lcom/mediatek/bluetooth/ftp/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lcom/mediatek/bluetooth/ftp/ProgressDialog;->setProgress(J)V

    goto/16 :goto_0

    .line 288
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #p:J
    .end local v6           #t:J
    :sswitch_5
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    iget v10, p1, Landroid/os/Message;->what:I

    iget v11, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateOrDismissTransferringDialog(II)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$900(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;II)V

    goto/16 :goto_0

    .line 292
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_8

    .line 293
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7df

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_8
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070079

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f07007a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mCurrentItem:Ljava/lang/String;
    invoke-static {v12}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :sswitch_7
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f07007b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f07007c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->mNameToCreate:Ljava/lang/String;
    invoke-static {v12}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v8, v1}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :sswitch_8
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7e4

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :sswitch_9
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7e5

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 324
    :sswitch_a
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1102(Lcom/mediatek/bluetooth/ftp/XMLParsingThread;)Lcom/mediatek/bluetooth/ftp/XMLParsingThread;

    .line 325
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 327
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const v10, 0x7f070072

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->showTextToast(I)V
    invoke-static {v9, v10}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;I)V

    .line 330
    :cond_9
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->updateUI()V
    invoke-static {v9}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$1200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;)V

    goto/16 :goto_0

    .line 334
    :sswitch_b
    const-string v9, "BluetoothFtpClient"

    const-string v10, "[BT][FTP] Some error occurred. We need to disconnect and finish."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v9, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;

    const/16 v10, 0x7de

    const/4 v11, 0x0

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->execOperation(ILjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpClient;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x2a -> :sswitch_5
        0x2c -> :sswitch_2
        0x2e -> :sswitch_6
        0x30 -> :sswitch_7
        0x31 -> :sswitch_1
        0x7d1 -> :sswitch_a
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_9
        0x7d4 -> :sswitch_b
    .end sparse-switch

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
