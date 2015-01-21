.class public Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetrieveLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/RetrieveLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/zte/retrieve/service/RetrieveLockView$MmsReceiver;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->unregMmsReceiver()V
    invoke-static {v1}, Lcom/zte/retrieve/service/RetrieveLockView;->access$7(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 583
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 584
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MmsReceiver\'s result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 585
    return-void
.end method
