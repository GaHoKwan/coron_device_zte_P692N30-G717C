.class Lcom/android/music/DeleteItems$2;
.super Landroid/os/Handler;
.source "DeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/DeleteItems;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 136
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 138
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/music/DeleteItems$2$1;

    invoke-direct {v3, p0}, Lcom/android/music/DeleteItems$2$1;-><init>(Lcom/android/music/DeleteItems$2;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_0

    .line 145
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 146
    .local v0, deleteNum:I
    const/4 v1, 0x0

    .line 147
    .local v1, message:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_1
    iget-object v2, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v2, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/android/music/DeleteItems$2;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
