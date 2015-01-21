.class Lcom/mediatek/omacp/message/OmacpMessageList$1;
.super Landroid/content/BroadcastReceiver;
.source "OmacpMessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageList;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.omacp.capability.result"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "appId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, appId:Ljava/lang/String;
    const-string v1, "Omacp/OmacpMessageList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageList mResultReceiver received capability, appid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-nez v0, :cond_1

    .line 234
    const-string v1, "Omacp/OmacpMessageList"

    const-string v2, "OmacpMessageList mResultReceiver appid is null."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v0           #appId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local v0       #appId:Ljava/lang/String;
    :cond_1
    const-string v1, "w2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleBrowserCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$000(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_2
    const-string v1, "w4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ap0005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleMmsCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$100(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :cond_4
    const-string v1, "w7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleDmCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$200(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    :cond_5
    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "143"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    :cond_6
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleEmailCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$300(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    :cond_7
    const-string v1, "554"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleRtspCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$400(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    :cond_8
    const-string v1, "ap0004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 253
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleSuplCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$500(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :cond_9
    const-string v1, "w5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleDsCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$600(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_a
    const-string v1, "wA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 257
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList;->handleImpsCapability(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList;->access$700(Lcom/mediatek/omacp/message/OmacpMessageList;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 259
    :cond_b
    const-string v1, "Omacp/OmacpMessageList"

    const-string v2, "OmacpMessageList mResultReceiver appid unknown."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
