.class Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;
.super Ljava/lang/Object;
.source "PasswordRecordDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->showDeletePasswordRecordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

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

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mPasswordRecord:Lcom/zte/heartyservice/privacy/PasswordRecord;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->access$000(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Lcom/zte/heartyservice/privacy/PasswordRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PasswordRecord;->deleteFromDB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->finish()V

    .line 138
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity$2;->this$0:Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;->access$100(Lcom/zte/heartyservice/privacy/PasswordRecordDetailActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
