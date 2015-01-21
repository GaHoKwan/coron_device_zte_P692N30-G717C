.class public abstract Ltmsdkobf/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field qW:Ljava/lang/String;

.field qX:I

.field private qY:I

.field private qZ:Z

.field private ra:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "name"
    .parameter "priority"
    .parameter "processPriority"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/ii;->qW:Ljava/lang/String;

    .line 26
    iput p2, p0, Ltmsdkobf/ii;->qX:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdkobf/ii;->qZ:Z

    .line 28
    iput p3, p0, Ltmsdkobf/ii;->ra:I

    .line 29
    return-void
.end method


# virtual methods
.method public cO()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v1, p0, Ltmsdkobf/ii;->qZ:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 45
    .local v0, tid:I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iput v1, p0, Ltmsdkobf/ii;->qY:I

    .line 46
    iget v1, p0, Ltmsdkobf/ii;->ra:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    .end local v0           #tid:I
    :cond_0
    return-void
.end method

.method public cP()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Ltmsdkobf/ii;->qZ:Z

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Ltmsdkobf/ii;->qY:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public abstract ct()V
.end method

.method public run()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Ltmsdkobf/ii;->cO()V

    .line 34
    invoke-virtual {p0}, Ltmsdkobf/ii;->ct()V

    .line 35
    invoke-virtual {p0}, Ltmsdkobf/ii;->cP()V

    .line 36
    return-void
.end method
