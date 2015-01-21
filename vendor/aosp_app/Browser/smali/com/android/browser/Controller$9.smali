.class Lcom/android/browser/Controller$9;
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

.field final synthetic val$downloadContentDisposition:Ljava/lang/String;

.field final synthetic val$downloadContentLength:J

.field final synthetic val$downloadMimetype:Ljava/lang/String;

.field final synthetic val$downloadTab:Lcom/android/browser/Tab;

.field final synthetic val$downloadTabControl:Lcom/android/browser/TabControl;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$downloadUserAgent:Ljava/lang/String;

.field final synthetic val$downloadView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;JLcom/android/browser/Tab;Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/browser/Controller$9;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/browser/Controller$9;->val$downloadUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/Controller$9;->val$downloadUserAgent:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/Controller$9;->val$downloadContentDisposition:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/browser/Controller$9;->val$downloadMimetype:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/browser/Controller$9;->val$downloadView:Landroid/webkit/WebView;

    iput-wide p8, p0, Lcom/android/browser/Controller$9;->val$downloadContentLength:J

    iput-object p10, p0, Lcom/android/browser/Controller$9;->val$downloadTab:Lcom/android/browser/Tab;

    iput-object p11, p0, Lcom/android/browser/Controller$9;->val$downloadTabControl:Lcom/android/browser/TabControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/browser/Controller$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/Controller$9;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/Controller$9;->val$downloadUserAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/Controller$9;->val$downloadContentDisposition:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/Controller$9;->val$downloadMimetype:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/Controller$9;->val$downloadView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v6

    iget-wide v7, p0, Lcom/android/browser/Controller$9;->val$downloadContentLength:J

    invoke-static/range {v0 .. v8}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 1197
    const-string v0, "browser/Controller"

    const-string v1, "User decide to download the content"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/browser/Controller$9;->val$downloadView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller$9;->val$downloadView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/browser/Controller$9;->val$downloadTab:Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/Controller$9;->val$downloadTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/browser/Controller$9;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller$9;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$9;->val$downloadTab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method
