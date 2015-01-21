.class Lcom/mediatek/lbs/em/LbsCpAutoTest$7;
.super Ljava/lang/Object;
.source "LbsCpAutoTest.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsCpAutoTest;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsCpAutoTest;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 261
    .local v0, index:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/lbs/em/LbsCpAutoTest;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$200(Lcom/mediatek/lbs/em/LbsCpAutoTest;Ljava/lang/String;)V

    .line 262
    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    :pswitch_0
    return v4

    .line 277
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->startCpAutoTestV2(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->enableAutoTestV2(I)V

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->enableAutoTestV2(I)V

    goto :goto_0

    .line 286
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsCpAutoTest$7;->this$0:Lcom/mediatek/lbs/em/LbsCpAutoTest;

    #getter for: Lcom/mediatek/lbs/em/LbsCpAutoTest;->mMnlVerifier:Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsCpAutoTest;->access$600(Lcom/mediatek/lbs/em/LbsCpAutoTest;)Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/lbs/em/LbsCpAutoTest$MnlVerifier;->enableAutoTestV2(I)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
