.class Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$2;
.super Ljava/lang/Object;
.source "ZTEPrivacyAppLockDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$2;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 82
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 87
    invoke-static {}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$200()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$2;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 96
    return-void
.end method
