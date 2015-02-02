.class public Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;
.super Landroid/os/AsyncTask;
.source "BtList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bluetooth/BtList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FunctionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/BtList;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/bluetooth/BtList;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    new-instance v2, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$002(Lcom/mediatek/engineermode/bluetooth/BtList;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 230
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$100(Lcom/mediatek/engineermode/bluetooth/BtList;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$102(Lcom/mediatek/engineermode/bluetooth/BtList;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$100(Lcom/mediatek/engineermode/bluetooth/BtList;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 235
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$000(Lcom/mediatek/engineermode/bluetooth/BtList;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->isBLESupport()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 236
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$202(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$000(Lcom/mediatek/engineermode/bluetooth/BtList;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->isComboSupport()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 242
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$302(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z

    .line 246
    :goto_1
    const-string v1, "EM/BTList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLE supported ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$200(Lcom/mediatek/engineermode/bluetooth/BtList;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;
    invoke-static {v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$000(Lcom/mediatek/engineermode/bluetooth/BtList;)Lcom/mediatek/engineermode/bluetooth/BtTest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getChipId()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$402(Lcom/mediatek/engineermode/bluetooth/BtList;I)I

    .line 261
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$202(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$302(Lcom/mediatek/engineermode/bluetooth/BtList;Z)Z

    goto :goto_1

    .line 252
    :cond_3
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "EM/BTList"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const v5, 0x7f0802a2

    const/16 v4, 0x10

    .line 267
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$502(Lcom/mediatek/engineermode/bluetooth/BtList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 273
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v1, "EM/BTList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chipId@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I
    invoke-static {v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$400(Lcom/mediatek/engineermode/bluetooth/BtList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v1, "EM/BTList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6620@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "EM/BTList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x6620@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v2, 0x7f0802a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mChipId:I
    invoke-static {v2}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$400(Lcom/mediatek/engineermode/bluetooth/BtList;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mBleSupport:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$200(Lcom/mediatek/engineermode/bluetooth/BtList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mComboSupport:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$300(Lcom/mediatek/engineermode/bluetooth/BtList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0802d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v3, 0x7f0805b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    #getter for: Lcom/mediatek/engineermode/bluetooth/BtList;->mModuleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/engineermode/bluetooth/BtList;->access$500(Lcom/mediatek/engineermode/bluetooth/BtList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 306
    .local v0, moduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    invoke-virtual {v1, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->this$0:Lcom/mediatek/engineermode/bluetooth/BtList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 311
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BtList$FunctionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
