.class Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;
.super Landroid/os/Handler;
.source "HeadsetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const v2, 0x7f060085

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    const v2, 0x7f060088

    invoke-virtual {v1, v2}, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->startButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/HeadsetBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/HeadsetBase;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
