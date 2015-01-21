.class public Lcom/mediatek/thermalmanager/ThermalSensorActivity;
.super Landroid/app/Activity;
.source "ThermalSensorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/thermalmanager/ThermalSensorActivity$1;,
        Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;
    }
.end annotation


# instance fields
.field private fileNameList:[Ljava/lang/String;

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thermal_sensors_lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/thermalmanager/ThermalSensorActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->fileNameList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/thermalmanager/ThermalSensorActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->fileNameList:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/thermalmanager/TzDeviceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    const-string v1, "tz_sysfs_path"

    iget-object v2, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->fileNameList:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->items:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/mediatek/thermalmanager/ThermalSensorActivity;->thermal_sensors_lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    new-instance v0, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/thermalmanager/ThermalSensorActivity$ThermalSensorsLoader;-><init>(Lcom/mediatek/thermalmanager/ThermalSensorActivity;Lcom/mediatek/thermalmanager/ThermalSensorActivity$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method
