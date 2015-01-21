.class Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$1;
.super Ljava/lang/Object;
.source "BaiduOAuthViaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;


# direct methods
.method constructor <init>(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$1;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$1;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-virtual {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->dismiss()V

    .line 276
    const/4 v0, 0x0

    return v0
.end method
