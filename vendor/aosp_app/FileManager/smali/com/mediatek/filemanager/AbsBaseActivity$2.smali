.class Lcom/mediatek/filemanager/AbsBaseActivity$2;
.super Landroid/os/Handler;
.source "AbsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AbsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$2;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 153
    const-string v0, "AbsBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$2;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity;->doOnMounted(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->access$000(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$2;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity;->doOnEjected(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->access$100(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$2;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity;->doOnUnMounted(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->access$200(Lcom/mediatek/filemanager/AbsBaseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$2;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    #calls: Lcom/mediatek/filemanager/AbsBaseActivity;->doOnSdSwap()V
    invoke-static {v0}, Lcom/mediatek/filemanager/AbsBaseActivity;->access$300(Lcom/mediatek/filemanager/AbsBaseActivity;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
