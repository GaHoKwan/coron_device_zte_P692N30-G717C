.class Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver$1;
.super Ljava/lang/Object;
.source "PhoneRetrieveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    :try_start_0
    const-string v1, "Send sms after 3s "

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->d(Ljava/lang/String;)V

    .line 396
    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 397
    iget-object v1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver$1;->this$1:Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;->access$1(Lcom/zte/retrieve/service/PhoneRetrieveService$ChangeCardSmsReceiver;)Lcom/zte/retrieve/service/PhoneRetrieveService;

    move-result-object v1

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->sendSmsInformSecurityNum()V
    invoke-static {v1}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$9(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
