.class Lcom/android/music/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 122
    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    #getter for: Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/DeleteItems;->access$000(Lcom/android/music/DeleteItems;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    #getter for: Lcom/android/music/DeleteItems;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/DeleteItems;->access$000(Lcom/android/music/DeleteItems;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
