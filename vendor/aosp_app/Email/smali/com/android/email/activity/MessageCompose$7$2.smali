.class Lcom/android/email/activity/MessageCompose$7$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$7;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$7;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7$2;->this$1:Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1328
    const-string v0, "MessageCompose"

    const-string v1, "postDelayed 1000ms for Edit draft action, to ignore TextChange callback trigered by RecipientView "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7$2;->this$1:Lcom/android/email/activity/MessageCompose$7;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;Z)V

    .line 1331
    return-void
.end method
