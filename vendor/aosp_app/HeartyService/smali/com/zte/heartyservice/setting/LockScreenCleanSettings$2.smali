.class Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;
.super Ljava/lang/Object;
.source "LockScreenCleanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/LockScreenCleanSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/LockScreenCleanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanSettings;

    const-class v2, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/LockScreenCleanSettings$2;->this$0:Lcom/zte/heartyservice/setting/LockScreenCleanSettings;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    return-void
.end method
