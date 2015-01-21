.class Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;
.super Ljava/lang/Object;
.source "DisguisePasswordRecordDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->showDeletePasswordRecordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mDisguisePasswordRecord:Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->access$000(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecord;->deleteFromDB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->finish()V

    .line 132
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity$1;->this$0:Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/DisguisePasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
