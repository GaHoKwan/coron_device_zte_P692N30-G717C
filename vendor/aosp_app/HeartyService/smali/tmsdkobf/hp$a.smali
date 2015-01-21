.class final Ltmsdkobf/hp$a;
.super Ltmsdkobf/fp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private ql:Ltmsdkobf/hq;

.field private qm:Z


# direct methods
.method constructor <init>(Ltmsdkobf/hq;)V
    .locals 0
    .parameter "stub"

    .prologue
    .line 139
    invoke-direct {p0}, Ltmsdkobf/fp;-><init>()V

    .line 140
    iput-object p1, p0, Ltmsdkobf/hp$a;->ql:Ltmsdkobf/hq;

    .line 141
    return-void
.end method


# virtual methods
.method public b(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 2
    .parameter "inContext"
    .parameter "outContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-boolean v0, p0, Ltmsdkobf/hp$a;->qm:Z

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 148
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/hp$a;->qm:Z

    .line 151
    :cond_0
    iget-object v0, p0, Ltmsdkobf/hp$a;->ql:Ltmsdkobf/hq;

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/hq;->b(Ltmsdkobf/fx;Ltmsdkobf/fx;)I

    move-result v0

    return v0
.end method
