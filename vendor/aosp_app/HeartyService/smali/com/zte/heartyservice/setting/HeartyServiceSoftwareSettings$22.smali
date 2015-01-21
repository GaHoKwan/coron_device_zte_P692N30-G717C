.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->stopHeartyService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->turnOffVipMode(Landroid/content/Context;)V

    .line 1146
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1147
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->finish()V

    .line 1148
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->shutdown()V

    .line 1149
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$22;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    .line 1150
    return-void
.end method
