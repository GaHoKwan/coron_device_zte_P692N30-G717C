.class public Lcom/android/commands/uiautomator/DumpCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "DumpCommand.java"


# static fields
.field private static final DEFAULT_DUMP_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "window_dump.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "dump"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    dump [file]\n      [file]: the location where the dumped XML should be stored, default is\n      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 56
    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 57
    .local v1, dumpFile:Ljava/io/File;
    array-length v3, p1

    if-lez v3, :cond_0

    .line 58
    new-instance v1, Ljava/io/File;

    .end local v1           #dumpFile:Ljava/io/File;
    aget-object v3, p1, v7

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v1       #dumpFile:Ljava/io/File;
    :cond_0
    new-instance v0, Landroid/accessibilityservice/UiTestAutomationBridge;

    invoke-direct {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;-><init>()V

    .line 61
    .local v0, bridge:Landroid/accessibilityservice/UiTestAutomationBridge;
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->connect()V

    .line 65
    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/accessibilityservice/UiTestAutomationBridge;->waitForIdle(JJ)V

    .line 66
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->getRootAccessibilityNodeInfoInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 67
    .local v2, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_1

    .line 68
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "ERROR: null root node returned by UiTestAutomationBridge."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {v2, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;)V

    .line 72
    invoke-virtual {v0}, Landroid/accessibilityservice/UiTestAutomationBridge;->disconnect()V

    .line 73
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "UI hierchary dumped to: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "creates an XML dump of current UI hierarchy"

    return-object v0
.end method
