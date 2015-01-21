.class Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;
.super Ljava/lang/Thread;
.source "PrxmDeviceSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindDeviceThread"
.end annotation


# instance fields
.field private m_bdaddr:Ljava/lang/String;

.field private m_helper:Lcom/mediatek/activity/ServiceActivityHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/activity/ServiceActivityHelper",
            "<",
            "Lcom/mediatek/bluetooth/service/IBluetoothPrxm;",
            ">;"
        }
    .end annotation
.end field

.field private m_level:B

.field final synthetic this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;Ljava/lang/String;BLcom/mediatek/activity/ServiceActivityHelper;)V
    .locals 0
    .parameter
    .parameter "bdaddr"
    .parameter "level"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B",
            "Lcom/mediatek/activity/ServiceActivityHelper",
            "<",
            "Lcom/mediatek/bluetooth/service/IBluetoothPrxm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p4, helper:Lcom/mediatek/activity/ServiceActivityHelper;,"Lcom/mediatek/activity/ServiceActivityHelper<Lcom/mediatek/bluetooth/service/IBluetoothPrxm;>;"
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->this$0:Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_bdaddr:Ljava/lang/String;

    .line 274
    iput-byte p3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_level:B

    .line 275
    iput-object p4, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_helper:Lcom/mediatek/activity/ServiceActivityHelper;

    .line 276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_helper:Lcom/mediatek/activity/ServiceActivityHelper;

    iget-object v1, v1, Lcom/mediatek/activity/ServiceActivityHelper;->service:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    iget-object v2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_bdaddr:Ljava/lang/String;

    iget-byte v3, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDeviceSettingActivity$FindDeviceThread;->m_level:B

    invoke-interface {v1, v2, v3}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->setPathLoss(Ljava/lang/String;B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "onPreferenceClick(): path_loss_level error."

    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/util/BtLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
