.class Lcom/mediatek/lbs/em/LbsMisc$9;
.super Landroid/os/Handler;
.source "LbsMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$9;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 235
    .local v0, bundle:Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$9;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$900(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$9;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mTextViewResult:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$1000(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMisc$9;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsMisc;->access$900(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/UtilityStringList;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$9;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$400(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/ToggleButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
