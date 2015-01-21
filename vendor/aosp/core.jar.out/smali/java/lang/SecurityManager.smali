.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "port"

    .prologue
    .line 40
    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 42
    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 44
    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .locals 0
    .parameter "host"
    .parameter "port"

    .prologue
    .line 46
    return-void
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "context"

    .prologue
    .line 48
    return-void
.end method

.method public checkCreateClassLoader()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 52
    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 54
    return-void
.end method

.method public checkExit(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 56
    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .locals 0
    .parameter "libName"

    .prologue
    .line 58
    return-void
.end method

.method public checkListen(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 60
    return-void
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .locals 0
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "maddr"

    .prologue
    .line 64
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .locals 0
    .parameter "maddr"
    .parameter "ttl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 71
    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 73
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 149
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .locals 0
    .parameter "permission"
    .parameter "context"

    .prologue
    .line 151
    return-void
.end method

.method public checkPrintJobAccess()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public checkPropertiesAccess()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 77
    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 79
    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 81
    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "file"
    .parameter "context"

    .prologue
    .line 83
    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 85
    return-void
.end method

.method public checkSetFactory()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public checkSystemClipboardAccess()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "window"

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 97
    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 99
    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method protected classLoaderDepth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, -0x1

    return v0
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCheck()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected inClassLoader()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method
