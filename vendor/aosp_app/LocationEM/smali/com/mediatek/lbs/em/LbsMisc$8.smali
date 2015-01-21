.class Lcom/mediatek/lbs/em/LbsMisc$8;
.super Ljava/lang/Object;
.source "LbsMisc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMisc;->onCreate(Landroid/os/Bundle;)V
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
    .line 137
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 139
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$400(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mEditTextIp:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$100(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsMisc;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ERR: Parameters error!!"

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 150
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mButtonConnect:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$400(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$608(Lcom/mediatek/lbs/em/LbsMisc;)I

    .line 157
    :goto_1
    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v2, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mEditTextIp:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsMisc;->access$100(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mEditTextPort:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsMisc;->access$200(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mSessionId:I
    invoke-static {v6}, Lcom/mediatek/lbs/em/LbsMisc;->access$600(Lcom/mediatek/lbs/em/LbsMisc;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;-><init>(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;II)V

    #setter for: Lcom/mediatek/lbs/em/LbsMisc;->mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    invoke-static {v1, v2}, Lcom/mediatek/lbs/em/LbsMisc;->access$502(Lcom/mediatek/lbs/em/LbsMisc;Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;)Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    .line 146
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$500(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$8;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mConnectionThread:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$500(Lcom/mediatek/lbs/em/LbsMisc;)Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->stop()V

    goto :goto_1
.end method
