.class Lcom/zte/retrieve/service/RetrieveLockView$7;
.super Ljava/lang/Object;
.source "RetrieveLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/service/RetrieveLockView;->setCallOwnerBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 268
    new-instance v2, Lcom/zte/retrieve/utils/PhoneInfo;

    iget-object v3, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/retrieve/service/RetrieveLockView;->access$20(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/retrieve/utils/PhoneInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/PhoneInfo;->isCalling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/controller/Controller;->setUnalarm()Z

    .line 273
    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cancelAlarm()V

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/controller/Controller;->getSecurityNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 279
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$20(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    iget-object v2, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->btnCall:Landroid/widget/Button;
    invoke-static {v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$1(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/retrieve/service/RetrieveLockView$7;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/retrieve/service/RetrieveLockView;->access$20(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060076

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
