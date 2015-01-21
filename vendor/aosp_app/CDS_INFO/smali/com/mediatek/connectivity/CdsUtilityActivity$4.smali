.class Lcom/mediatek/connectivity/CdsUtilityActivity$4;
.super Landroid/os/Handler;
.source "CdsUtilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsUtilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$4;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 329
    const-string v0, ""

    .line 331
    .local v0, output:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 333
    :pswitch_0
    invoke-static {}, Lcom/mediatek/connectivity/CdsShellExe;->getOutput()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$4;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    #getter for: Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsUtilityActivity;->access$700(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_0
    .end packed-switch
.end method
