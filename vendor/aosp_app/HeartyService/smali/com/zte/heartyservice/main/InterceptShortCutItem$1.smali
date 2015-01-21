.class Lcom/zte/heartyservice/main/InterceptShortCutItem$1;
.super Ljava/lang/Object;
.source "InterceptShortCutItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/InterceptShortCutItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/InterceptShortCutItem;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f02019b

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$000(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$100(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$200(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$200(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->mms:I
    invoke-static {v2}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$300(Lcom/zte/heartyservice/main/InterceptShortCutItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #setter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z
    invoke-static {v0, v3}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$002(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$200(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice1Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$100(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #setter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked1:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$002(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$400(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$500(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$600(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$600(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->call:I
    invoke-static {v2}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$700(Lcom/zte/heartyservice/main/InterceptShortCutItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #setter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z
    invoke-static {v0, v3}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$402(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z

    goto/16 :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$600(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->notice2Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$500(Lcom/zte/heartyservice/main/InterceptShortCutItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/main/InterceptShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/InterceptShortCutItem;

    #setter for: Lcom/zte/heartyservice/main/InterceptShortCutItem;->clicked2:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/main/InterceptShortCutItem;->access$402(Lcom/zte/heartyservice/main/InterceptShortCutItem;Z)Z

    goto/16 :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03ab
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
