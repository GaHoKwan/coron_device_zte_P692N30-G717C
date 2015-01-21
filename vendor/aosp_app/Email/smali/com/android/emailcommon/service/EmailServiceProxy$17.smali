.class Lcom/android/emailcommon/service/EmailServiceProxy$17;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

.field final synthetic val$mailboxId:J

.field final synthetic val$saveToSent:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$accountId:J

    iput-wide p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$mailboxId:J

    iput-object p6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$uri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    iput-boolean p8, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$saveToSent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$accountId:J

    iget-wide v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$mailboxId:J

    iget-object v5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$uri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$callback:Lcom/android/emailcommon/service/EmailExternalCalls;

    iget-boolean v7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$17;->val$saveToSent:Z

    invoke-interface/range {v0 .. v7}, Lcom/android/emailcommon/service/IEmailService;->sendMessageForBT(JJLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V

    .line 520
    return-void
.end method
