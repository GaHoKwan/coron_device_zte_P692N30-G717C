.class Lcom/mediatek/bluetooth/map/EventReportManager$Event;
.super Ljava/lang/Object;
.source "EventReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/EventReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mReport:Lcom/mediatek/bluetooth/map/cache/EventReport;

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/EventReportManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/EventReportManager;Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetooth/map/cache/EventReport;)V
    .locals 0
    .parameter
    .parameter "device"
    .parameter "report"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->this$0:Lcom/mediatek/bluetooth/map/EventReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    iput-object p3, p0, Lcom/mediatek/bluetooth/map/EventReportManager$Event;->mReport:Lcom/mediatek/bluetooth/map/cache/EventReport;

    .line 30
    return-void
.end method
