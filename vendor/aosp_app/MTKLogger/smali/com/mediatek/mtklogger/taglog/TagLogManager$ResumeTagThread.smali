.class Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;
.super Ljava/lang/Thread;
.source "TagLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/taglog/TagLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResumeTagThread"
.end annotation


# instance fields
.field targetFolder:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "targetFolderStr"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->targetFolder:Ljava/lang/String;

    .line 708
    iput-object p2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->targetFolder:Ljava/lang/String;

    .line 709
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    const-string v0, "MTKLogger/TagLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -->Begin ResumeTagThread, targetFolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->targetFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->this$0:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->targetFolder:Ljava/lang/String;

    #calls: Lcom/mediatek/mtklogger/taglog/TagLogManager;->tagSelectedLogFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->access$2800(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V

    .line 716
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, " <--ResumeTagThread end, resume taglog finished."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method
