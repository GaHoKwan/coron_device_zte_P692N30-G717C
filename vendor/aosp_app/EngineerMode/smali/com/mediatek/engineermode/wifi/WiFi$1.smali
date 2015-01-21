.class Lcom/mediatek/engineermode/wifi/WiFi$1;
.super Landroid/os/Handler;
.source "WiFi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFi;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFi;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 106
    const/16 v2, 0x11

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 108
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #calls: Lcom/mediatek/engineermode/wifi/WiFi;->checkWiFiChipStatus()V
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFi;->access$000(Lcom/mediatek/engineermode/wifi/WiFi;)V

    .line 109
    const-string v2, "EM/WiFi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Handle event is : HANDLER_EVENT_INIT, miChipID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I
    invoke-static {v4}, Lcom/mediatek/engineermode/wifi/WiFi;->access$100(Lcom/mediatek/engineermode/wifi/WiFi;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x7f0801ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x7f0801cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x7f0801d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x7f0801d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x7f08047a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    const v3, 0x1090003

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 120
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFi;->access$200(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFi;

    #calls: Lcom/mediatek/engineermode/wifi/WiFi;->showVersion()V
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFi;->access$300(Lcom/mediatek/engineermode/wifi/WiFi;)V

    .line 122
    invoke-static {}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getSupportChannels()V

    .line 124
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
