.class Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;
.super Ljava/lang/Object;
.source "NumberInterceptSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->showAddToBlackListDialog()V
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
    .line 170
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    const/4 v4, 0x0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, rule:I
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    .line 175
    or-int/lit8 v0, v0, 0x1

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 178
    or-int/lit8 v0, v0, 0x2

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mEngine:Lcom/zte/heartyservice/porting/All/VirusDBEngine;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$200(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$100(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$500(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->addToBlackList(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mIsModify:Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$700(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$300(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$3;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_2
    return-void
.end method
