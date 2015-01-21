.class public final Ltmsdk/common/module/hostmonitor/HostsResult;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public hostName:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public restore:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->hostName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    .line 10
    iput v1, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    .line 12
    iput v1, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "hostName"
    .parameter "ip"
    .parameter "time"
    .parameter "restore"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->hostName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    .line 10
    iput v1, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    .line 12
    iput v1, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    .line 20
    iput-object p1, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->hostName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    .line 22
    iput p3, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    .line 23
    iput p4, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    .line 24
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 3
    .parameter "_is"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2, v1}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->hostName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v1, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    .line 42
    iget v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    .line 43
    iget v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    .line 44
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 28
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->hostName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->ip:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 33
    :cond_0
    iget v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->time:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 34
    iget v0, p0, Ltmsdk/common/module/hostmonitor/HostsResult;->restore:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 35
    return-void
.end method
