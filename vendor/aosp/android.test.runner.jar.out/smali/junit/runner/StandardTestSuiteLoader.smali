.class public Ljunit/runner/StandardTestSuiteLoader;
.super Ljava/lang/Object;
.source "StandardTestSuiteLoader.java"

# interfaces
.implements Ljunit/runner/TestSuiteLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "suiteClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .parameter "aClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    return-object p1
.end method
