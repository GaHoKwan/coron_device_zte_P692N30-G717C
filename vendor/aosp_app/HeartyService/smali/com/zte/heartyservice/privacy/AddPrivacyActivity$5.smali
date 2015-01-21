.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$5;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacySms(Landroid/net/Uri;)V
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
    .line 207
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$5;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 211
    invoke-static {}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$200()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$200()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->cancel(Z)Z

    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$202(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    .line 215
    :cond_0
    return-void
.end method
