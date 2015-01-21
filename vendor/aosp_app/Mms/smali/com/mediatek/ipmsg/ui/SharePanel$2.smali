.class Lcom/mediatek/ipmsg/ui/SharePanel$2;
.super Ljava/lang/Object;
.source "SharePanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/SharePanel;->addSharePage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/SharePanel;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/SharePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$300(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 219
    .local v3, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v5

    if-nez v5, :cond_5

    .line 221
    const v5, 0x7f0f016e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 222
    .local v4, text:Landroid/widget/TextView;
    const-string v5, "Mms/ipmsg/SharePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, actionPosition:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    const/4 v0, -0x1

    .line 236
    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$600()[I

    move-result-object v5

    array-length v5, v5

    if-lt v0, v5, :cond_4

    .line 257
    .end local v4           #text:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-void

    .line 227
    .restart local v4       #text:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$500(Lcom/mediatek/ipmsg/ui/SharePanel;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 228
    const-string v5, "Mms/ipmsg/SharePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "source[i]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$500(Lcom/mediatek/ipmsg/ui/SharePanel;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mSource:[Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$500(Lcom/mediatek/ipmsg/ui/SharePanel;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    move v0, v2

    .line 231
    goto :goto_0

    .line 227
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 239
    .end local v2           #i:I
    :cond_4
    const-string v5, "shareAction"

    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$600()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    .end local v4           #text:Landroid/widget/TextView;
    :goto_3
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 255
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->what:I

    .line 256
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$300(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 240
    .end local v0           #actionPosition:I
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #getter for: Lcom/mediatek/ipmsg/ui/SharePanel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$400(Lcom/mediatek/ipmsg/ui/SharePanel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #calls: Lcom/mediatek/ipmsg/ui/SharePanel;->getActionId(I)I
    invoke-static {v5, p3}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$700(Lcom/mediatek/ipmsg/ui/SharePanel;I)I

    move-result v0

    .line 243
    .restart local v0       #actionPosition:I
    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$800()[I

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 246
    const-string v5, "shareAction"

    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$800()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 248
    .end local v0           #actionPosition:I
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/SharePanel$2;->this$0:Lcom/mediatek/ipmsg/ui/SharePanel;

    #calls: Lcom/mediatek/ipmsg/ui/SharePanel;->getActionId(I)I
    invoke-static {v5, p3}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$700(Lcom/mediatek/ipmsg/ui/SharePanel;I)I

    move-result v0

    .line 249
    .restart local v0       #actionPosition:I
    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$900()[I

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 252
    const-string v5, "shareAction"

    invoke-static {}, Lcom/mediatek/ipmsg/ui/SharePanel;->access$900()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3
.end method
