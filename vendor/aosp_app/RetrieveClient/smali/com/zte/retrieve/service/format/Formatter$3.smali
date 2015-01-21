.class Lcom/zte/retrieve/service/format/Formatter$3;
.super Ljava/lang/Thread;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/format/Formatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/format/Formatter;

.field private final synthetic val$storagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/format/Formatter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    iput-object p2, p0, Lcom/zte/retrieve/service/format/Formatter$3;->val$storagePath:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "formatVolume storagePath is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter$3;->val$storagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter$3;->val$storagePath:Ljava/lang/String;

    #calls: Lcom/zte/retrieve/service/format/Formatter;->formatVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/zte/retrieve/service/format/Formatter;->access$2(Lcom/zte/retrieve/service/format/Formatter;Ljava/lang/String;)I

    move-result v1

    .line 142
    .local v1, res:I
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 143
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 144
    iget-object v2, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    #getter for: Lcom/zte/retrieve/service/format/Formatter;->mType:I
    invoke-static {v2}, Lcom/zte/retrieve/service/format/Formatter;->access$3(Lcom/zte/retrieve/service/format/Formatter;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 145
    iget-object v2, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    iget-object v2, v2, Lcom/zte/retrieve/service/format/Formatter;->formatHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    iget-object v2, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    #getter for: Lcom/zte/retrieve/service/format/Formatter;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/zte/retrieve/service/format/Formatter;->access$4(Lcom/zte/retrieve/service/format/Formatter;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter$3;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    #getter for: Lcom/zte/retrieve/service/format/Formatter;->mStorageListener:Landroid/os/storage/StorageEventListener;
    invoke-static {v3}, Lcom/zte/retrieve/service/format/Formatter;->access$5(Lcom/zte/retrieve/service/format/Formatter;)Landroid/os/storage/StorageEventListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 147
    return-void
.end method
