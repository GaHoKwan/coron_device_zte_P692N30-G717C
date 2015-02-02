.class public Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;
.super Lcom/amoi/AmoiEngineerMode/base/GPSBase;
.source "GPSTest.java"


# static fields
.field private static final MENU_GPS_SETTING:I = 0x1


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 38
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showExitButton(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 24
    .local v0, powerManager:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-class v2, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 27
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    const v0, 0x7f0600a8

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 48
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/GPSBase;->onDestroy()V

    .line 32
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 55
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/GPSTest;->startActivity(Landroid/content/Intent;)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected showButton()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
