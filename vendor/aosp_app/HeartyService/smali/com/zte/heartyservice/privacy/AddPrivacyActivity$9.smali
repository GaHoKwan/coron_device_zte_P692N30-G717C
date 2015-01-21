.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyNumbers(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$500(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$500(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->cancel(Z)Z

    .line 285
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$502(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    .line 286
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const v1, 0x7f0a0363

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :cond_0
    return-void
.end method
