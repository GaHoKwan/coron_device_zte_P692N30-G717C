.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iget-object v1, v1, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    const-class v2, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$4;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iget-object v1, v1, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    .line 363
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    return-void
.end method
