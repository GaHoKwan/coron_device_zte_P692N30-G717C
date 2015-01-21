.class Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;
.super Landroid/os/Handler;
.source "SingleCheckProgressPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/update/ui/pop/SingleCheckProgressPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/SingleCheckProgressPop;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/SingleCheckProgressPop;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;->this$0:Lcom/zte/update/ui/pop/SingleCheckProgressPop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/zte/update/ui/pop/MessagePop;

    iget-object v1, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;->this$0:Lcom/zte/update/ui/pop/SingleCheckProgressPop;

    iget-object v1, v1, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->context:Landroid/content/Context;

    const v2, 0x7f06002c

    invoke-direct {v0, v1, v2}, Lcom/zte/update/ui/pop/MessagePop;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/MessagePop;->update()V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;->this$0:Lcom/zte/update/ui/pop/SingleCheckProgressPop;

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->dismiss()V

    goto :goto_0
.end method
