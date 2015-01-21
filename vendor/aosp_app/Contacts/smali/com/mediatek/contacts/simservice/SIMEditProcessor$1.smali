.class Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;
.super Ljava/lang/Object;
.source "SIMEditProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnUiThread(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/simservice/SIMEditProcessor;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/simservice/SIMEditProcessor;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;->this$0:Lcom/mediatek/contacts/simservice/SIMEditProcessor;

    iput-object p2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1378
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deliverCallbackOnUiThread] notify listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->access$000()Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-static {}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->access$000()Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-static {}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->access$000()Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;->onSIMEditCompleted(Landroid/content/Intent;)V

    .line 1383
    :cond_0
    return-void
.end method
