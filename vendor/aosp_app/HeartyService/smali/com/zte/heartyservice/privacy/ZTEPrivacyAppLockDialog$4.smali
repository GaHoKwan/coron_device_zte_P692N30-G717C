.class Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$4;
.super Ljava/lang/Object;
.source "ZTEPrivacyAppLockDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$4;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 125
    :pswitch_0
    const-string v2, "ZTEPrivacyAppLockDialog"

    const-string v3, "KEYCODE_BACK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->backToHome()V

    .line 127
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->access$202(I)I

    .line 128
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog$4;->this$0:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    iget-object v2, v2, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v1, "ZTEPrivacyAppLockDialog"

    const-string v2, "KEYCODE_HOME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->backToHome()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
