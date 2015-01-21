.class Lcom/android/keychain/KeyChainActivity$4;
.super Ljava/lang/Object;
.source "KeyChainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keychain/KeyChainActivity;->displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keychain/KeyChainActivity;


# direct methods
.method constructor <init>(Lcom/android/keychain/KeyChainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$4;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$4;->this$0:Lcom/android/keychain/KeyChainActivity;

    #getter for: Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/keychain/KeyChainActivity;->access$600(Lcom/android/keychain/KeyChainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 275
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity$4;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->install(Landroid/content/Context;)V

    .line 276
    return-void
.end method
