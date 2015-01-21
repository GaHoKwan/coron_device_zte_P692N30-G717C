.class Lcom/android/email/service/EmailExternalOmacpService$1;
.super Landroid/os/Handler;
.source "EmailExternalOmacpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailExternalOmacpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailExternalOmacpService;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailExternalOmacpService;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/email/service/EmailExternalOmacpService$1;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    .line 128
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService$1;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->addAccount(Lcom/android/emailcommon/provider/Account;)V
    invoke-static {v1, v0}, Lcom/android/email/service/EmailExternalOmacpService;->access$000(Lcom/android/email/service/EmailExternalOmacpService;Lcom/android/emailcommon/provider/Account;)V

    .line 129
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService$1;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendResultToOmacp(Z)V
    invoke-static {v1, v2}, Lcom/android/email/service/EmailExternalOmacpService;->access$100(Lcom/android/email/service/EmailExternalOmacpService;Z)V

    .line 133
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/email/service/EmailExternalOmacpService$1;->this$0:Lcom/android/email/service/EmailExternalOmacpService;

    const/4 v2, 0x0

    #calls: Lcom/android/email/service/EmailExternalOmacpService;->sendResultToOmacp(Z)V
    invoke-static {v1, v2}, Lcom/android/email/service/EmailExternalOmacpService;->access$100(Lcom/android/email/service/EmailExternalOmacpService;Z)V

    goto :goto_0
.end method
