.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iput-boolean p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iget-boolean v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$2;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 330
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 331
    return-void
.end method
