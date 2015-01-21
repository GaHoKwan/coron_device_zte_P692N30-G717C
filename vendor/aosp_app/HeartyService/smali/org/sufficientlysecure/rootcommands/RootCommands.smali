.class public Lorg/sufficientlysecure/rootcommands/RootCommands;
.super Ljava/lang/Object;
.source "RootCommands.java"


# static fields
.field public static DEBUG:Z = false

.field public static DEFAULT_TIMEOUT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RootCommands"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lorg/sufficientlysecure/rootcommands/RootCommands;->DEBUG:Z

    .line 23
    const v0, 0xc350

    sput v0, Lorg/sufficientlysecure/rootcommands/RootCommands;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rootAccessGiven()Z
    .locals 6

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    .local v1, rootAccess:Z
    :try_start_0
    invoke-static {}, Lorg/sufficientlysecure/rootcommands/Shell;->startRootShell()Lorg/sufficientlysecure/rootcommands/Shell;

    move-result-object v2

    .line 38
    .local v2, rootShell:Lorg/sufficientlysecure/rootcommands/Shell;
    new-instance v3, Lorg/sufficientlysecure/rootcommands/Toolbox;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/rootcommands/Toolbox;-><init>(Lorg/sufficientlysecure/rootcommands/Shell;)V

    .line 39
    .local v3, tb:Lorg/sufficientlysecure/rootcommands/Toolbox;
    invoke-virtual {v3}, Lorg/sufficientlysecure/rootcommands/Toolbox;->isRootAccessGiven()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 43
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/rootcommands/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2           #rootShell:Lorg/sufficientlysecure/rootcommands/Shell;
    .end local v3           #tb:Lorg/sufficientlysecure/rootcommands/Toolbox;
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RootCommands"

    const-string v5, "Problem while checking for root access!"

    invoke-static {v4, v5, v0}, Lorg/sufficientlysecure/rootcommands/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
