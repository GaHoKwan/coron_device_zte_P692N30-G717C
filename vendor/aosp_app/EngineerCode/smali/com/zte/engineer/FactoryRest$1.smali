.class Lcom/zte/engineer/FactoryRest$1;
.super Ljava/lang/Object;
.source "FactoryRest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/FactoryRest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/FactoryRest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/FactoryRest;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    iget-object v1, v1, Lcom/zte/engineer/FactoryRest;->chkboxInSdErase:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    iget-object v1, v1, Lcom/zte/engineer/FactoryRest;->chkboxExSdErase:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    const-string v2, "storage_type"

    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    iget-object v1, v1, Lcom/zte/engineer/FactoryRest;->chkboxInSdErase:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    iget-object v1, v1, Lcom/zte/engineer/FactoryRest;->chkboxExSdErase:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 47
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    iget-object v1, v1, Lcom/zte/engineer/FactoryRest;->chkboxExSdErase:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/zte/engineer/FactoryRest$1;->this$0:Lcom/zte/engineer/FactoryRest;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
