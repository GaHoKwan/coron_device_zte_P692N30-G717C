.class Lcom/android/browser/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$downloadIntent:Landroid/content/Intent;

.field final synthetic val$downloadTab:Lcom/android/browser/Tab;

.field final synthetic val$downloadTabControl:Lcom/android/browser/TabControl;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$downloadView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;Landroid/webkit/WebView;Lcom/android/browser/Tab;Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$8;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/Controller$8;->val$downloadIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/browser/Controller$8;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/android/browser/Controller$8;->val$downloadView:Landroid/webkit/WebView;

    iput-object p6, p0, Lcom/android/browser/Controller$8;->val$downloadTab:Lcom/android/browser/Tab;

    iput-object p7, p0, Lcom/android/browser/Controller$8;->val$downloadTabControl:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$downloadUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1217
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller$8;->val$downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, urlCookie:Ljava/lang/String;
    const-string v1, "browser/Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Controller$8;->val$downloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-eqz v0, :cond_0

    .line 1220
    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$downloadIntent:Landroid/content/Intent;

    const-string v2, "url-cookie"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    .end local v0           #urlCookie:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/Controller$8;->val$downloadIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1224
    const-string v1, "browser/Controller"

    const-string v2, "User decide to open the content by startActivity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$downloadView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$downloadView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/browser/Controller$8;->val$downloadTab:Lcom/android/browser/Tab;

    iget-object v2, p0, Lcom/android/browser/Controller$8;->val$downloadTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 1230
    iget-object v1, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1236
    :cond_1
    :goto_0
    return-void

    .line 1233
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller$8;->this$0:Lcom/android/browser/Controller;

    iget-object v2, p0, Lcom/android/browser/Controller$8;->val$downloadTab:Lcom/android/browser/Tab;

    invoke-virtual {v1, v2}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method
