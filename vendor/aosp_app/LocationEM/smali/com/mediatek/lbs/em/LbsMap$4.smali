.class Lcom/mediatek/lbs/em/LbsMap$4;
.super Landroid/webkit/WebViewClient;
.source "LbsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMap;->setupWebView()V
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
    .line 178
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$4;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$4;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #calls: Lcom/mediatek/lbs/em/LbsMap;->updateMyPosition()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$000(Lcom/mediatek/lbs/em/LbsMap;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$4;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$300(Lcom/mediatek/lbs/em/LbsMap;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:enableTag(false)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    return-void
.end method
