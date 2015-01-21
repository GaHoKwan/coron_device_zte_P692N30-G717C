.class Lcom/android/email/ControllerResultUiThreadWrapper$5;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->synchronizeEnvelopeFinished(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$5;,"Lcom/android/email/ControllerResultUiThreadWrapper.5;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-wide p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$5;,"Lcom/android/email/ControllerResultUiThreadWrapper.5;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/Controller$Result;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$5;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller$Result;->synchronizeEnvelopeFinished(JJ)V

    goto :goto_0
.end method
