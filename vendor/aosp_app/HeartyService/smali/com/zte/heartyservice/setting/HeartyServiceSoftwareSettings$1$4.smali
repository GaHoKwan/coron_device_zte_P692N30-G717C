.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    iput-boolean p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iget-boolean v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$4;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 150
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    return-void
.end method
