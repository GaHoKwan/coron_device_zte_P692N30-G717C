.class Lcom/zte/retrieve/receiver/OperResReceiver$1;
.super Ljava/lang/Object;
.source "OperResReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/receiver/OperResReceiver;->sendOperResultReport(ILjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/receiver/OperResReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/receiver/OperResReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/receiver/OperResReceiver$1;->this$0:Lcom/zte/retrieve/receiver/OperResReceiver;

    iput-object p2, p0, Lcom/zte/retrieve/receiver/OperResReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/retrieve/receiver/OperResReceiver$1;->val$url:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 23
    new-instance v1, Lcom/zte/retrieve/cloud/CommunicationModule;

    iget-object v3, p0, Lcom/zte/retrieve/receiver/OperResReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/zte/retrieve/cloud/CommunicationModule;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, mCommunicationModule:Lcom/zte/retrieve/cloud/CommunicationModule;
    const/4 v2, -0x3

    .line 27
    .local v2, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/zte/retrieve/receiver/OperResReceiver$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/zte/retrieve/cloud/CommunicationModule;->communication(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    const/4 v2, -0x3

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resultcode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "means:network error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
