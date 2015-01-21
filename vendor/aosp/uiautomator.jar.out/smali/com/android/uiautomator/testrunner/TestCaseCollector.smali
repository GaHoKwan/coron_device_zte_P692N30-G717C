.class public Lcom/android/uiautomator/testrunner/TestCaseCollector;
.super Ljava/lang/Object;
.source "TestCaseCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;
    }
.end annotation


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;)V
    .locals 1
    .parameter "classLoader"
    .parameter "filter"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    .line 44
    return-void
.end method

.method private error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    .locals 2
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;

    invoke-direct {v0, p0, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector$1;-><init>(Lcom/android/uiautomator/testrunner/TestCaseCollector;Ljava/lang/String;)V

    .line 132
    .local v0, warning:Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;->setName(Ljava/lang/String;)V

    .line 133
    return-object v0
.end method


# virtual methods
.method protected addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    invoke-interface {v2, p1}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Test class must be derived from UiAutomatorTestCase"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    .line 114
    .local v1, testCase:Ljunit/framework/TestCase;
    invoke-virtual {v1, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v1           #testCase:Ljunit/framework/TestCase;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/InstantiationException;
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantiationException: could not instantiate test class. Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException: could not instantiate test class. Class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->error(Ljava/lang/Class;Ljava/lang/String;)Lcom/android/uiautomator/testrunner/UiAutomatorTestCase;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTestClass(Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, hashPos:I
    const/4 v1, 0x0

    .line 71
    .local v1, methodName:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 72
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 75
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public addTestClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "className"
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p0, v1, p2}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 92
    .local v5, methods:[Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 93
    .local v4, method:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mFilter:Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;

    invoke-interface {v6, v4}, Lcom/android/uiautomator/testrunner/TestCaseCollector$TestCaseFilter;->accept(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public addTestClasses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, classNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/uiautomator/testrunner/TestCaseCollector;->addTestClass(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v0           #className:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getTestCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/uiautomator/testrunner/TestCaseCollector;->mTestCases:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
