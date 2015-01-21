.class Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$1;
.super Ljava/lang/Object;
.source "ResetDisguisePasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.ACTION_SET_DISGUISE_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$1;->this$0:Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;

    #getter for: Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->access$000(Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    return-void
.end method
