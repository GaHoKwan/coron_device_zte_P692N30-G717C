.class Lcom/mediatek/lbs/em/LbsMap$1;
.super Ljava/lang/Object;
.source "LbsMap.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMap;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-nez v3, :cond_1

    .line 85
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->updateMyPosition()V
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$000(Lcom/mediatek/lbs/em/LbsMap;)V

    .line 121
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 87
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->openDialogLatlng(Z)V
    invoke-static {v3, v1}, Lcom/mediatek/lbs/em/LbsMap;->access$100(Lcom/mediatek/lbs/em/LbsMap;Z)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 89
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->openDialogAddr()V
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$200(Lcom/mediatek/lbs/em/LbsMap;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 92
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:enableTag("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsMap;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/mediatek/lbs/em/FileBrowser;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-virtual {v1, v0}, Lcom/mediatek/lbs/em/LbsMap;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 97
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v3

    const-string v4, "javascript:removeNmeaPoint()"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsMap;->access$400(Lcom/mediatek/lbs/em/LbsMap;)Landroid/widget/PopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_0

    .line 99
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v3, v2, :cond_a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    :cond_8
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:showNmeaPath()"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_9
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:hideNmeaPath()"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v3, v2, :cond_d

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    :cond_b
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 109
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:showNmeaMarker()"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_c
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:hideNmeaMarker()"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    :cond_e
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 116
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:enableGpsTrackingPoint(true)"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_f
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$1;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "javascript:enableGpsTrackingPoint(false)"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
