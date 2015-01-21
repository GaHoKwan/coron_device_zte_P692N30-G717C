.class final Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;
.super Ltmsdk/fg/module/qscanner/QScanListenerV2;
.source "ZTEVieusScanningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyQScanListener"
.end annotation


# instance fields
.field private addTextBuilder:Ljava/lang/StringBuffer;

.field private addTextMsg:Landroid/os/Message;

.field private mSb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/QScanListenerV2;-><init>()V

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextBuilder:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V

    return-void
.end method

.method private addText(Ljava/lang/String;Z)V
    .locals 6
    .parameter "text"
    .parameter "isShow"

    .prologue
    const/4 v5, 0x0

    .line 740
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_0

    .line 741
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextBuilder:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 746
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    .local v1, line:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 749
    .end local v1           #line:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1908(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    .line 750
    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextMsg:Landroid/os/Message;

    .line 751
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextMsg:Landroid/os/Message;

    iput v5, v2, Landroid/os/Message;->what:I

    .line 752
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextMsg:Landroid/os/Message;

    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextBuilder:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 753
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTextMsg:Landroid/os/Message;

    const-wide/16 v4, 0x23

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 755
    :cond_3
    return-void
.end method

.method private addTitleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 728
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 729
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 730
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 732
    return-void
.end method

.method private publishProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 735
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 736
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    return-void
.end method


# virtual methods
.method public onScanCanceled(I)V
    .locals 2
    .parameter "scanType"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 584
    return-void
.end method

.method public onScanError(II)V
    .locals 3
    .parameter "scanType"
    .parameter "errCode"

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0200

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 601
    return-void
.end method

.method public onScanFinished(ILjava/util/List;)V
    .locals 3
    .parameter "scanType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    const/4 v2, 0x1

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 534
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScanPaused(I)V
    .locals 2
    .parameter "scanType"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 589
    return-void
.end method

.method public onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V
    .locals 5
    .parameter "scanType"
    .parameter "progress"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 605
    packed-switch p1, :pswitch_data_0

    .line 627
    :goto_0
    return-void

    .line 607
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->publishProgress(I)V

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 612
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 618
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->publishProgress(I)V

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 622
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->publishProgress(I)V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScanStarted(I)V
    .locals 4
    .parameter "scanType"

    .prologue
    const/4 v3, 0x1

    .line 559
    packed-switch p1, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 561
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0201

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 563
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 564
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 565
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addTitleText(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 573
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scanOver(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, paramList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/qscanner/QScanResultEntity;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 505
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->mSb:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 506
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0206

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, data:Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 508
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J
    invoke-static {v6}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J
    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1202(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;J)J

    .line 509
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0208

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanTime:J
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-direct {p0, v0, v9}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->addText(Ljava/lang/String;Z)V

    .line 511
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->generateScanReport(Ljava/util/List;)V
    invoke-static {v3, p1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1700(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Ljava/util/List;)V

    .line 512
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mHandle:Landroid/os/Handler;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 513
    .local v2, msg1:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 514
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 518
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v3, "from"

    const-string v4, "antivirus"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    sget-object v3, Lcom/zte/heartyservice/indicator/NoticeProvider;->NOTICE_VIRUS_VIEWED_KEY:Ljava/lang/String;

    sget-object v4, Lcom/zte/heartyservice/indicator/NoticeProvider;->NOTICE_VIRUS_VIEWED:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$MyQScanListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    const-string v3, "zhangchi"

    const-string v4, "EXTRA_NOTIFICATION_FROM_ANTIVIRUS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void
.end method
