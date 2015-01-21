.class public Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.super Ljava/lang/Object;
.source "UiAutomatorTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;,
        Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    }
.end annotation


# static fields
.field private static final EXIT_EXCEPTION:I = -0x1

.field private static final EXIT_OK:I

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

.field private mDebug:Z

.field private mParams:Landroid/os/Bundle;

.field private mTestClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiDevice:Lcom/android/uiautomator/core/UiDevice;

.field private mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 60
    iput-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    .line 62
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$1;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    .line 349
    return-void
.end method

.method static synthetic access$100(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mWatcher:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$FakeInstrumentationWatcher;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)Lcom/android/uiautomator/testrunner/IAutomationSupport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    return-object v0
.end method


# virtual methods
.method protected addTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    return-void
.end method

.method protected getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;
    .locals 2
    .parameter "classLoader"

    .prologue
    .line 375
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector;

    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;-><init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V

    return-object v0
.end method

.method public getTestCaseFilter()Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;

    invoke-direct {v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCaseFilter;-><init>()V

    return-object v0
.end method

.method protected prepareTestCase(Ljunit/framework/TestCase;)V
    .locals 2
    .parameter "testCase"

    .prologue
    .line 403
    move-object v0, p1

    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mAutomationSupport:Lcom/android/uiautomator/testrunner/IAutomationSupport;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setAutomationSupport(Lcom/android/uiautomator/testrunner/IAutomationSupport;)V

    move-object v0, p1

    .line 404
    check-cast v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    iget-object v1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setUiDevice(Lcom/android/uiautomator/core/UiDevice;)V

    .line 405
    check-cast p1, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    .end local p1
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setParams(Landroid/os/Bundle;)V

    .line 406
    return-void
.end method

.method protected removeTestListener(Ljunit/framework/TestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public run(Ljava/util/List;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter
    .parameter "params"
    .parameter "debug"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, testClasses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$2;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    .line 86
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->start()V

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 89
    return-void
.end method

.method protected start()V
    .locals 24

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->getTestCaseCollector(Ljava/lang/ClassLoader;)Lcom/android/uiautomator/testrunner/TestCaseCollector;

    move-result-object v3

    .line 97
    .local v3, collector:Lcom/android/uiautomator/testrunner/TestCaseCollector;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestClasses:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClasses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 103
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/uiautomator/core/UiDevice;->getInstance()Lcom/android/uiautomator/core/UiDevice;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mUiDevice:Lcom/android/uiautomator/core/UiDevice;

    .line 106
    invoke-virtual {v3}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->getTestCases()Ljava/util/List;

    move-result-object v17

    .line 107
    .local v17, testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v18, testRunOutput:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "traceOutputMode"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 110
    .local v20, traceType:Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 111
    const-class v21, Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/uiautomator/core/Tracer$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lcom/android/uiautomator/core/Tracer$Mode;

    .line 112
    .local v8, mode:Lcom/android/uiautomator/core/Tracer$Mode;
    sget-object v21, Lcom/android/uiautomator/core/Tracer$Mode;->FILE:Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v21

    if-eq v8, v0, :cond_1

    sget-object v21, Lcom/android/uiautomator/core/Tracer$Mode;->ALL:Lcom/android/uiautomator/core/Tracer$Mode;

    move-object/from16 v0, v21

    if-ne v8, v0, :cond_3

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "traceLogFilename"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, filename:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 115
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Name of log file not specified. Please specify it using traceLogFilename parameter"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 98
    .end local v5           #filename:Ljava/lang/String;
    .end local v8           #mode:Lcom/android/uiautomator/core/Tracer$Mode;
    .end local v17           #testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    .end local v18           #testRunOutput:Landroid/os/Bundle;
    .end local v20           #traceType:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 100
    .local v4, e:Ljava/lang/ClassNotFoundException;
    new-instance v21, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 118
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    .restart local v5       #filename:Ljava/lang/String;
    .restart local v8       #mode:Lcom/android/uiautomator/core/Tracer$Mode;
    .restart local v17       #testCases:Ljava/util/List;,"Ljava/util/List<Ljunit/framework/TestCase;>;"
    .restart local v18       #testRunOutput:Landroid/os/Bundle;
    .restart local v20       #traceType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/uiautomator/core/Tracer;->setOutputFilename(Ljava/lang/String;)V

    .line 120
    .end local v5           #filename:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/uiautomator/core/Tracer;->getInstance()Lcom/android/uiautomator/core/Tracer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/uiautomator/core/Tracer;->setOutputMode(Lcom/android/uiautomator/core/Tracer$Mode;)V

    .line 123
    .end local v8           #mode:Lcom/android/uiautomator/core/Tracer$Mode;
    :cond_4
    new-instance v19, Ljunit/framework/TestResult;

    invoke-direct/range {v19 .. v19}, Ljunit/framework/TestResult;-><init>()V

    .line 125
    .local v19, testRunResult:Ljunit/framework/TestResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mParams:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "outputFormat"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, outputFormat:Ljava/lang/String;
    const-string v21, "simple"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 127
    new-instance v10, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v10, v0, v1, v2}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V

    .line 132
    .local v10, resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 135
    .local v13, startTime:J
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->mTestListeners:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljunit/framework/TestListener;

    .line 138
    .local v7, listener:Ljunit/framework/TestListener;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 146
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Ljunit/framework/TestListener;
    :catch_1
    move-exception v15

    .line 148
    .local v15, t:Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v10, v15}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->printUnexpectedError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    sub-long v11, v21, v13

    .line 151
    .local v11, runTime:J
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v11, v12, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 153
    .end local v15           #t:Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 129
    .end local v10           #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    .end local v11           #runTime:J
    .end local v13           #startTime:J
    :cond_5
    new-instance v10, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v10, v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$WatcherResultPrinter;-><init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;I)V

    .restart local v10       #resultPrinter:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;
    goto :goto_0

    .line 142
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v13       #startTime:J
    :cond_6
    :try_start_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljunit/framework/TestCase;

    .line 143
    .local v16, testCase:Ljunit/framework/TestCase;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;->prepareTestCase(Ljunit/framework/TestCase;)V

    .line 144
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 150
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v16           #testCase:Ljunit/framework/TestCase;
    :catchall_0
    move-exception v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v11, v22, v13

    .line 151
    .restart local v11       #runTime:J
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v11, v12, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    .line 152
    throw v21

    .line 150
    .end local v11           #runTime:J
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    sub-long v11, v21, v13

    .line 151
    .restart local v11       #runTime:J
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v11, v12, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;->print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V

    goto :goto_2
.end method
