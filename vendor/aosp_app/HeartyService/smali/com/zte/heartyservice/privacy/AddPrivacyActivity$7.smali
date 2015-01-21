.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$7;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyFile(Ljava/io/File;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V
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
    .line 243
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$7;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 247
    invoke-static {}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$400()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$400()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;->cancel(Z)Z

    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$402(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    .line 251
    :cond_0
    return-void
.end method
