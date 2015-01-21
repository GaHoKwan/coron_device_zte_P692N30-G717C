.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$000(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "target_intent"

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$000(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    return-void
.end method
