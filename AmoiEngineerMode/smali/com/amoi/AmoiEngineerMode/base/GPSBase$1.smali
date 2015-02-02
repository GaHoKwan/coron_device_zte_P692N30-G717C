.class Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;
.super Landroid/os/Handler;
.source "GPSBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amoi/AmoiEngineerMode/base/GPSBase;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/base/GPSBase;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->textView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f06008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->showButton()V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    iget-boolean v0, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->gpsGood:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->textView:Landroid/widget/TextView;

    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->showButton()V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/GPSBase$1;->this$0:Lcom/amoi/AmoiEngineerMode/base/GPSBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->mForceQuitEnabled:Z

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
