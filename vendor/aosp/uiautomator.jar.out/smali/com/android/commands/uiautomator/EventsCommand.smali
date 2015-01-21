.class public Lcom/android/commands/uiautomator/EventsCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "EventsCommand.java"


# instance fields
.field private mQuitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "events"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 52
    new-instance v0, Lcom/android/commands/uiautomator/EventsCommand$1;

    invoke-direct {v0, p0}, Lcom/android/commands/uiautomator/EventsCommand$1;-><init>(Lcom/android/commands/uiautomator/EventsCommand;)V

    .line 60
    .local v0, bridge:Landroid/accessibilityservice/UiTestAutomationBridge;
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->connect()V

    .line 63
    iget-object v3, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/uiautomator/EventsCommand;->mQuitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "prints out accessibility events until terminated"

    return-object v0
.end method
