.class Lcom/zte/update/ui/pop/ProgressPop$1;
.super Landroid/os/Handler;
.source "ProgressPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/pop/ProgressPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/ProgressPop;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/ProgressPop;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/update/ui/pop/ProgressPop$1;->this$0:Lcom/zte/update/ui/pop/ProgressPop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    const-string v0, "dismiss progress pop"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/zte/update/ui/pop/ProgressPop$1;->this$0:Lcom/zte/update/ui/pop/ProgressPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/ProgressPop;->dismiss()V

    .line 33
    return-void
.end method
