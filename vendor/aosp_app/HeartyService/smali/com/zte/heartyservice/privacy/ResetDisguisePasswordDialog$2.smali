.class Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$2;
.super Ljava/lang/Object;
.source "ResetDisguisePasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 41
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$2;->this$0:Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog$2;->this$0:Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ResetDisguisePasswordDialog;->finish()V

    .line 44
    return-void
.end method
