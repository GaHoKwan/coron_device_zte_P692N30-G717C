.class Lcom/android/email/service/EmailBroadcastProcessorService$1;
.super Ljava/lang/Object;
.source "EmailBroadcastProcessorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EmailBroadcastProcessorService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EmailBroadcastProcessorService;


# direct methods
.method constructor <init>(Lcom/android/email/service/EmailBroadcastProcessorService;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/email/service/EmailBroadcastProcessorService$1;->this$0:Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService$1;->this$0:Lcom/android/email/service/EmailBroadcastProcessorService;

    const v1, 0x7f08000b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService$1;->this$0:Lcom/android/email/service/EmailBroadcastProcessorService;

    const v1, 0x7f08000c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method
