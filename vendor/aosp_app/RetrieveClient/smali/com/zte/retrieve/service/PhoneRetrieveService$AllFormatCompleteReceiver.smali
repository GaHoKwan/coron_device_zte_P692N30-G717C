.class Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRetrieveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/PhoneRetrieveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllFormatCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/PhoneRetrieveService;Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;-><init>(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 761
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #setter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->isErasing:Z
    invoke-static {v2, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$15(Lcom/zte/retrieve/service/PhoneRetrieveService;Z)V

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, resText:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #calls: Lcom/zte/retrieve/service/PhoneRetrieveService;->unregFormatReceiver()V
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$19(Lcom/zte/retrieve/service/PhoneRetrieveService;)V

    .line 764
    const-string v2, "result"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 765
    .local v1, rescode:I
    packed-switch v1, :pswitch_data_0

    .line 778
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->clientFlag:Z
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$20(Lcom/zte/retrieve/service/PhoneRetrieveService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    #getter for: Lcom/zte/retrieve/service/PhoneRetrieveService;->inComingNum:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/retrieve/service/PhoneRetrieveService;->access$11(Lcom/zte/retrieve/service/PhoneRetrieveService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v4, v4}, Lcom/zte/retrieve/utils/SMSSender;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 781
    :cond_0
    return-void

    .line 767
    :pswitch_1
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    const v3, 0x7f060080

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    goto :goto_0

    .line 770
    :pswitch_2
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    const v3, 0x7f060081

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    goto :goto_0

    .line 773
    :pswitch_3
    iget-object v2, p0, Lcom/zte/retrieve/service/PhoneRetrieveService$AllFormatCompleteReceiver;->this$0:Lcom/zte/retrieve/service/PhoneRetrieveService;

    const v3, 0x7f060082

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/service/PhoneRetrieveService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    goto :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
