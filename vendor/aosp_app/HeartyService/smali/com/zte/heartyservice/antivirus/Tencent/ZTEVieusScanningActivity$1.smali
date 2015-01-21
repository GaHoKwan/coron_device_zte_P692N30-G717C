.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;
.super Landroid/os/Handler;
.source "ZTEVieusScanningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 94
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/4 p1, 0x0

    .line 98
    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;

    .line 102
    .local v2, result:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v4, v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->records:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    .line 103
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v4, v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->scanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mScanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;
    invoke-static {v3, v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$102(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;)Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    .line 104
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I
    invoke-static {v3, v4}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$202(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;I)I

    .line 109
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->setDataList(Ljava/util/List;)V

    .line 110
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mVirusScanResultAdapter:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mResultListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$400(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 115
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContentShower:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 121
    .end local v2           #result:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;
    :pswitch_2
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z
    invoke-static {v3, v6}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$502(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Z)Z

    .line 122
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "0%"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    :pswitch_3
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #setter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->scanCompleted:Z
    invoke-static {v3, v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$502(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;Z)Z

    .line 128
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->endAnimation()V
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$700(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V

    .line 130
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I

    move-result v3

    if-nez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0269

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mImageBtnText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$1000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0050

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 144
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$900(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a026c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mQresultnum:I
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, data:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 151
    .end local v0           #data:Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mTitleText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$800(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 155
    .local v1, progress:I
    if-ltz v1, :cond_0

    const/16 v3, 0x63

    if-gt v1, v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->mProgress:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
