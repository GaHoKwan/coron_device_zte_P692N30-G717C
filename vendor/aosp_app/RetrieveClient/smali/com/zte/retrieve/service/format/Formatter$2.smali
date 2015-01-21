.class Lcom/zte/retrieve/service/format/Formatter$2;
.super Landroid/os/Handler;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/format/Formatter;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/format/Formatter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/format/Formatter$2;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_0

    .line 68
    const-string v0, "sendBroadcast for virtual storage formatting"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/zte/retrieve/service/format/Formatter$2;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    #calls: Lcom/zte/retrieve/service/format/Formatter;->sendBroadcast(I)V
    invoke-static {v3, v0}, Lcom/zte/retrieve/service/format/Formatter;->access$1(Lcom/zte/retrieve/service/format/Formatter;I)V

    .line 71
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1

    .line 72
    const-string v0, "sendBroadcast for external storage formatting"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/zte/retrieve/service/format/Formatter$2;->this$0:Lcom/zte/retrieve/service/format/Formatter;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_3

    :goto_1
    #calls: Lcom/zte/retrieve/service/format/Formatter;->sendBroadcast(I)V
    invoke-static {v0, v1}, Lcom/zte/retrieve/service/format/Formatter;->access$1(Lcom/zte/retrieve/service/format/Formatter;I)V

    .line 75
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 69
    goto :goto_0

    :cond_3
    move v1, v2

    .line 73
    goto :goto_1
.end method
