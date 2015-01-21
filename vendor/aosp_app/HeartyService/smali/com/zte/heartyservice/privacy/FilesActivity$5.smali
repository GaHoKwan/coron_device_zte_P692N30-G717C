.class Lcom/zte/heartyservice/privacy/FilesActivity$5;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->showHandleItemDialog(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

.field final synthetic val$encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->val$encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->val$encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    packed-switch p2, :pswitch_data_0

    .line 418
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 419
    return-void

    .line 394
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->val$encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    iget v1, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->tp:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 395
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$400(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0424

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/FilesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "privacy_view_remind"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #calls: Lcom/zte/heartyservice/privacy/FilesActivity;->showViewRemindDialog(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$500(Lcom/zte/heartyservice/privacy/FilesActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$5;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->doWhenDelete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
