.class Lcom/android/email/Controller$9;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteMessage(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$9;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1081
    const-string v0, "Controller#deleteMessage"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$9;->val$messageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteMessageSync(J)V

    .line 1083
    const-string v0, "Controller#deleteMessage"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1084
    return-void
.end method