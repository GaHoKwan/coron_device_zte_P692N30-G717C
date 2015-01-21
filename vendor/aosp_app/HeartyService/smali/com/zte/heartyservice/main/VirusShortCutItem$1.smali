.class Lcom/zte/heartyservice/main/VirusShortCutItem$1;
.super Ljava/lang/Object;
.source "VirusShortCutItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/VirusShortCutItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/VirusShortCutItem;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$000(Lcom/zte/heartyservice/main/VirusShortCutItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$100(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$200(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$200(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->virus:I
    invoke-static {v2}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$300(Lcom/zte/heartyservice/main/VirusShortCutItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    const/4 v1, 0x1

    #setter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$002(Lcom/zte/heartyservice/main/VirusShortCutItem;Z)Z

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Count:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$200(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #getter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->notice1Bg:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$100(Lcom/zte/heartyservice/main/VirusShortCutItem;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/main/VirusShortCutItem$1;->this$0:Lcom/zte/heartyservice/main/VirusShortCutItem;

    #setter for: Lcom/zte/heartyservice/main/VirusShortCutItem;->clicked1:Z
    invoke-static {v0, v2}, Lcom/zte/heartyservice/main/VirusShortCutItem;->access$002(Lcom/zte/heartyservice/main/VirusShortCutItem;Z)Z

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x7f0e03ab
        :pswitch_0
    .end packed-switch
.end method
