.class public abstract Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/aresengine/DataMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MonitorCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private uo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;->uo:Z

    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;->uo:Z

    return v0
.end method


# virtual methods
.method public abortMonitor()V
    .locals 1

    .prologue
    .line 122
    .local p0, this:Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;,"Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/bg/module/aresengine/DataMonitor$MonitorCallback;->uo:Z

    .line 123
    return-void
.end method

.method public abstract onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
