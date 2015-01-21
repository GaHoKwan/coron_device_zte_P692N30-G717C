.class Lcom/mediatek/lbs/em/LbsMap$3;
.super Landroid/content/BroadcastReceiver;
.source "LbsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, action:Ljava/lang/String;
    const-string v10, "com.mediatek.lbs.em.loadnmea"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "nmeaFile"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, nmeaFile:Ljava/lang/String;
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->loadNmea(Ljava/lang/String;)V
    invoke-static {v10, v9}, Lcom/mediatek/lbs/em/LbsMap;->access$500(Lcom/mediatek/lbs/em/LbsMap;Ljava/lang/String;)V

    .line 172
    .end local v9           #nmeaFile:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v10, "com.mediatek.lbs.em.fix"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 150
    .local v2, bundle:Landroid/os/Bundle;
    const-string v10, "lat"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 151
    .local v4, lat:D
    const-string v10, "lng"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 152
    .local v6, lng:D
    const-string v10, "hasAcc"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 153
    .local v3, hasAcc:Z
    const-string v10, "acc"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 154
    .local v0, acc:F
    const-string v10, "needGoTo"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 156
    .local v8, needGoTo:Z
    if-nez v3, :cond_2

    .line 157
    const/high16 v0, -0x4080

    .line 159
    :cond_2
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:showMarkerOnly("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    if-eqz v8, :cond_0

    .line 163
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v10

    const-string v11, "javascript:setEnableTracking(false)"

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:moveTo("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 165
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "javascript:setProperZoom("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v0           #acc:F
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #hasAcc:Z
    .end local v4           #lat:D
    .end local v6           #lng:D
    .end local v8           #needGoTo:Z
    :cond_3
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 168
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mIsEnable:Z
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$600(Lcom/mediatek/lbs/em/LbsMap;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->isNetworkAvailable()Z
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$700(Lcom/mediatek/lbs/em/LbsMap;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 169
    iget-object v10, p0, Lcom/mediatek/lbs/em/LbsMap$3;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->setupWebView()V
    invoke-static {v10}, Lcom/mediatek/lbs/em/LbsMap;->access$800(Lcom/mediatek/lbs/em/LbsMap;)V

    goto/16 :goto_0
.end method
