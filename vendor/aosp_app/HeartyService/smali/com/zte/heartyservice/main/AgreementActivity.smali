.class public Lcom/zte/heartyservice/main/AgreementActivity;
.super Landroid/app/Activity;
.source "AgreementActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/AgreementActivity;->setContentView(I)V

    .line 14
    const v1, 0x7f0e0020

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/AgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 15
    .local v0, webView:Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/agreement.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    return-void
.end method
