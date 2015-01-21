.class Lcom/zte/engineer/TouchScreenFwload$4;
.super Ljava/lang/Object;
.source "TouchScreenFwload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/TouchScreenFwload;->touchscreenfwload_en()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenFwload;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwload;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwload$4;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$4;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    const/4 v1, 0x1

    #calls: Lcom/zte/engineer/TouchScreenFwload;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwload;->access$400(Lcom/zte/engineer/TouchScreenFwload;Z)V

    .line 255
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$4;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    #getter for: Lcom/zte/engineer/TouchScreenFwload;->loadThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwload;->access$900(Lcom/zte/engineer/TouchScreenFwload;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwload$4;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwload$4;->this$0:Lcom/zte/engineer/TouchScreenFwload;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwload;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    return-void
.end method
