.class final Lzte/com/cn/driverMode/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/n;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/n;->a:Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMBluetoothNoticeDialog;->k:Lzte/com/cn/driverMode/service/by;

    const-string v1, "BLUETOOTH_NOTIC_DIALOG_SHOW"

    invoke-virtual {v0, v1, p2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    return-void
.end method
