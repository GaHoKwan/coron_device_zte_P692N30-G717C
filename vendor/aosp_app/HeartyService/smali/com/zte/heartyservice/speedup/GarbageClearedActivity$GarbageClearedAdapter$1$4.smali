.class Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;
.super Ljava/lang/Thread;
.source "GarbageClearedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1$4;->this$2:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter$1;->this$1:Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;

    iget-object v2, v2, Lcom/zte/heartyservice/speedup/GarbageClearedActivity$GarbageClearedAdapter;->this$0:Lcom/zte/heartyservice/speedup/GarbageClearedActivity;

    #getter for: Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->noUsedFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->access$1400(Lcom/zte/heartyservice/speedup/GarbageClearedActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/speedup/GarbageClearedActivity;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 835
    return-void
.end method
