.class Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;
.super Ljava/lang/Object;
.source "SwlaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/swla/SwlaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/swla/SwlaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mAssertBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$000(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v1, "0"

    const/4 v2, 0x1

    #calls: Lcom/mediatek/engineermode/swla/SwlaActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$300(Lcom/mediatek/engineermode/swla/SwlaActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    #getter for: Lcom/mediatek/engineermode/swla/SwlaActivity;->mEnableSwlaBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$200(Lcom/mediatek/engineermode/swla/SwlaActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/engineermode/swla/SwlaActivity$ButtonListener;->this$0:Lcom/mediatek/engineermode/swla/SwlaActivity;

    const-string v1, "1"

    const/4 v2, 0x2

    #calls: Lcom/mediatek/engineermode/swla/SwlaActivity;->sendATCommad(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/swla/SwlaActivity;->access$300(Lcom/mediatek/engineermode/swla/SwlaActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b042c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
