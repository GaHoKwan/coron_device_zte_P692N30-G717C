.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;
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


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->turnOffVipMode(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$2;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    iget-object v0, v0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 116
    return-void
.end method
