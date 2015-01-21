.class Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;
.super Landroid/os/Handler;
.source "ContactsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ContactsSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 304
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 307
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "max"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, max:I
    const-string v4, "strID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 309
    .local v3, strID:I
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 311
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 312
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 317
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #max:I
    .end local v3           #strID:I
    :pswitch_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 321
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 322
    .restart local v0       #data:Landroid/os/Bundle;
    const-string v4, "num"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 323
    .local v2, num:I
    const-string v4, "strID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 324
    .restart local v3       #strID:I
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #num:I
    .end local v3           #strID:I
    :pswitch_3
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;->this$0:Lcom/zte/heartyservice/privacy/ContactsSelectActivity;

    #getter for: Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
