.class public Lcom/zte/engineer/AutoTest;
.super Landroid/app/Activity;
.source "AutoTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoTest"


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mintent:Landroid/content/Intent;

.field private unusefulcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/engineer/AutoTest;->unusefulcode:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/AutoTest;->mintent:Landroid/content/Intent;

    return-void
.end method

.method private initTestList()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/LcdTestActivity;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/BacklightTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/AudioLoopTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/KeyTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/MainCamera;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/FontCamera;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/SDcardTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/TouchPadTestFiveSeven;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/SensorTestEx;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/BtWifiAddressTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-class v1, Lcom/zte/engineer/EarPhoneAudioLoopTest;

    invoke-direct {p0, p0, v1}, Lcom/zte/engineer/AutoTest;->newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.FMRadio"

    const-string v2, "com.mediatek.FMRadio.FMRadioEngineer"

    invoke-direct {p0, v1, v2}, Lcom/zte/engineer/AutoTest;->newIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method private newIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .parameter "packageContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private newIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 92
    add-int/lit8 v5, p1, 0x1

    .line 94
    .local v5, index:I
    iget v7, p0, Lcom/zte/engineer/AutoTest;->unusefulcode:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/zte/engineer/AutoTest;->unusefulcode:I

    .line 95
    iget v7, p0, Lcom/zte/engineer/AutoTest;->unusefulcode:I

    if-ge v5, v7, :cond_0

    .line 130
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v7, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_1

    .line 105
    const-string v7, "NvRAMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 106
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/zte/engineer/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/engineer/NvRAMAgent;

    move-result-object v0

    .line 107
    .local v0, agent:Lcom/zte/engineer/NvRAMAgent;
    const/16 v4, 0x23

    .line 108
    .local v4, file_lid:I
    const/4 v2, 0x0

    .line 110
    .local v2, buff:[B
    :try_start_0
    invoke-interface {v0, v4}, Lcom/zte/engineer/NvRAMAgent;->readFile(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 114
    :goto_1
    const/16 v7, 0xd8

    const/16 v8, 0x40

    aput-byte v8, v2, v7

    .line 116
    :try_start_1
    invoke-interface {v0, v4, v2}, Lcom/zte/engineer/NvRAMAgent;->writeFile(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "HOME_KEY_TEST"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 118
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v0           #agent:Lcom/zte/engineer/NvRAMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #buff:[B
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v4           #file_lid:I
    :cond_1
    iget-object v7, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 129
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/zte/engineer/AutoTest;->initTestList()V

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, index:I
    iget-object v2, p0, Lcom/zte/engineer/AutoTest;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 32
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "HOME_KEY_TEST"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    return-void
.end method
