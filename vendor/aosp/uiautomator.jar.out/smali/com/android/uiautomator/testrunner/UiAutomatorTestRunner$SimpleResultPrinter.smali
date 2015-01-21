.class Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "UiAutomatorTestRunner.java"

# interfaces
.implements Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$ResultReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleResultPrinter"
.end annotation


# instance fields
.field private mFullOutput:Z

.field final synthetic this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;Ljava/io/PrintStream;Z)V
    .locals 0
    .parameter
    .parameter "writer"
    .parameter "fullOutput"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->this$0:Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner;

    .line 352
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    .line 353
    iput-boolean p3, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    .line 354
    return-void
.end method


# virtual methods
.method public print(Ljunit/framework/TestResult;JLandroid/os/Bundle;)V
    .locals 1
    .parameter "result"
    .parameter "runTime"
    .parameter "testOutput"

    .prologue
    .line 357
    invoke-virtual {p0, p2, p3}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printHeader(J)V

    .line 358
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printErrors(Ljunit/framework/TestResult;)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFailures(Ljunit/framework/TestResult;)V

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->printFooter(Ljunit/framework/TestResult;)V

    .line 363
    return-void
.end method

.method public printUnexpectedError(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->mFullOutput:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "Test run aborted due to unexpected exeption: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 369
    invoke-virtual {p0}, Lcom/android/uiautomator/testrunner/UiAutomatorTestRunner$SimpleResultPrinter;->getWriter()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 371
    :cond_0
    return-void
.end method
