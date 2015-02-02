.class public Lcom/amoi/AmoiEngineerMode/HardwareTest;
.super Landroid/app/Activity;
.source "HardwareTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/HardwareTest$1;,
        Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareTests"

.field private static final buttonToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/auto/AutoTestMainActivity;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/CameraTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/AudioTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SubCameraTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/TPMultitouch;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/LCDTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/BluetoothTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/KeystrokeTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/DoulSDCardTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/WifiTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/MotorTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f07004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SensorsTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/lightTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/ProcessTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/FlashLightTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/SimStatusTest;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    const v1, 0x7f070054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/HardwareTest;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->getIntentByActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getIntentByActivity(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v4, 0x7f030017

    invoke-virtual {p0, v4}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->setContentView(I)V

    .line 84
    new-instance v3, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/amoi/AmoiEngineerMode/HardwareTest$TestButtonListener;-><init>(Lcom/amoi/AmoiEngineerMode/HardwareTest;Lcom/amoi/AmoiEngineerMode/HardwareTest$1;)V

    .line 87
    .local v3, listener:Landroid/view/View$OnClickListener;
    sget-object v4, Lcom/amoi/AmoiEngineerMode/HardwareTest;->buttonToActivityMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/HardwareTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 93
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v4, 0x7f070053

    if-ne v1, v4, :cond_0

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 103
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #id:I
    :cond_1
    return-void
.end method
