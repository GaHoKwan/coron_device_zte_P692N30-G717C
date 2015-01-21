.class Lcom/zte/heartyservice/main/SoftWareActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftWareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/SoftWareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/SoftWareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/SoftWareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zte/heartyservice/main/SoftWareActivity$1;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v2, "SoftWareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action xxxvvxx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "updatable_sum"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, sum:I
    const-string v2, "SoftWareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sum =========x===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-lez v1, :cond_1

    .line 127
    iget-object v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity$1;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    #getter for: Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zte/heartyservice/main/SoftWareActivity;->access$000(Lcom/zte/heartyservice/main/SoftWareActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity$1;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    #getter for: Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zte/heartyservice/main/SoftWareActivity;->access$000(Lcom/zte/heartyservice/main/SoftWareActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v1           #sum:I
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v1       #sum:I
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity$1;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    #getter for: Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zte/heartyservice/main/SoftWareActivity;->access$000(Lcom/zte/heartyservice/main/SoftWareActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
