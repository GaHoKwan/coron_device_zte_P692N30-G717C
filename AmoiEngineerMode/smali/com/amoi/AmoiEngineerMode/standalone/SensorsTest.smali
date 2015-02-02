.class public Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;
.super Landroid/app/ListActivity;
.source "SensorsTest.java"


# instance fields
.field private curSensor:I

.field sensorName:[Ljava/lang/String;

.field sensorName2:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 15
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PSensor"

    aput-object v1, v0, v2

    const-string v1, "GSensor"

    aput-object v1, v0, v3

    const-string v1, "LSensor"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->sensorName:[Ljava/lang/String;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PSensor"

    aput-object v1, v0, v2

    const-string v1, "GSensor"

    aput-object v1, v0, v3

    const-string v1, "LSensor"

    aput-object v1, v0, v4

    const-string v1, "MSensor"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->sensorName2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->setTitle(I)V

    .line 29
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090006

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->sensorName2:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 40
    const-wide/16 v1, 0x3

    cmp-long v1, v1, p4

    if-nez v1, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/CompassTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->startActivity(Landroid/content/Intent;)V

    .line 49
    :goto_0
    return-void

    .line 45
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iput p3, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->curSensor:I

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/SensorResult;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "curSensor"

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->curSensor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
