.class Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;
.super Ljava/lang/Object;
.source "ChooseCycleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f080046

    const v2, 0x7f080006

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, whichday:I
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$100(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$200(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$300(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$400(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$500(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$600(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$700(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #setter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->choose:I
    invoke-static {v1, v0}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$802(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;I)I

    .line 171
    return-void

    .line 142
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview1:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$100(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$200(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview3:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$300(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview4:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$400(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 158
    :pswitch_4
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview5:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$500(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 162
    :pswitch_5
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview6:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$600(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 166
    :pswitch_6
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$3;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #getter for: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->textview7:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$700(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
