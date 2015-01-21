.class Lcom/android/mms/ui/FolderModeSmsViewer$14;
.super Landroid/os/Handler;
.source "FolderModeSmsViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v6, 0x7f0b0039

    const/4 v7, 0x0

    .line 1382
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1406
    :pswitch_0
    const-string v3, "Mms/FolderModeSmsViewer"

    const-string v4, "inUIHandler msg unhandled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_0
    return-void

    .line 1384
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const v4, 0x7f0b0038

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1389
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1394
    :pswitch_3
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const v6, 0x7f0b02f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1400
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1401
    .local v2, type:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    .line 1402
    .local v0, msgId:J
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$14;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->saveMessageToSim(Ljava/lang/String;J)V
    invoke-static {v3, v2, v0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2300(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;J)V

    goto :goto_0

    .line 1382
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
