.class Lcom/zte/heartyservice/floater/BackgroundService$4;
.super Landroid/os/Handler;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/BackgroundService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/BackgroundService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/BackgroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 188
    const v1, 0x123456

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 190
    const-string v1, "NetMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->flowInfoStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/floater/BackgroundService;->access$100(Lcom/zte/heartyservice/floater/BackgroundService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->flowTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->flowInfoStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$100(Lcom/zte/heartyservice/floater/BackgroundService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$000(Lcom/zte/heartyservice/floater/BackgroundService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getMobileState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    iget-object v3, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v3, v3, Lcom/zte/heartyservice/floater/BackgroundService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v2, 0x1

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$002(Lcom/zte/heartyservice/floater/BackgroundService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->downloadIv:Landroid/widget/ImageView;

    const v2, 0x7f0202ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    :cond_2
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getMobileState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->downloadIv:Landroid/widget/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    #getter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v1}, Lcom/zte/heartyservice/floater/BackgroundService;->access$000(Lcom/zte/heartyservice/floater/BackgroundService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v1, v1, Lcom/zte/heartyservice/floater/BackgroundService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    iget-object v2, v2, Lcom/zte/heartyservice/floater/BackgroundService;->floatView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/zte/heartyservice/floater/BackgroundService$4;->this$0:Lcom/zte/heartyservice/floater/BackgroundService;

    const/4 v2, 0x0

    #setter for: Lcom/zte/heartyservice/floater/BackgroundService;->viewAdded:Z
    invoke-static {v1, v2}, Lcom/zte/heartyservice/floater/BackgroundService;->access$002(Lcom/zte/heartyservice/floater/BackgroundService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 221
    :catch_1
    move-exception v0

    .line 223
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
