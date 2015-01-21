.class Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;
.super Ljava/lang/Object;
.source "NumberInterceptSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 101
    if-nez p2, :cond_2

    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$000(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$200(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$100(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->removeFromBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$300(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    return-void

    :cond_1
    move-object v0, p1

    .line 113
    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #calls: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->showAddToBlackListDialog()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$400(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V

    goto :goto_0

    .line 117
    :cond_2
    if-ne p2, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumberType:I
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$000(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$200(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$100(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->removeFromWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$300(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$200(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$100(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$500(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->addToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$300(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$1;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
